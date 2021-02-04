EMAIL = "test@example.com"
PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end

<<<<<<< HEAD
Movie.destroy_all
Text.destroy_all

ImportCsv.movie_data
ImportCsv.text_data

AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
=======
 Movie.destroy_all
 Text.destroy_all

 ImportCsv.movie_data
 ImportCsv.text_date
>>>>>>> 84dfd58ed9350fc0d340362d4667a58047fde1a4
