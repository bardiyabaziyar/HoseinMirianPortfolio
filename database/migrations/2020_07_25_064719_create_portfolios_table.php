<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePortfoliosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('portfolios', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('portfolio_types_id')->unsigned();
            $table->foreign('portfolio_types_id')->references('id')->on('portfolio_types')->onDelete('cascade');
            $table->string('title');
            $table->string('organization', 150);
            $table->string('location', 150);
            $table->string('source_code');
            $table->string('website');
            $table->string('project_image');
            $table->string('role');
            $table->text('description');
        });

        Schema::create('portfolio_skills', function (Blueprint $table) {
            $table->integer('portfolio_id')->unsigned();
            $table->foreign('portfolio_id')->references('id')->on('portfolios')->onDelete('cascade');
            $table->integer('skills_id')->unsigned();
            $table->foreign('skills_id')->references('id')->on('skills')->onDelete('cascade');
            $table->primary(['portfolio_id', 'skills_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('portfolios');
        Schema::dropIfExists('portfolio_skills');
    }
}
