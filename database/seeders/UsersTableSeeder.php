<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Tạo dữ liệu mẫu cho bảng users
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@ngoctai.com',
            'phone' => '123456789',
            'avatar' => 'default-avatar.jpg', // Avatar mặc định (nếu có)
            'email_verified_at' => now(),
            'password' => Hash::make('123'), // Mật khẩu được hash
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Tạo thêm các bản ghi khác nếu cần
    }
}
