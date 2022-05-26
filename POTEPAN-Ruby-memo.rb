#openメソッド(必要ならforeachメソッド使う)

require "csv"
 
  puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 
  memo_type = gets.to_s
  input_number = memo_type.chomp
    
    #新規書き込み
    if input_number == "1"
      puts "拡張子を除いたファイル名を入力してください。"
      file_name = gets.chomp
      
      puts "メモしたい内容を記入してください。完了したらctrl＋dで保存します。"
      input_memo = $stdin.read
      new_memo = input_memo.chomp
      
      CSV.open("#{file_name}.csv" , "w") do |csv|
      csv << ["#{new_memo}"]
      end
      print File.read("#{file_name}.csv")
    
    #編集  
    elsif input_number == "2"
      puts "編集先のファイル名を入力してください。。"
      edited_file_name = gets.chomp
      
      puts "編集内容を入力してください。完了したらctrl+dで保存します。"
      inpud_memo_edited = $stdin.read
      edited_memo = inpud_memo_edited.chomp
      
      CSV.open("#{edited_file_name}.csv","a") do |csv|
      csv << ["#{edited_memo}"]
      end
      print File.read("#{edited_file_name}.csv")
      
    
    else
      puts "１か２を実行。"
    
    end


