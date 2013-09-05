# OmniAuth Cloud66

This is the unofficial OmniAuth strategy for authenticating to [Cloud 66](https://www.cloud66.com).

Before you can start developing your API client for Cloud 66, you need to enable developers mode on your account.

Login to your Cloud 66 account and enable your account as a Developer account under Account/Apps.
Once your account is a developer one, you will see a Developers link on the left menu.

Now you can register your API client. Click on New Application button and enter the name of your client and the OAuth 2.0 callback URL.

For more info visit [Cloud 66 official docs](https://www.cloud66.com/help).

## Basic usage

```ruby
  use OmniAuth::Builder do
    provider :cloud66, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
  end
```

## Scopes

Cloud 66 API lets you set scopes to provide granular access to different types of data:

```ruby
	use OmniAuth::Builder do
      provider :cloud66, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], scope: "public,redeploy"
  end
```

More info on [Scopes](https://www.cloud66.com/help/basics#scopes).

## License

omniauth-cloud66 is released under the MIT License.
Developed by [rastasheep](https://github.com/rastasheep).
