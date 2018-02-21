# entrylvl plataform

This is a blog dedicated to the entrylvl, feel free to use any of the code, but the logo and the images we reserve all the rights.

#### How do I manage the posts?

Go to `/dashboard'`` them you will be redirected to a login page. You can use the a default creadentials if you ran `db:setup` or `db:seed`. Go to the `Run` to further details.

#### Will are you writing your own blog, why not Medium?

Because we are IT people, it never perfect or enough other solution. Also we like to code. So there is that.

#### Can I post in the blog too?

For now we are not looking for new writters, maybe in the future. 👀

## Run

You will need Ruby >= 2.4.0 and PostgreSQL >= 9.5.

```shell
$ gem install bundle
$ bundle install
$ bundle exec rake db:setup # make sure postgresql is running
$ bundle exec rails server
```

Two articles and a user will be created to help through development.

```
# User credentials
email: test@entrylvl.com
password: 123456
```

## Contributing

You can contribute by getting an issue and sending a PR. Please be clear with your intentions on the issue so everyone have the same expectations.
