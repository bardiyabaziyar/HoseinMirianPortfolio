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
            $table->string('name', 50);
            $table->text('biography');
            $table->string('cv_link');
            $table->string('age', 3);
            $table->text('full_summary');
            $table->string('address');
            $table->string('email');
            $table->string('phone');
            $table->string('nationality', 30);
            $table->string('degree');
            $table->string('remote_availability');
            $table->string('years_experience', 2);
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
