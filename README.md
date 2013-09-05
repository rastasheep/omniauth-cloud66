# OmniAuth Cloud66

This is the unofficial OmniAuth strategy for authenticating to [Cloud 66](https://www.cloud66.com).

Before you can start developing your API client for Cloud 66, you need to enable developers mode on your account.

Login to your Cloud 66 account and enable your account as a Developer account under Account/Apps.
Once your account is a developer one, you will see a Developers link on the left menu.

Now you can register your API client. Click on New Application button and enter the name of your client and the OAuth 2.0 callback URL.

For more info visit [Cloud 66 official docs](https://www.cloud66.com/help).

## Usage

Add the strategy to your `Gemfile`:

```ruby
gem 'omniauth-cloud66'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :cloud66, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], scope: "public,redeploy"
end
```

In Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cloud66, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], scope: "public,redeploy"
end
```


For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

See the [example](https://github.com/rastasheep/omniauth-cloud66/blob/master/example/config.ru) Sinatra app for full examples

## License

omniauth-cloud66 is released under the MIT License.
Developed by [Aleksandar Diklic](https://github.com/rastasheep).
