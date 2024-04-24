@extends('layouts.home')
@section('css')
    <link rel="stylesheet" href="{{ asset('aos-master/dist/aos.css') }}">
    <link rel="stylesheet" href="{{ asset('css/home.css') }}">
    <link rel="stylesheet" href="{{ asset('css/body.css') }}">
    <link rel="stylesheet" href="{{ asset('css/font.css') }}">
    
@endsection
@section('container')
    <div id="beranda" class="mainPage">
        <div class="topbar" >
            <div class="wrapperTopbar">
                <img src="{{asset('favicon/logo.png')}}">
                <div class="wrapperList">
                    <a class="redirect" href="#model">Model</a>
                    <a class="redirect" href="#method">Cara Pembelian</a>
                </div>
                <div class="hamburger-menu">
                    <div class="hamburger"></div>
                </div>
            </div>
        </div>
        <div class="content" data-aos="fade-right" data-aos-once="true">
            <div class="headerContent">
                Cerita Bahagianya
            </div>
            <div class="descContent">
                Mempermudah kamu dalam mendapatkan undangan digital
            </div>
            <a href="https://wa.me/6285219387646" target="_blank">Pesan Sekarang</a>
        </div>
        <img src="{{ asset('home/homeMockup1.png') }}"class="mockupAnimation">
    </div>
    </div>
    <div class="midPage">
        <div class="model" id="model">
            <div class="header">
                Model
            </div>
        </div>
    </div>
    <div class="viewModel">
        <div class="gridWrapper">
            <div class="card" data-aos="zoom-in" data-aos-once="true">
                <img src="{{ asset('Mockup/sp.png') }}">
                <div class="price">Rp. 30.000</div>
                <div class="title">Tema 1</div>
                <a href="/yoga-sarah" target="_blank"><img src="{{ asset('home/eye.svg') }}">Preview</a>
            </div>
            <div class="card" data-aos="zoom-in" data-aos-once="true">
                <img src="{{ asset('Mockup/sn.png') }}">
                <div class="price">Rp. 30.000</div>
                <div class="title">Tema 2</div>
                <a href="/rizky-amalia" target="_blank"><img src="{{ asset('home/eye.svg') }}">Preview</a>
            </div>
            <div class="card" data-aos="zoom-in" data-aos-once="true">
                <img src="{{ asset('Mockup/sg.png') }}">
                <div class="price">Rp. 30.000</div>
                <div class="title">Tema 3</div>
                <a href="/rizaldi-rina" target="_blank"><img src="{{ asset('home/eye.svg') }}">Preview</a>
            </div>
            <div class="card" data-aos="zoom-in" data-aos-once="true">
                <img src="{{ asset('Mockup/sb.png') }}">
                <div class="price">Rp. 30.000</div>
                <div class="title">Tema 4</div>
                <a href="/dicky-desi" target="_blank"><img src="{{ asset('home/eye.svg') }}">Preview</a>
            </div>
        </div>
    </div>
    <div class="payMethod" id="method">
      <div class="header">
        <h1>Langkah-Langkah Pembelian</h1>
      </div>
      <div class="gridWrapper">
        <div class="card">
          <div class="number">01</div>
          <div class="title">Pilih Model</div>
          <div class="desc">Pilih model kartu undangan yang anda inginkan, lihat <a href="#model">modelnya</a> terlebih dahulu sebelum melakukan pembelian</div>
        </div>
        <div class="card">
          <div class="number">02</div>
          <div class="title">Lakukan Pembelian</div>
          <div class="desc">Untuk melakukan pembelian, pengisian informasi, sampai ke pembayaran, Hubungi kami di <a href="https://wa.me/6285219387646" target="_blank">whatsapp</a>,</div>
        </div>
        <div class="card">
          <div class="number">03</div>
          <div class="title">Undangan siap dibagikan</div>
          <div class="desc">Kami akan kirimkan link undangan digital anda lewat nomor whatsapp yang telah anda kirimkan</div>
        </div> 
      </div>
    </div>
@endsection
@section('script')
    <script src="{{ asset('aos-master/dist/aos.js') }}"></script>
    <script src="{{ asset('js/home.js') }}"></script>
@endsection
