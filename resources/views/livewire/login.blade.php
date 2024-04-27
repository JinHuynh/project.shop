<div class="row justify-content-center">
    <div class="col-md-8 mx-auto" style="width: 350px; height: 300px;">
        <div class="mx-auto" style="width: 100%; height: 100%;">
            <form class="form mt-5" wire:submit.prevent="login">
                @csrf
                <p class="heading">Đăng nhập</p>
                <input wire:model="email" id="email" type="text"
                    class="form-control @if (!empty($email) && !$errors->has('email')) is-valid @elseif (!empty($email)) is-invalid @endif"
                    name="email" value="{{ old('email') }}" autocomplete="email" wire:keydown="login"
                    placeholder="Địa chỉ email" autofocus>

                @if ($errors->has('email'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif


                <input wire:model="password" id="password" class="form-control @error('password') is-invalid @enderror"
                    placeholder="Mật khẩu" type="password" wire:keydown="clearErrorMessage">
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

                @if (session('error'))
                    <span class="invalid-feedback" role="alert">
                        <strong>
                            {{ session('error') }}
                        </strong>
                    </span>
                @endif

                <button type="submit" class="btn">{{__('Đăng nhập')}}</button>
                <p class="text-center">Bạn chưa có tài khoản? <a href="{{ route('register') }}">{{ __('Đăng ký') }}</a></p>
            </form>
        </div>
    </div>
</div>
