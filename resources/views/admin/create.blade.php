@extends('layouts.dashboard')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/dashboard/create.css') }}">
@endsection
@section('mainbar')
    @if (session('success'))
        <div class="alertSuccess">
            {{session('success')}}
        </div>
    @endif
<form action="/dashboard/create" method="post" enctype="multipart/form-data" id="post">
        @csrf
        <div class="mainInput grid">
            <div>
                <label for="slug">Slug</label>
                <input type="text" name="slug" id="slug" value="{{ old('slug') }}" required>
            </div>
            @error('slug')
                {{ $message }}
            @enderror
            <div>
                <label for="title">Title</label>
                <input type="text" name="title" id="title" value="{{ old('title') }}" required>
            </div>
            @error('title')
                {{ $message }}
            @enderror            
            <div class="warna-model">
                <label for="warna_model">Warna Model</label>
                <select name="warna_model" id="warna_model">
                    <option value="pinky">Pinky</option>
                    <option value="navue">Navue</option>
                    <option value="bream">Bream</option>
                    <option value="gremy">Gremy</option>
                </select>
            </div>
            <h3>Identitas Pria</h3>
            <div>
                <label for="nama_pria">Nama</label>
                <input type="text" name="nama_pria" id="nama_pria" value="{{ old('nama_pria') }}" required>
            </div>
            @error('nama_pria')
                {{ $message }}
            @enderror
            <div>
                <label for="slug_nama_pria">Nama sebutan</label>
                <input type="text" name="slug_nama_pria" id="slug_nama_pria" value="{{ old('slug_nama_pria') }}" required>
            </div>
            @error('slug_nama_pria')
                {{ $message }}
            @enderror
            <div>
                <label for="bapa_pria">Nama Ayah</label>
                <input type="text" name="bapa_pria" id="bapa_pria" value="{{ old('bapa_pria') }}" required>
            </div>
            @error('bapa_pria')
                {{ $message }}
            @enderror
            <div>
                <label for="ibu_pria">Nama Ibu</label>
                <input type="text" name="ibu_pria" id="ibu_pria" value="{{ old('ibu_pria') }}" required>
            </div>
            @error('ibu_pria')
                {{ $message }}
            @enderror
            <h3>Identitas Wanita</h3>
            <div>
                <label for="nama_wanita">Nama</label>
                <input type="text" name="nama_wanita" id="nama_wanita" value="{{ old('nama_wanita') }}" required>
            </div>
            @error('nama_wanita')
                {{ $message }}
            @enderror
            <div>
                <label for="slug_nama_wanita">Nama sebutan</label>
                <input type="text" name="slug_nama_wanita" id="slug_nama_wanita" value="{{ old('slug_nama_wanita') }}" required>
            </div>
            @error('slug_nama_wanita')
                {{ $message }}
            @enderror
            <div>
                <label for="bapa_wanita">Nama Ayah</label>
                <input type="text" name="bapa_wanita" id="bapa_wanita" value="{{ old('bapa_wanita') }}" required>
            </div>
            @error('bapa_wanita')
                {{ $message }}
            @enderror
            <div>
                <label for="ibu_wanita">Nama Ibu</label>
                <input type="text" name="ibu_wanita" id="ibu_wanita" value="{{ old('ibu_wanita') }}" required>
            </div>
            @error('ibu_wanita')
                {{ $message }}
            @enderror
            <h3>Akad</h3>
            <div>
                <label for="tempat_akad">Tempat</label>
                <input type="text" name="tempat_akad" id="tempat_akad" value="{{ old('tempat_akad') }}" required>
            </div>
            @error('tempat_akad')
                {{ $message }}
            @enderror
            <div>
                <label for="tanggal_akad">Tanggal</label>
                <input type="date" name="tanggal_akad" id="tanggal_akad" value="{{ old('tanggal_akad') }}" required>
            </div>
            @error('tanggal_akad')
                {{ $message }}
            @enderror
            <div>
                <label for="jam_akad">waktu</label>
                <input type="text" name="jam_akad" id="jam_akad" value="{{ old('jam_akad') }}" required>
            </div>
            @error('jam_akad')
                {{ $message }}
            @enderror
            <h3>Resepsi</h3>
            <div>
                <label for="tempat_resepsi">Tempat</label>
                <input type="text" name="tempat_resepsi" id="tempat_resepsi" value="{{ old('tempat_resepsi') }}" required>
            </div>
            @error('tempat_resepsi')
                {{ $message }}
            @enderror
            <div>
                <label for="tanggal_resepsi">Tanggal</label>
                <input type="date" name="tanggal_resepsi" id="tanggal_resepsi" value="{{ old('tanggal_resepsi') }}" required>
            </div>
            @error('tanggal-resepsi')
                {{ $message }}
            @enderror
            <div>
                <label for="jam_resepsi">waktu</label>
                <input type="text" name="jam_resepsi" id="jam_resepsi" value="{{ old('jam_resepsi') }}" required>
            </div>
            @error('jam_resepsi')
                {{ $message }}
            @enderror
        </div>
        <div hidden>
            <label for="model" hidden>Model</label>
            <select name="model" id="model" hidden>
                <option value="simplify">Simplify</option>
            </select>
        </div>
        <button type="submit" class="mb">Send</button>
    </form>
@endsection
@section('script')
    <script src="{{ asset('js/admin/create.js') }}"></script>
@endsection
