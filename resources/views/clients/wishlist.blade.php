@extends('layouts.user')

@section('title', 'Danh sách yêu thích')

@section('content')
<main>

    <!-- Breadcrumb area start  -->
    <div class="breadcrumb__area theme-bg-1 p-relative z-index-11 pt-95 pb-95">
       <div class="breadcrumb__thumb" data-background="assets/imgs/bg/breadcrumb-bg.jpg"></div>
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xxl-12">
                <div class="breadcrumb__wrapper text-center">
                   <h2 class="breadcrumb__title">Wishlist</h2>
                   <div class="breadcrumb__menu">
                      <nav>
                         <ul>
                            <li><span><a href="index.html">Home</a></span></li>
                            <li><span>wishlist</span></li>
                         </ul>
                      </nav>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Breadcrumb area start  -->

    <!-- Cart area start  -->
    <div class="cart-area section-space">
       <div class="container">
          <div class="row">
             <div class="col-12">
                <div class="table-content table-responsive">
                   <table class="table">
                      <thead>
                         <tr>
                            <th class="product-thumbnail">Images</th>
                            <th class="cart-product-name">Product</th>
                            <th class="product-price">Unit Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove">Remove</th>
                         </tr>
                      </thead>
                      <tbody>
                         <tr>
                            <td class="product-thumbnail"><a href="product-details.html"><img
                                     src="assets/imgs/product/details/details-01.png" alt="img"></a></td>
                            <td class="product-name"><a href="product-details.html">Alexander Sofa</a></td>
                            <td class="product-price"><span class="amount">$24.00</span></td>
                            <td class="product-quantity text-center">
                               <div class="product-quantity mt-10 mb-10">
                                  <div class="product-quantity-form">
                                     <form action="#">
                                        <button class="cart-minus"><i class="far fa-minus"></i></button>
                                        <input class="cart-input" type="text" value="1">
                                        <button class="cart-plus"><i class="far fa-plus"></i></button>
                                     </form>
                                  </div>
                               </div>
                            </td>
                            <td class="product-subtotal"><span class="amount">$24.00</span></td>
                            <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
                         </tr>
                         <tr>
                            <td class="product-thumbnail"><a href="product-details.html"><img
                                     src="assets/imgs/product/details/details-02.png" alt="img"></a></td>
                            <td class="product-name"><a href="product-details.html">Curaskin Lipgel</a>
                            </td>
                            <td class="product-price"><span class="amount">$12.00</span></td>
                            <td class="product-quantity text-center">
                               <div class="product-quantity mt-10 mb-10">
                                  <div class="product-quantity-form">
                                     <form action="#">
                                        <button class="cart-minus"><i class="far fa-minus"></i></button>
                                        <input class="cart-input" type="text" value="1">
                                        <button class="cart-plus"><i class="far fa-plus"></i></button>
                                     </form>
                                  </div>
                               </div>
                            </td>
                            <td class="product-subtotal"><span class="amount">$12.00</span></td>
                            <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
                         </tr>
                         <tr>
                            <td class="product-thumbnail"><a href="product-details.html"><img
                                     src="assets/imgs/product/details/details-03.png" alt="img"></a></td>
                            <td class="product-name"><a href="product-details.html">Leather Chair</a></td>
                            <td class="product-price"><span class="amount">$42.00</span></td>
                            <td class="product-quantity text-center">
                               <div class="product-quantity mt-10 mb-10">
                                  <div class="product-quantity-form">
                                     <form action="#">
                                        <button class="cart-minus"><i class="far fa-minus"></i></button>
                                        <input class="cart-input" type="text" value="1">
                                        <button class="cart-plus"><i class="far fa-plus"></i></button>
                                     </form>
                                  </div>
                               </div>
                            </td>
                            <td class="product-subtotal"><span class="amount">$42.00</span></td>
                            <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
                         </tr>
                      </tbody>
                   </table>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Cart area end  -->

 </main>
@endsection
