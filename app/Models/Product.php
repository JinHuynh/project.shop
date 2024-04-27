<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    // Tên bảng tương ứng với model
    protected $table = 'products';

    // Các cột bạn muốn gán hoặc lấy dữ liệu
    protected $fillable = ['name', 'category_id', 'description', 'price', 'new_price', 'image', 'status', 'quantity', 'slug', 'user_id'];

    // Relationship giữa Product và Wishlist
    public function wishlists()
    {
        return $this->hasMany(Wishlist::class);
    }
}
