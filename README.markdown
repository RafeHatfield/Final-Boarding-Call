Final Boarding Call
====================

This is a gem for a basic middleware application that will do a final check on any 404 page to see if that page should be redirected (via 301 or other).  The purpose of this gem is to remove all redirection logic from a complex application and handle it via a simple redirection model, which holds the old url, the new url and the type of redirection that should take place.  It will mainly be useful to large content driven sites that has perhaps changed URL structure at least once and need to keep older URL's alive.

Implementation
---------------------

MyApplication::Application.config.middleware.insert_before(Rack::Lock, Rack::FinalBoardingCall)

### Version 0.0.1

* This version is not yet working as described, it does basic capturing of every request and returns a simple string.

