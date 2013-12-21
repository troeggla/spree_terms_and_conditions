Spree Terms And Conditions
=======================

Spree Terms and Conditions adds a terms and conditions check before during the checkout process.

* Adds a terms and conditions columns to the order model
* Adds checkbox in delivery page of checkout process
* Adds validation so user needs to check the terms and conditions box before proceeding

Installation
------------

Add spree_terms_and_conditions to your Gemfile:

	ruby gem 'spree_terms_and_conditions'

Bundle your dependencies and run the installation generator:

	shell
	bundle
	bundle exec rails g spree_terms_and_conditions:install
	
Add your terms and conditions page *in your Spree applications public folder*

	echo 'Terms and Conditions' > public/terms_and_conditions.html

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

	shell
	bundle
	bundle exec rake test_app
	bundle exec rspec spec


Copyright (c) 2013 [name of extension creator], released under the New BSD License
