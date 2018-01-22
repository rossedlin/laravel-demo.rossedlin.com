<?php

/**
 * Main
 */
Route::get('/', 'Index');

/**
 * Api Integration
 */
Route::get('/api-integration', 'Portfolio\ApiIntegration');

/**
 * Stripe
 */
Route::get('/stripe', 'Portfolio\Stripe');

/**
 * Web Scraping
 */
Route::get('/web-scraping', 'Portfolio\WebScraping');