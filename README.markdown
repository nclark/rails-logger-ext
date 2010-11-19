# rails-logger-ext

this is a simple gem for adding a few methods to the rails logger so i don't have to keep adding the same code to every project. tested with rails 2.3.5 and 3.0.1.

### #pp
    Rails.logger.pp(request)

	Started GET "/" for 127.0.0.1 at Thu Nov 18 16:45:26 -0800 2010
	  Processing by WelcomeController#index as HTML
	#<ActionDispatch::Request:0x1033e3628
	 @env=
	  {"action_dispatch.request.formats"=>
	    [#<Mime::Type:0x101f063b8
	      @string="text/html",
	      @symbol=:html,
	...

### #achtung!
    Rails.logger.achtung!("hello")

    Started GET "/" for 127.0.0.1 at Thu Nov 18 16:46:41 -0800 2010
	  Processing by WelcomeController#index as HTML
	--------------------------------------------------
	--------------------------------------------------
	hello
	--------------------------------------------------
	--------------------------------------------------
	
### greppable
    Rails.logger.greppable(request.env)
    
    Started GET "/" for 127.0.0.1 at Thu Nov 18 16:47:35 -0800 2010
	  Processing by WelcomeController#index as HTML
	%% - {"action_dispatch.request.formats"=>
	%% -   [#<Mime::Type:0x101f063b8
	%% -     @string="text/html",
	%% -     @symbol=:html,
	%% -     @synonyms=["application/xhtml+xml"]>],
	...

## Contributing to rails-logger-ext
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Licensed under WTFPL. See LICENSE.txt for further details.

