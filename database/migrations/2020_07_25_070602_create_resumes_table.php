<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResumesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resumes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('organization', 150);
            $table->string('location', 150);
            $table->string('from');
            $table->string('to');
            $table->string('role');
            $table->string('website');
        });
        Schema::create('bulletpoint_resume', function (Blueprint $table) {
            $table->integer('bulletpoint_id')->unsigned();
            $table->foreign('bulletpoint_id')->references('id')->on('bulletpoints')->onDelete('cascade');
            $table->integer('resume_id')->unsigned();
            $table->foreign('resume_id')->references('id')->on('resumes')->onDelete('cascade');
            $table->primary(['bulletpoint_id', 'resume_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resumes');
        Schema::dropIfExists('bulletpoint_resume');

    }
}
