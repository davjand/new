// Filename: specRunner.js

require.config({
	baseUrl: "../public_html/workspace/js/",
	//urlArgs: 'cb=' + Math.random(),
	paths: {
		modernizr: 'libs/modernizr.min',
		jquery: 'libs/jquery.min',
		'jquery-ui': 'libs/jquery-ui.min',
		underscore: 'libs/underscore',
		backbone: 'libs/backbone',
		marionette: 'libs/backbone.marionette.min',
		'backbone-relational': 'libs/backbone-relational',
		colorbox:'libs/jquery.colorbox-min',
		jasmine: '../../../tests/lib/jasmine-1.3.1/jasmine',
		'jasmine-jquery': '../../../tests/lib/jasmine-jquery',
		'jasmine-html': '../../../tests/lib/jasmine-1.3.1/jasmine-html',
		spec: '../../../tests/spec',
		moment: 'libs/moment.min',
		chosen: 'libs/chosen.jquery.min'
	},

	shim: {
		'jquery': {
			exports: '$'
		},
		'underscore': {
			exports: '_'
		},
		'backbone': {
			deps: ['underscore', 'jquery'],
			exports: 'Backbone'
		},
		'marionette':{
			deps: ['underscore','jquery','backbone'],
			exports: 'Marionette'
		},
		'backbone-relational':{
			deps: ['jquery','underscore','backbone']
		},
		'jasmine': {
			exports: 'jasmine'
		},
		'jasmine-html': {
			deps: ['jasmine', 'backbone', 'jquery'],
			exports: 'jasmine'
		},
		'jasmine-jquery': {
			deps: ['jasmine','jquery'],
			exports: 'jasmine'
		},

		'modernizr': {exports: 'Modernizr'},
		'jquery-ui': {deps: ['jquery']},
		'libs/jquery.transit': {deps: ['jquery']},

		'libs/jquery.colorbox-min': {deps: ['jquery']},
		

		chosen: {deps: ['jquery']}
	}
});

require([
	'underscore',
	'jquery',
	'backbone',
	'marionette',
	'jasmine-html',
	'jasmine-jquery',
	], function(_, $, Backbone, Marionette, jasmine, jasminejQuery){
	
	"use strict";

	
	
	
	var jasmineEnv = jasmine.getEnv();
	jasmineEnv.updateInterval = 1000;
	
	var htmlReporter = new jasmine.HtmlReporter();
	
	jasmineEnv.addReporter(htmlReporter);
	
	jasmineEnv.specFilter = function(spec) {
		return htmlReporter.specFilter(spec);
	};
	
	var specs = [

	];
	

	
	$(function(){
		jasmineEnv.execute();
	});
 
});