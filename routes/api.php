<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([], function () {
    Route::get('/all', 'GetAllController@get');
    Route::get('/hero', 'HeroController@index');
    Route::get('/about', 'AboutController@index');
    Route::get('/backgrounds', 'BackgroundController@index');
    Route::get('/services', 'ServicesController@index');
    Route::get('/services/{services}', 'ServicesController@single');
    Route::get('/portfolios', 'PortfolioController@index');
    Route::get('/portfolios/{portfolio}', 'PortfolioController@single');
    Route::get('/skills', 'SkillController@index');
    Route::get('/skills/{skills}', 'SkillController@single');
    Route::get('/resume', 'ResumeController@index');
    Route::get('/resume/{resume}', 'ResumeController@single');
    Route::get('/socials', 'SocialController@index');
    Route::get('/socials/{social}', 'SocialController@single');
    Route::get('/education', 'EducationController@index');
    Route::get('/description', 'DescriptionController@index');
    Route::get('/education/{education}', 'EducationController@single');

});