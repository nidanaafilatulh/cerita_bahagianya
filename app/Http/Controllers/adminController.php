<?php

namespace App\Http\Controllers;

use App\Http\Requests\validationStoreAdmin;
use App\Http\Requests\validationStoreTransaksi;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use App\Models\Post;
use App\Models\Transaksi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class adminController extends Controller
{
    public function index()
    {
        return view('admin.index', [
            'posts' => Post::all()->count(),
            'transaksi' => Transaksi::all()->count(),
        ]);
    }

    public function create()
    {
        return view('admin.create');
    }

    public function manage()
    {
        return view('admin.manage', [
            'posts' => Post::select('id', 'slug', 'warna_model')->latest()->filter()->get(),
        ]);
    }

    public function transaksiIndex()
    {
        $transaksi = Transaksi::all();

        return view('admin.transaksi.index', compact('transaksi'));
    }
    public function transaksiCreate()
    {
        return view('admin.transaksi.create');
    }

    public function updateCreate($slug)
    {
        return view('admin.edit', [
            'posts' => Post::where('slug', $slug)->firstOrFail(),
        ]);
    }

    public function updateTransaksi($id)
    {
        return view('admin.transaksi.edit', [
            'transaksi' => Transaksi::where('id', $id)->firstOrFail(),
        ]);
    }

    public function updateStore($post, Request $request)
    {
        $validation = $request->validate([
            'slug' => 'required',
            'title' => 'required',
            'warna_model' => 'required',
            'nama_pria' => 'required',
            'slug_nama_pria' => 'required',
            'bapa_pria' => 'required',
            'ibu_pria' => 'required',
            'nama_wanita' => 'required',
            'slug_nama_wanita' => 'required',
            'bapa_wanita' => 'required',
            'ibu_wanita' => 'required',
            'tempat_akad' => 'required',
            'tanggal_akad' => 'required',
            'jam_akad' => 'required',
            'tempat_resepsi' => 'required',
            'tanggal_resepsi' => 'required',
            'jam_resepsi' => 'required',
        ]);

        Post::where('slug', $post)->update($validation);

        return redirect('/dashboard/manage');
    }

    public function updateTransaksiStore($id, Request $request)
    {
        $validation = $request->validate([
            'id' => 'required',
            'id_customer' => 'required',
            'jumlah_transaksi' => 'required',
            'tanggal_transaksi' => 'required',
        ]);

        Transaksi::where('id', $id)->update($validation);

        return redirect('/dashboard/transaksi');
    }

    public function destroy($slug)
    {
        $model = Post::where('slug', $slug)->firstOrFail();

        Post::destroy($model->id);

        return redirect()->back()->with('success', 'Data berhasil dihapus.');
    }

    public function destroyTransaksi($id)
    {
        $transaksi = Transaksi::where('id', $id)->firstOrFail();

        Transaksi::destroy($transaksi->id);

        return redirect()->back()->with('success', 'Data berhasil dihapus.');
    }

    public function store(validationStoreAdmin $request)
    {
        $commonRules = $request->rules();

        $validatedData = $request->validate($commonRules);

        Post::create($validatedData);

        return redirect()->back()->with('success', 'Data berhasil di tambahkan');
    }

    public function storeTransaksi(validationStoreTransaksi $request)
    {
        $commonRules = $request->rules();

        $validatedData = $request->validate($commonRules);

        Transaksi::create($validatedData);

        return redirect()->back()->with('success', 'Data berhasil di tambahkan');
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }


    public function createPDF($post) {
        $posts = Post::where('slug', $post)->first();

        if ($posts === null) {
            return abort(404);
        }

        $akad = Carbon::createFromFormat('Y-m-d', $posts->tanggal_akad);
        $formattedAkad = $akad->translatedFormat('l, j F Y');
        $resepsi = Carbon::createFromFormat('Y-m-d', $posts->tanggal_resepsi);
        $formattedResepsi = $resepsi->translatedFormat('l, j F Y');

        $pdf = PDF::loadView('modelCard.simplify', [
            'posts' => $posts,
            'tanggal_akad' => $formattedAkad,
            'tanggal_resepsi' => $formattedResepsi,
        ])->setPaper('a4', 'landscape');     
        
        return $pdf->stream('pdf_file.pdf');

    }
}
