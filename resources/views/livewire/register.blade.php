<div class="row justify-content-center">
    <div class="col-md-8 mx-auto" style="width: 400px; height: 300px;">
        <div class="mx-auto" style="width: 100%; height: 100%;">
            <form class="form mt-5" wire:submit.prevent="register">
                @csrf
                <p class="heading">{{ __('Đăng ký') }}</p>
                <input wire:model="name" id="name" type="text"
                    class="form-control @if (!empty($name) && !$errors->has('name')) is-valid @elseif (!empty($name)) is-invalid @endif"
                    name="name" autocomplete="name" placeholder="Họ và tên" autofocus wire:keydown="register">

                @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

                <input wire:model="email" id="email" type="email"
                    class="form-control @if (!empty($email) && !$errors->has('email')) is-valid @elseif (!empty($email)) is-invalid @endif"
                    name="email" autocomplete="email" placeholder="Địa chỉ email" wire:keydown="register">

                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

                <input wire:model="password" id="password" type="password"
                    class="form-control @if (!empty($password) && !$errors->has('password')) is-valid @elseif (!empty($password)) is-invalid @endif"
                    name="password" placeholder="Mật khẩu" autocomplete="new-password" wire:keydown="register">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

                <input wire:model="password_confirmation" id="password_confirmation" type="password"
                    class="form-control @if (!empty($password_confirmation) && !$errors->has('password_confirmation')) is-valid @elseif (!empty($password_confirmation)) is-invalid @endif"
                    name="password_confirmation" placeholder="Nhập lại mật khẩu" autocomplete="new-password"
                    wire:keydown.enter="checkInputValidityAndSubmit">

                @error('password_confirmation')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror


                <button type="submit" class="btn btn-primary text-light">
                    {{ __('Đăng ký') }}
                </button>
                <p class="text-center">Bạn đã có tài khoản? <a href="{{ route('login') }}">{{ __('Đăng nhập') }}</a></p>

            </form>
        </div>
    </div>
</div>
