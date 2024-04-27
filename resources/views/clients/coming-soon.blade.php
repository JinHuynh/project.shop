@extends('layouts.user')

@section('title', 'Sắp ra mắt')

@section('content')
<main>

    <section class="coming-soon-area pt-120 pb-120" data-background="assets/imgs/comming/coming-soon-bg.jpg">
       <div class="container">
          <div class="coming-soon__wrp">
             <h3 class="mb-40 text-center text-white">We Are Coming Very Soon</h3>
             <div class="coming-soon__items">
                <div class="countdown-item">
                   <h2 id="day" class="coming-countdown">00</h2>
                   <span class="text-white">Days</span>
                </div>
                <div class="countdown-item">
                   <h2 id="hour" class="coming-countdown">00</h2>
                   <span class="text-white">Hours</span>
                </div>
                <div class="countdown-item">
                   <h2 id="min" class="coming-countdown">00</h2>
                   <span class="text-white">Minute</span>
                </div>
                <div class="countdown-item">
                   <h2 id="sec" class="coming-countdown">00</h2>
                   <span class="text-white">Seconds</span>
                </div>
             </div>
             <div class="banner-btn-wrapper furniture__btn-group justify-content-center mt-40">
                <a class="solid-btn" href="contact.html">Get IN touch<span><i
                         class="fa-regular fa-angle-right"></i></span></a>
             </div>
          </div>
       </div>
    </section>

    <!-- Back to top start -->
    <div class="backtotop-wrap cursor-pointer">
       <svg class="backtotop-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
          <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
       </svg>
    </div>
    <!-- Back to top end -->
 </main>
@endsection
