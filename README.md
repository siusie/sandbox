# Sandbox Rails Application

This is a Ruby on Rails application. Follow the steps below to get the application up and running.

## Ruby Version

This project uses Ruby 3.x (check your version with `ruby -v`).

## System Dependencies

- Ruby 3.x
- Rails 7.x
- Node.js (for JavaScript assets)
- Yarn (optional, for managing JS packages)
- SQLite3 (default for development)

## Configuration

1. Clone the repository:
   ```bash
   git clone <repo-url>
   cd sandbox
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. (Optional) Install JavaScript dependencies:
   ```bash
   yarn install
   ```

## Database Creation & Initialization

Run the following commands to set up the database:

```bash
bin/rails db:create db:migrate db:seed
```

## How to Run the Test Suite

To run all tests:

```bash
bin/rails test
```

## Services

- Job queues: ActiveJob (see `app/jobs`)
- Cache: Rails cache store (see `config/cache.yml`)
- Web server: Puma (see `config/puma.rb`)

## Running the Application

Start the Rails server:

```bash
bin/rails server
```

Visit [http://localhost:3000](http://localhost:3000) in your browser.

## Deployment Instructions

1. Ensure all environment variables are set (see `config/credentials.yml.enc`).
2. Precompile assets:
   ```bash
   bin/rails assets:precompile
   ```
3. Run database migrations:
   ```bash
   bin/rails db:migrate
   ```
4. Start the server as described above.

---

For more details, see the Rails Guides: https://guides.rubyonrails.org/
