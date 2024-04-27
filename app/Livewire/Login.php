<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class Login extends Component
{
    public $email;
    public $password;

    protected $rules = [
        'email' => 'required|email|exists:users,email',
        'password' => 'required',
    ];

    protected $messages = [
        'email.required' => 'Email không được để trống.',
        'email.email' => 'Email không hợp lệ.',
        'email.exists' => 'Email không tồn tại.',
        'password.required' => 'Mật khẩu không được để trống.',
        'password' => 'Mật khẩu không chính xác.',
    ];


    public function login()
    {
        $this->validate();

        if (Auth::attempt(['email' => $this->email, 'password' => $this->password])) {
            return redirect()->intended('/');
        } else {
            session()->flash('error', 'Sai mật khẩu!');
        }
    }

    public function clearErrorMessage()
    {
        session()->forget('error', 'Xin vui lòng thử lại!');
    }

    public function render()
    {
        return view('livewire.login');
    }
}
