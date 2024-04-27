<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('category_id');
            $table->text('description');
            $table->integer('price')->unsigned(); // Số tiền của sản phẩm (đơn vị: đồng VND)
            $table->integer('new_price')->unsigned()->nullable(); // Số tiền mới của sản phẩm (đơn vị: đồng VND)
            $table->json('image')->nullable(); // Mảng đường dẫn của hình ảnh sản phẩm
            $table->enum('status', ['in_stock', 'out_of_stock'])->default('in_stock');
            $table->integer('quantity')->unsigned()->default(0);
            $table->string('slug')->unique();
            $table->unsignedBigInteger('user_id');
            $table->timestamps();

            // Tạo khóa ngoại cho category_id
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');

            // Tạo khóa ngoại cho user_id
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
