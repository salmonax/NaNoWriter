require 'sinatra'
require 'redcarpet'

if development?
  require 'sinatra/reloader'
  require 'dotenv'
  Dotenv.load
end

enable :sessions
set :session_secret, ENV['SESSION_SECRET']

get "/" do 
  haml :root
end

__END__

@@ layout
!!!5
%html
  %head
  %body
    =yield

@@ root
:markdown
  Welcome to Sinatra Minimal, a simple starter kit!
  ==
  Features:
  --
  - redcarpet for inline markdown!
  - thin for webserver
  - sessions enabled, dotenv for .env loading
  - rack/guard-livereload for extensionless reloading
  - pushable to Heroku out of the box

  This is Great!
  --
  Really Great! Pretty much just yeah dude
  ============
  - We're finally back
  - And this is great.
  - Actually it isn't. Nothing this simple should require so much bullshit.
  - How much fucking code is bundled in this thing, just to serve up a page?!
  - Now we just need to learn how to stop being stupid.
