<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quên mật khẩu </title>
    <link rel="icon" href="/asset/images/1favicon.ico" type="image/x-icon" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/asset/css/style.css">
</head>

<body class="">
    <div class="flex min-h-full flex-col justify-center px-6 py-12 lg:px-8">
        <div class="sm:mx-auto sm:w-full sm:max-w-sm">
            <img class="mx-auto h-12 w-auto rounded-sm" src="/asset/images/logo.jpg" alt="Your Company" />
            <h2 class="mt-10 text-center text-3xl font-bold leading-9 tracking-tight text-gray-900">
                Quên mật khẩu ?
            </h2>
        </div>

        <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
            <div id="alert-border-2"
                class="<?= $error ? 'flex' : 'hidden' ?> items-center p-4 mb-4 text-red-800 border-t-4 border-red-300 bg-red-50"
                role="alert">
                <svg class="flex-shrink-0 w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor" viewBox="0 0 20 20">
                    <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z" />
                </svg>
                <div class="ms-3 text-sm font-medium">
                    <?= $error ?>
                </div>
            </div>
            <form class="space-y-6" action="?act=forgot-password" method="POST">
                <div>
                    <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email</label>
                    <div class="mt-2">
                        <input id="email" name="email" type="email" autocomplete="email" required
                            class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 pl-2" />
                    </div>
                </div>
                <div>
                    <button type="submit" name="forgot"
                        class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
                        Gửi email
                    </button>
                </div>
            </form>

            <p class="mt-10 text-center text-gray-500">
                <a href="?act=login" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Đăng Nhập</a>
                <span>||</span>
                <a href="?act=register" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Đăng
                    ký</a>
            </p>
        </div>
    </div>
</body>

</html>