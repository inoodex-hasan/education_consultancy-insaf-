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
        Schema::create('scholarship_item_sections', function (Blueprint $table) {
        $table->id();
        $table->foreignId('scholarship_item_id')->constrained()->onDelete('cascade');

        $table->json('images')->nullable();

        $table->longText('description')->nullable();

        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('scholarship_item_sections');
    }
};
