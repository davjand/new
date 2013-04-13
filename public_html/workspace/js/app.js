/* app.js
 * Javascript Application 
 *
 * David Anderson 2013
 *
*/

define([
	'jquery',
	'underscore',
	'backbone',
	'marionette',
	'vent',
	'router',
], function(
	$,_,Backbone,Marionette,vent,
	AppRouter,
	){
	"use strict";
	
	/** @class */
	var App = new Backbone.Marionette.Application(
	{
		//routes
		
		index: function(){

		},

		
		
	});
	/* Init Router */
	App.addInitializer(function(options){
		this.router = new AppRouter({
			controller: App
		});
		if( ! Backbone.History.started){
			Backbone.history.start({pushState: true, root: config.root});
		}
	});
	
	return App;
});
