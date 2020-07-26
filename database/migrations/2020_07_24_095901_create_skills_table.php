<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSkillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('skills', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('portfolio_types_id')->unsigned();
            $table->foreign('portfolio_types_id')->references('id')->on('portfolio_types')->onDelete('cascade');
            $table->string('skill_name',100);
            $table->text('description');
            $table->string('skill_image');
            $table->string('skill_level');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('skills');
    }
}
