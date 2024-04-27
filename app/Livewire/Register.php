<?php

namespace App\Livewire;

use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class Register extends Component
{
    public $name;
    public $email;
    public $password;
    public $password_confirmation;

    protected $rules = [
        'name' => 'required|string|min:10|max:50',
        'email' => 'required|string|email|max:255|unique:users',
        'password' => 'required|string|min:8|confirmed',
        'password_confirmation' => 'required|string|same:password',
    ];

    protected $messages = [
        'name.required' => 'Tên không được để trống.',
        'name.string' => 'Tên phải là chuỗi.',
        'name.min' => 'Tên không được ít hơn 10 ký tự.',
        'name.max' => 'Tên không được vượt quá 50 ký tự.',

        'email.required' => 'Email không được để trống.',
        'email.string' => 'Email phải là chuỗi.',
        'email.email' => 'Email không hợp lệ.',
        'email.max' => 'Email không được vượt quá 255 ký tự.',
        'email.unique' => 'Email đã tồn tại.', // Thêm thông báo lỗi cho trường email trùng lặp

        'password.required' => 'Mật khẩu không được để trống.',
        'password.string' => 'Mật khẩu phải là chuỗi.',
        'password.min' => 'Mật khẩu phải ít nhất 8 ký tự.',
        'password.confirmed' => 'Mật khẩu xác nhận không khớp.',
        'password_confirmation.required' => 'Vui lòng nhập lại mật khẩu.',
        'password_confirmation.string' => 'Trường xác nhận mật khẩu phải là chuỗi ký tự.',
        'password_confirmation.same' => 'Xác nhận mật khẩu không đúng!.',

    ];

    public function register()
    {
        $this->validate();

        // Kiểm tra xem email đã tồn tại trong cơ sở dữ liệu chưa
        if (User::where('email', $this->email)->exists()) {
            $this->addError('email', 'Email đã tồn tại.');
            return;
        }

        $user = User::create([
            'name' => $this->name,
            'email' => $this->email,
            'password' => Hash::make($this->password),
        ]);

        if ($user) {
            Auth::login($user);
            return redirect()->to('/');
        } else {
            session()->flash('error', 'Đăng ký không thành công. Vui lòng thử lại sau.');
        }
    }

    public function checkInputValidityAndSubmit()
    {
        if ($this->validate()) {
            $this->register();
        }
    }

    public function render()
    {
        return view('livewire.register');
    }
}
