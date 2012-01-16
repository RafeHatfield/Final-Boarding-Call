Final Boarding Call
====================

This is a gem for a basic middleware application that will do a final check on any 404 page to see if that page should be redirected (via 301 or other).  The purpose of this gem is to remove all redirection logic from a complex application and handle it via a simple redirection model, which holds the old url, the new url and the type of redirection that should take place.  It will mainly be useful for large content driven sites that have perhaps changed URL structure at least once and need to keep older URL's alive, or any site that has an interest in keeping structured historical URLs alive.  Using this does require diligence in keeping the redirect model current whenever a URL becomes outdated, and that entry process into the redirect model is outside of the purpose of this gem.  

Implementation
---------------------

MyApplication::Application.config.middleware.use Rack::FinalBoardingCall

rails generate finalboardingcall

rake db:migrate

### Version 0.0.2

* This version is not yet working as described, it does basic capturing of every request and returns a simple string for testing porpoises.  It hasn't been released to rubygems.

