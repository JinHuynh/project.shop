@extends('layouts.user')

@section('title', 'Blog Details')

@section('content')
<main>
    <!-- Breadcrumb area start  -->
    <div class="breadcrumb__area theme-bg-1 p-relative z-index-11 pt-95 pb-95">
       <div class="breadcrumb__thumb" data-background="assets/imgs/bg/breadcrumb-bg.jpg"></div>
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xxl-12">
                <div class="breadcrumb__wrapper text-center">
                   <h2 class="breadcrumb__title">Blog Details</h2>
                   <div class="breadcrumb__menu">
                      <nav>
                         <ul>
                            <li><span><a href="index.html">Home</a></span></li>
                            <li><span>Blog Details</span></li>
                         </ul>
                      </nav>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Breadcrumb area start  -->

    <!-- Postbox details area start -->
    <section class="postbox__area section-space">
       <div class="container">
          <div class="row gy-50">
             <div class="col-xxl-8 col-lg-8">
                <div class="postbox__wrapper theme-bg-2">
                   <article class="postbox__item mb-50 transition-3">
                      <div class="postbox__thumb w-img mb-30">
                         <a href="blog-details.html">
                            <img src="assets/imgs/blog/postbox/postbox-01.jpg" alt="">
                         </a>
                      </div>
                      <div class="postbox__content">
                         <div class="postbox__meta">
                            <span>
                               <a href="#">
                                  <svg width="13" height="14" viewBox="0 0 13 14" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                     <path
                                        d="M11.6667 13V11.6667C11.6667 10.9594 11.3857 10.2811 10.8856 9.78105C10.3855 9.28095 9.70724 9 9 9H3.66667C2.95942 9 2.28115 9.28095 1.78105 9.78105C1.28095 10.2811 1 10.9594 1 11.6667V13"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                     <path
                                        d="M6.33317 6.33333C7.80593 6.33333 8.99984 5.13943 8.99984 3.66667C8.99984 2.19391 7.80593 1 6.33317 1C4.86041 1 3.6665 2.19391 3.6665 3.66667C3.6665 5.13943 4.86041 6.33333 6.33317 6.33333Z"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                  </svg>
                                  By Alex Manie
                               </a>
                            </span>
                            <span>
                               <svg width="15" height="15" viewBox="0 0 15 15" fill="none"
                                  xmlns="http://www.w3.org/2000/svg">
                                  <path
                                     d="M7.5 14C11.0899 14 14 11.0899 14 7.5C14 3.91015 11.0899 1 7.5 1C3.91015 1 1 3.91015 1 7.5C1 11.0899 3.91015 14 7.5 14Z"
                                     stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                     stroke-linejoin="round" />
                                  <path d="M7.5 3.59961V7.49961L10.1 8.79961" stroke="currentColor" stroke-width="1.5"
                                     stroke-linecap="round" stroke-linejoin="round" />
                               </svg> January 22, 2022
                            </span>
                            <span>
                               <svg width="14" height="14" viewBox="0 0 14 14" fill="none"
                                  xmlns="http://www.w3.org/2000/svg">
                                  <path
                                     d="M12.9718 6.66668C12.9741 7.54659 12.769 8.4146 12.3732 9.20001C11.9039 10.1412 11.1825 10.9328 10.2897 11.4862C9.39697 12.0396 8.36813 12.3329 7.31844 12.3333C6.4406 12.3356 5.57463 12.13 4.79106 11.7333L1 13L2.26369 9.20001C1.86791 8.4146 1.66281 7.54659 1.6651 6.66668C1.66551 5.61452 1.95815 4.58325 2.51025 3.68838C3.06236 2.79352 3.85211 2.0704 4.79106 1.60002C5.57463 1.20331 6.4406 0.997725 7.31844 1.00002H7.65099C9.03729 1.07668 10.3467 1.66319 11.3284 2.64726C12.3102 3.63132 12.8953 4.94378 12.9718 6.33334V6.66668Z"
                                     stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                     stroke-linejoin="round" />
                               </svg>35
                            </span>
                         </div>
                         <h3 class="postbox__title">
                            <a href="blog-details.html">How to Make your Home a Showplace</a>
                         </h3>
                         <div class="postbox__text">
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in
                               hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur,
                               ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum
                               auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at
                               maximus ante fermentum.</p>
                         </div>
                      </div>
                   </article>
                   <div class="postbox__features">
                      <h4 class="postbox__features-title mb-20">Stunning Furniture with Aesthetic Appeal</h4>
                      <p>Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit
                         urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris.
                         Maecenas vitae mattis tellus. Nullam quis imperdiet augue. </p>
                      <div class="postbox__thumb-wrapper p-relative mt-30 mb-30">
                         <div class="row g-5">
                            <div class="col-lg-6">
                               <div class="postbox__features-thumb w-img">
                                  <img src="assets/imgs/blog/postbox/postbox-04.jpg" alt="">
                               </div>
                            </div>
                            <div class="col-lg-6">
                               <div class="postbox__features-thumb w-img">
                                  <img src="assets/imgs/blog/postbox/postbox-05.jpg" alt="">
                               </div>
                            </div>
                         </div>
                      </div>
                      <div class="features__list">
                         <ul>
                            <li>Reduced symptoms of anxiety and depression.</li>
                            <li>Improved stress management: Mindfulness meditation has been shown.</li>
                            <li>Better emotional regulation: Mindfulness practice.</li>
                            <li>Increased self-awareness: Mindfulness meditation can help individuals.</li>
                         </ul>
                      </div>
                   </div>
                   <div class="postbox__quote mb-35">
                      <blockquote>
                         <p>“I try as much as possible to give you a great basic product and what comes out, I feel,
                            is really amazing.”</p>
                         <div class="blog__quote-author d-flex justify-content-end">
                            <div class="quote__author-info">
                               <h4>Keith Griffin</h4>
                               <span>Doctor</span>
                            </div>
                         </div>
                      </blockquote>
                   </div>
                   <div class="postbox__share-wrapper mb-60">
                      <div class="row align-items-center">
                         <div class="col-xl-7">
                            <div class="tagcloud tagcloud-sm">
                               <span>Tags:</span>
                               <a href="#">Blog</a>
                               <a href="#">Creative</a>
                               <a href="#">Portfoilo</a>
                               <a href="#">Harry</a>
                            </div>
                         </div>
                         <div class="col-xl-5">
                            <div class="postbox__share text-xl-end">
                               <span>Share On:</span>
                               <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                               <a href="#"><i class="fab fa-twitter"></i></a>
                               <a href="#"><i class="fab fa-facebook-f"></i></a>
                            </div>
                         </div>
                      </div>
                   </div>
                   <div class="postbox__comment-wrapper">
                      <div class="postbox__comment mb-60">
                         <h3 class="postbox__comment-title">Comments (2)</h3>
                         <ul>
                            <li>
                               <div class="postbox__comment-box d-sm-flex align-items-start">
                                  <div class="postbox__comment-info">
                                     <div class="postbox__comment-avatar">
                                        <img src="assets/imgs/user/user-01.png" alt="">
                                     </div>
                                  </div>
                                  <div class="postbox__comment-text ">
                                     <div class="postbox__comment-name">
                                        <span class="post-meta"> July 14, 2022</span>
                                        <h5><a href="#">Eleanor Fant</a></h5>
                                     </div>
                                     <p>One’s of the best template out of there. design, code quality, updates etc
                                        everything you needs guys, buy it you won’t regret it!</p>
                                     <div class="postbox__comment-reply">
                                        <a href="#">Reply</a>
                                     </div>
                                  </div>
                               </div>
                               <ul class="children">
                                  <li>
                                     <div class="postbox__comment-box d-sm-flex align-items-start">
                                        <div class="postbox__comment-info">
                                           <div class="postbox__comment-avatar">
                                              <img src="assets/imgs/user/user-02.png" alt="">
                                           </div>
                                        </div>
                                        <div class="postbox__comment-text ">
                                           <div class="postbox__comment-name">
                                              <span class="post-meta"> July 14, 2022</span>
                                              <h5><a href="#">Alexander Ljung</a></h5>
                                           </div>
                                           <p>This theme is super awesome! But I had one small issue with link option
                                              in parallax portfolio. The other day! </p>
                                           <div class="postbox__comment-reply">
                                              <a href="#">Reply</a>
                                           </div>
                                        </div>
                                     </div>
                                  </li>
                               </ul>
                            </li>
                            <li>
                               <div class="postbox__comment-box d-sm-flex align-items-start">
                                  <div class="postbox__comment-info">
                                     <div class="postbox__comment-avatar">
                                        <img src="assets/imgs/user/user-05.png" alt="">
                                     </div>
                                  </div>
                                  <div class="postbox__comment-text ">
                                     <div class="postbox__comment-name">
                                        <span class="post-meta"> July 14, 2022</span>
                                        <h5><a href="#">Thelma J. Hunter</a></h5>
                                     </div>
                                     <p>His many legs, pitifully thin compared with the size of the rest of him, waved
                                        about helplessly as he looked</p>
                                     <div class="postbox__comment-reply">
                                        <a href="#">Reply</a>
                                     </div>
                                  </div>
                               </div>
                            </li>
                         </ul>
                      </div>
                      <div class="postbox__comment-form">
                         <h3 class="postbox__comment-form-title">Leave A Reply</h3>
                         <p>Your email address will not be published. Required fields are marked *</p>
                         <form action="#">
                            <div class="row">
                               <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6">
                                  <div class="postbox__comment-input">
                                     <input type="text" placeholder="Name*">
                                  </div>
                               </div>
                               <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6">
                                  <div class="postbox__comment-input">
                                     <input type="email" placeholder="Email">
                                  </div>
                               </div>
                               <div class="col-xxl-12">
                                  <div class="postbox__comment-input">
                                     <textarea placeholder="Your Comment Here..."></textarea>
                                  </div>
                               </div>
                               <div class="col-xxl-12">
                                  <div class="postbox__comment-agree d-flex align-items-start mb-25">
                                     <input class="e-check-input" type="checkbox" id="e-agree">
                                     <label class="e-check-label" for="e-agree">Save my name, email, and website in
                                        this browser for the next time I comment.</label>
                                  </div>
                               </div>
                               <div class="col-xxl-12">
                                  <div class="postbox__comment-btn">
                                     <button class="fill-btn">
                                        <span class="fill-btn-inner">
                                           <span class="fill-btn-normal">Submit Comment</span>
                                           <span class="fill-btn-hover">Submit Comment</span>
                                        </span>
                                     </button>
                                  </div>
                               </div>
                            </div>
                         </form>
                      </div>
                   </div>
                </div>
             </div>
             <div class="col-xxl-4 col-lg-4">
                <div class="sidebar__wrapper bd-sticky pl-30">
                   <div class="sidebar__widget mb-20">
                      <div class="sidebar__widget-content">
                         <div class="sidebar__search">
                            <form action="#">
                               <div class="sidebar__search-input">
                                  <input type="text" placeholder="Enter your keywords...">
                                  <button type="submit">
                                     <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                           d="M9.55 18.1C14.272 18.1 18.1 14.272 18.1 9.55C18.1 4.82797 14.272 1 9.55 1C4.82797 1 1 4.82797 1 9.55C1 14.272 4.82797 18.1 9.55 18.1Z"
                                           stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                           stroke-linejoin="round" />
                                        <path d="M19.0002 19.0002L17.2002 17.2002" stroke="currentColor"
                                           stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                     </svg>
                                  </button>
                               </div>
                            </form>
                         </div>
                      </div>
                   </div>
                   <div class="sidebar__widget mb-45">
                      <h3 class="sidebar__widget-title">Category</h3>
                      <div class="sidebar__widget-content">
                         <ul>
                            <li><a href="blog.html">Business <span>10</span></a></li>
                            <li><a href="blog.html">Cleaning <span>08</span></a></li>
                            <li><a href="blog.html">Consultant <span>24</span></a></li>
                            <li><a href="blog.html">Creative <span>37</span></a></li>
                            <li><a href="blog.html">Technology <span>103</span></a></li>
                         </ul>
                      </div>
                   </div>
                   <div class="sidebar__widget mb-45">
                      <h3 class="sidebar__widget-title">Recent Post</h3>
                      <div class="sidebar__widget-content">
                         <div class="sidebar__post">
                            <div class="rc__post d-flex align-items-center">
                               <div class="rc__post-thumb">
                                  <a href="blog-details.html"><img src="assets/imgs/blog/blog-11.jpg" alt=""></a>
                               </div>
                               <div class="rc__post-content">
                                  <h4 class="rc__post-title">
                                     <a href="blog-details.html">Business meeting 2021 in San Francisco</a>
                                  </h4>
                                  <div class="rc__meta">
                                     <span>
                                        <svg width="15" height="15" viewBox="0 0 15 15" fill="none"
                                           xmlns="http://www.w3.org/2000/svg">
                                           <path
                                              d="M7.5 14C11.0899 14 14 11.0899 14 7.5C14 3.91015 11.0899 1 7.5 1C3.91015 1 1 3.91015 1 7.5C1 11.0899 3.91015 14 7.5 14Z"
                                              stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                              stroke-linejoin="round" />
                                           <path d="M7.5 3.59961V7.49961L10.1 8.79961" stroke="currentColor"
                                              stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>July 21, 2022
                                     </span>
                                  </div>
                               </div>
                            </div>
                            <div class="rc__post d-flex align-items-center">
                               <div class="rc__post-thumb">
                                  <a href="blog-details.html"><img src="assets/imgs/blog/blog-12.jpg" alt=""></a>
                               </div>
                               <div class="rc__post-content">
                                  <h4 class="rc__post-title">
                                     <a href="blog-details.html">Developing privacy user-centric apps</a>
                                  </h4>
                                  <div class="rc__meta">
                                     <span>
                                        <svg width="15" height="15" viewBox="0 0 15 15" fill="none"
                                           xmlns="http://www.w3.org/2000/svg">
                                           <path
                                              d="M7.5 14C11.0899 14 14 11.0899 14 7.5C14 3.91015 11.0899 1 7.5 1C3.91015 1 1 3.91015 1 7.5C1 11.0899 3.91015 14 7.5 14Z"
                                              stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                              stroke-linejoin="round" />
                                           <path d="M7.5 3.59961V7.49961L10.1 8.79961" stroke="currentColor"
                                              stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>July 21, 2022
                                     </span>
                                  </div>
                               </div>
                            </div>
                            <div class="rc__post d-flex align-items-center">
                               <div class="rc__post-thumb">
                                  <a href="blog-details.html"><img src="assets/imgs/blog/blog-13.jpg" alt=""></a>
                               </div>
                               <div class="rc__post-content">
                                  <h4 class="rc__post-title">
                                     <a href="blog-details.html">Starting and Growing Web Design in 2022</a>
                                  </h4>
                                  <div class="rc__meta">
                                     <span>
                                        <svg width="15" height="15" viewBox="0 0 15 15" fill="none"
                                           xmlns="http://www.w3.org/2000/svg">
                                           <path
                                              d="M7.5 14C11.0899 14 14 11.0899 14 7.5C14 3.91015 11.0899 1 7.5 1C3.91015 1 1 3.91015 1 7.5C1 11.0899 3.91015 14 7.5 14Z"
                                              stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                              stroke-linejoin="round" />
                                           <path d="M7.5 3.59961V7.49961L10.1 8.79961" stroke="currentColor"
                                              stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>July 21, 2022
                                     </span>
                                  </div>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
                   <div class="sidebar__widget mb-40">
                      <h3 class="sidebar__widget-title">Tags</h3>
                      <div class="sidebar__widget-content">
                         <div class="tagcloud">
                            <a href="#">Techology</a>
                            <a href="#">Food</a>
                            <a href="#">Personality</a>
                            <a href="#">Life Style</a>
                            <a href="#">Travel</a>
                            <a href="#">Nature</a>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- Postbox details area end -->

 </main>
@endsection
