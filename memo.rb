require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_s

if memo_type.chomp == "1"
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s
    p "メモ内容を入力してください"
    p "完了したらCtrl+Dをおします"
    text = gets.to_s
    finish = gets.to_s
    if finish == ""
       CSV.open("#{file_name.chomp}.csv", "w") do |row|
       row << [text.chomp] 
       end  
    end

elsif memo_type.chomp == "2"
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s
    p "追加するメモ内容を入力してください"
    p "完了したらCtrl+Dをおします"
    text = gets.to_s
    finish = gets.to_s
    if finish == ""
       CSV.open("#{file_name.chomp}.csv", "a") do |row|
       row << [text.chomp] 
       end  
    end

else
    p "エラー"

end



    