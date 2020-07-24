<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('abouts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('social_id')->unsigned();
            $table->foreign('social_id')->references('id')->on('social')->OnDelete('cascade');
            $table->integer('skill_id')->unsigned();
            $table->foreign('skill_id')->references('id')->on('skills')->OnDelete('cascade');
            $table->integer('qualification_id')->unsigned();
            $table->foreign('qualification_id')->references('id')->on('qualification')->OnDelete('cascade');
            $table->string('personnel_image');
            $table->text('description');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('abouts');
    }
}
