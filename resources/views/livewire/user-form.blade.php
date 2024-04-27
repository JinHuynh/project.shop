<!-- user-form.blade.php -->

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">Form kiểm lỗi trực tiếp</div>

                <div class="card-body">
                    <form wire:submit.prevent="submitForm">
                        <div class="form-group">
                            <label for="name">Họ và tên:</label>
                            <input type="text" class="form-control" wire:model="name" wire:keydown="validateName" autofocus>
                            @error('name')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            @if (session('message'))
                                <span class="text-success" >{{ session('message') }}</span>
                            @endif
                        </div>

                        {{-- <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" wire:model="email">
                            @error('email')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" wire:model="password">
                            @error('password')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div> --}}

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
