<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('documents', function (Blueprint $table) {
        $table->id();

        $table->unsignedBigInteger('destination_id')->nullable()->index();
        $table->unsignedBigInteger('scholarship_id')->nullable()->index();

        $table->string('name');    
        $table->string('file_path');       
        $table->string('mime_type')->default('application/pdf');
        $table->bigInteger('file_size')->default(0);

        $table->boolean('is_active')->default(1);

        $table->timestamps();
    });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('documents');
    }
};
