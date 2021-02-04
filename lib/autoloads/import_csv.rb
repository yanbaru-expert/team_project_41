class ImportCsv
  # CSVデータのパスを引数として受け取り、インポート処理を実行
<<<<<<< HEAD

=======
  
>>>>>>> 84dfd58ed9350fc0d340362d4667a58047fde1a4
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.movie_data
<<<<<<< HEAD
    list = import("db/csv_data/movie_data.csv")
    puts "インポート処理を開始"
    Movie.create!(list)
    puts "インポート完了"
  end
=======
    list =  import('db/csv_data/movie_data.csv')
    puts "インポート処理を開始"
    Movie.create!(list)
    puts "インポート完了"
>>>>>>> 84dfd58ed9350fc0d340362d4667a58047fde1a4

  def self.text_data
    list = import("db/csv_data/text_data.csv")
    puts "インポート処理を開始"
    Text.create!(list)
    puts "インポート完了！！"
  end
<<<<<<< HEAD
=======
  
>>>>>>> 84dfd58ed9350fc0d340362d4667a58047fde1a4
end
