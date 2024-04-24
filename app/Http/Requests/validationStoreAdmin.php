<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class validationStoreAdmin extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        $commonRules = [
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
        ] ;

        return $commonRules;
    }
}
