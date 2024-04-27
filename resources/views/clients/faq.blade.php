@extends('layouts.user')

@section('title', 'Câu hỏi thường gặp')

@section('content')
<main>

    <!-- Breadcrumb area start  -->
    <div class="breadcrumb__area theme-bg-1 p-relative z-index-11 pt-95 pb-95">
       <div class="breadcrumb__thumb" data-background="assets/imgs/bg/breadcrumb-bg.jpg"></div>
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xxl-12">
                <div class="breadcrumb__wrapper text-center">
                   <h2 class="breadcrumb__title">Faq</h2>
                   <div class="breadcrumb__menu">
                      <nav>
                         <ul>
                            <li><span><a href="index.html">Home</a></span></li>
                            <li><span>faq</span></li>
                         </ul>
                      </nav>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Breadcrumb area start  -->

    <!-- Faq area start  -->
    <section class="pt-120 pb-120">
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-lg-10">
                <div class="faq-wrapper">
                   <div class="bd-faq">
                      <div class="accordion" id="accordionExample-st-2">
                         <div class="bd-faq-group">
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="headingOne-st-2">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                     data-bs-target="#collapseOne-st-2" aria-expanded="false"
                                     aria-controls="collapseOne-st-2">
                                     <span class="accordion-number">01</span>
                                     Will i have to pay international taxes & duties?
                                  </button>
                               </h2>
                               <div id="collapseOne-st-2" class="accordion-collapse collapse"
                                  aria-labelledby="headingOne-st-2" data-bs-parent="#accordionExample-st-2">
                                  <div class="accordion-body">
                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar risus
                                     sit amet elit maximus, venenatis
                                     dignissim tortor ultricies. Sed lorem arcu, elementum sit amet leo vitae,
                                     bibendum congue tortor. Donec efficitur rutrum
                                     placerat. Aenean sollicitudin auctor finibus. Cras nec enim id lorem venenatis
                                     ultrices. Etiam nisl turpis, rutrum vitae
                                     ultricies in, pulvinar et turpis. Morbi tellus dolor, dignissim nec enim id,
                                     volutpat cursus enim.
                                  </div>
                               </div>
                            </div>
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="headingTwo-st-2">
                                  <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                     data-bs-target="#collapseTwo-st-2" aria-expanded="true"
                                     aria-controls="collapseTwo-st-2">
                                     <span class="accordion-number">02</span>
                                     Dignissim egestas enim mattis mauris quam vitae?
                                  </button>
                               </h2>
                               <div id="collapseTwo-st-2" class="accordion-collapse collapse show"
                                  aria-labelledby="headingTwo-st-2" data-bs-parent="#accordionExample-st-2">
                                  <div class="accordion-body">
                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar risus
                                     sit amet elit maximus, venenatis
                                     dignissim tortor ultricies. Sed lorem arcu, elementum sit amet leo vitae,
                                     bibendum congue tortor. Donec efficitur rutrum
                                     placerat. Aenean sollicitudin auctor finibus. Cras nec enim id lorem venenatis
                                     ultrices. Etiam nisl turpis, rutrum vitae
                                     ultricies in, pulvinar et turpis. Morbi tellus dolor, dignissim nec enim id,
                                     volutpat cursus enim.
                                  </div>
                               </div>
                            </div>
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="headingThree-st-2">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                     data-bs-target="#collapseThree-st-2" aria-expanded="false"
                                     aria-controls="collapseThree-st-2">
                                     <span class="accordion-number">03</span>
                                     Size guides what size should i order?
                                  </button>
                               </h2>
                               <div id="collapseThree-st-2" class="accordion-collapse collapse"
                                  aria-labelledby="headingThree-st-2" data-bs-parent="#accordionExample-st-2">
                                  <div class="accordion-body">
                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar risus
                                     sit amet elit maximus, venenatis
                                     dignissim tortor ultricies. Sed lorem arcu, elementum sit amet leo vitae,
                                     bibendum congue tortor. Donec efficitur rutrum
                                     placerat. Aenean sollicitudin auctor finibus. Cras nec enim id lorem venenatis
                                     ultrices. Etiam nisl turpis, rutrum vitae
                                     ultricies in, pulvinar et turpis. Morbi tellus dolor, dignissim nec enim id,
                                     volutpat cursus enim.
                                  </div>
                               </div>
                            </div>
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="headingFour-st-2">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                     data-bs-target="#collapseFour-st-2" aria-expanded="false"
                                     aria-controls="collapseFour-st-2">
                                     <span class="accordion-number">04</span>
                                     The color looks slightly different than the pictures?
                                  </button>
                               </h2>
                               <div id="collapseFour-st-2" class="accordion-collapse collapse"
                                  aria-labelledby="headingFour-st-2" data-bs-parent="#accordionExample-st-2">
                                  <div class="accordion-body">
                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar risus
                                     sit amet elit maximus, venenatis
                                     dignissim tortor ultricies. Sed lorem arcu, elementum sit amet leo vitae,
                                     bibendum congue tortor. Donec efficitur rutrum
                                     placerat. Aenean sollicitudin auctor finibus. Cras nec enim id lorem venenatis
                                     ultrices. Etiam nisl turpis, rutrum vitae
                                     ultricies in, pulvinar et turpis. Morbi tellus dolor, dignissim nec enim id,
                                     volutpat cursus enim.
                                  </div>
                               </div>
                            </div>
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="headingFive-st-2">
                                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                     data-bs-target="#collapseFive-st-2" aria-expanded="false"
                                     aria-controls="collapseFive-st-2">
                                     <span class="accordion-number">05</span>
                                     The color looks slightly different than the pictures?
                                  </button>
                               </h2>
                               <div id="collapseFive-st-2" class="accordion-collapse collapse"
                                  aria-labelledby="headingFive-st-2" data-bs-parent="#accordionExample-st-2">
                                  <div class="accordion-body">
                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar risus
                                     sit amet elit maximus, venenatis
                                     dignissim tortor ultricies. Sed lorem arcu, elementum sit amet leo vitae,
                                     bibendum congue tortor. Donec efficitur rutrum
                                     placerat. Aenean sollicitudin auctor finibus. Cras nec enim id lorem venenatis
                                     ultrices. Etiam nisl turpis, rutrum vitae
                                     ultricies in, pulvinar et turpis. Morbi tellus dolor, dignissim nec enim id,
                                     volutpat cursus enim.
                                  </div>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- Faq area end  -->

 </main>
@endsection
