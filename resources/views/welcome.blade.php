<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Hosein Mirian portfolio website. I am current University of Oxford Researcher / Front-End Developer. I am a Full-Stack developer with more than 12 years experience. ">
        <meta name="keywords" content="HTML, CSS, JavaScript, Vue, Vuex, front end">
        <meta name="author" content="Hossein Mirian">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1 , maximum-scale=1, user-scalable=no">
        <title>Hosein Mirian</title>
        <!-- Fonts -->
        <link href="css/app.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <div id="app">
        <my-header></my-header>
        <transition name="fade" mode="out-in">
            <router-view />
        </transition>
    </div>
    <script>
        window.Laravel={};
        window.Laravel.csrfToken='{{ csrf_token() }}'
    </script>

    <script src="/js/app.js"></script>

    </body>
</html>
