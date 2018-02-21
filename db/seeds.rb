User.create(
  email: 'test@entrylvl.com',
  password: '123456',
  full_name: 'Test User',
  quote: 'This is briefly who I am.',
  description: 'Longer description of who I am and what I like to do. Some thing that I did.',
  twitter: 'twitter.com/TestUser',
  linkedin: 'linkedin.com/in/TestUser',
  github: 'github.com/TestUser'
)

Post.create(
  title: 'Title',
  lead: 'Subtitle',
  body: "### topic

  paragraph

  ### codes

  ```ruby
  class Hello
    puts 'hello world'
  end
  ```

  ```js
  function hello() {
    console.log('hello world');
  }
  ```

  ```python
  class Hello:
    print('hello world')
  ```

  ```elixir
  def hello do
    IO.puts('Hello World')
  end
  ```

  ```css
  .hello {
    display: flex;
  }
  ```",
  status: :published,
  published_at: Time.current
)

Post.create(
  title: 'New Framework to save the web development',
  lead: 'Completly new',
  body: "## About Framework

Framework is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Framework attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://Framework.com/docs/routing).
- [Powerful dependency injection container](https://Framework.com/docs/container).
- Multiple back-ends for [session](https://Framework.com/docs/session) and [cache](https://Framework.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://Framework.com/docs/eloquent).
- Database agnostic [schema migrations](https://Framework.com/docs/migrations).
- [Robust background job processing](https://Framework.com/docs/queues).
- [Real-time event broadcasting](https://Framework.com/docs/broadcasting).

Framework is accessible, yet powerful, providing tools needed for large, robust applications.

## Learning Framework

Framework has the most extensive and thorough [documentation](https://Framework.com/docs) and video tutorial library of any modern web application framework, making it a breeze to get started learning the framework.

If you're not in the mood to read, [Framecasts](https://framecasts.com) contains over 1100 video tutorials on a range of topics including Framework, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.

## Contributing

Thank you for considering contributing to the Framework framework! The contribution guide can be found in the [Framework documentation](https://Framework.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Framework, please send an e-mail. All security vulnerabilities will be promptly addressed.

## License

The Framework framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).",
  status: :published,
  published_at: Time.current
)
