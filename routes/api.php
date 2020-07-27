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

Route::group([],function(){
     Route::get('/portfolios','PortfolioController@index');
     Route::get('/portfolios/{portfolio}','PortfolioController@single');
     Route::get('/skills','SkillController@index');
     Route::get('/skills/{skills}','SkillController@single');
     Route::get('/workhistory','WorkhistoryController@index');
     Route::get('/workhistory/{workhistory}','WorkhistoryController@single');
     Route::get('/social','SocialController@index');
     Route::get('/social/{social}','SocialController@single');
     Route::get('/qualifications','QualificationController@index');
     Route::get('/qualifications/{qualification}','QualificationController@single');

});