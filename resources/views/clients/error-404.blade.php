@extends('layouts.user')

@section('title', 'Lỗi')

@section('content')
<main>

    <!-- Breadcrumb area start  -->
    <div class="breadcrumb__area theme-bg-1 p-relative z-index-11 pt-95 pb-95">
       <div class="breadcrumb__thumb" data-background="assets/imgs/bg/breadcrumb-bg.jpg"></div>
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xxl-12">
                <div class="breadcrumb__wrapper text-center">
                   <h2 class="breadcrumb__title">Page Not Found</h2>
                   <div class="breadcrumb__menu">
                      <nav>
                         <ul>
                            <li><span><a href="index.html">Home</a></span></li>
                            <li><span>404</span></li>
                         </ul>
                      </nav>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Breadcrumb area start  -->

    <!-- Error area start -->
    <section class="error-area section-space">
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xxl-6 col-xl-6 col-md-6">
                <div class="error-thumb w-img mb-50">
                   <img src="assets/imgs/bg/error.png" alt="">
                </div>
                <div class="error-content text-center">
                   <h2 class="section-title">Whoops! This Page got Lost
                      in converstion</h2>
                   <a href="index.html" class="fill-btn">
                      <span class="fill-btn-inner">
                         <span class="fill-btn-normal">go back home<i class="fa-regular fa-angle-right"></i></span>
                         <span class="fill-btn-hover">go back home<i class="fa-regular fa-angle-right"></i></span>
                      </span>
                   </a>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- Error area end -->

 </main>
@endsection
