unless Rails.env.production?
  ENV['DATABASE_URL'] = 'http://localhost:4999'
else
  ENV['DATABASE_URL'] = 'http://heroku.app'
end

