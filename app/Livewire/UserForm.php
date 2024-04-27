<?php

namespace App\Livewire;

use Livewire\Component;

class UserForm extends Component
{
    public $name;
    public $email;
    public $password;

    protected $rules = [
        'name' => 'required|min:6',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:6',
    ];

    protected $messages = [
        'name.required' => 'Tên không được để trống.',
        'name.min' => 'Tên phải có ít nhất 6 ký tự.',
        'email.required' => 'Email không được để trống.',
        'email.email' => 'Email không hợp lệ.',
        'email.unique' => 'Email đã tồn tại.',
        'password.required' => 'Mật khẩu không được để trống.',
        'password.min' => 'Mật khẩu phải có ít nhất 6 ký tự.',
    ];

    public function validateName()
    {
        $validatedData = $this->validate([
            'name' => 'required|min:6',
        ]);

        if ($validatedData) {
            session()->flash('message', 'Tên hợp lệ.');
        }
    }


    public function render()
    {
        return view('livewire.user-form');
    }
}
