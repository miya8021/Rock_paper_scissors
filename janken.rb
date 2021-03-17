def janken
  puts "半角数字で入力してね。[1]グー [2]チョキ [3]パー"
  player = gets.to_i
  if player < 1 || 3 < player then
    puts "1〜3の数字を入力して下さい。"
    return true
  end
  player -= 1
  computer = rand(3)
  #じゃんけんの手を対応した文字列が入ったオブジェクト
  janken = ["グー", "チョキ", "パー"]

  puts "あなたの:#{janken[player]}, 私の手:#{janken[computer]}"

  if player == computer
    puts "あいこで..."
    return true
  elsif (player == 0 && computer == 1) || (player == 1 && computer == 2) || (player == 2 && computer == 0)
  puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
    return false
  end
end

def continue_or
  loop do
    puts "もう一度じゃんけんする場合は[0]、ゲームをやめる場合は[1]を選択してね。"
    player_conti = gets.to_i

    if player_conti == 0
      return true
    elsif player_conti == 1
      return false
    end
  end
end
next_game = true
quit_game = false

puts '最初はグー、じゃんけん‥'

#じゃんけんをくりかえす
while next_game do
  if next_game = janken
  else next_game = continue_or
  end
end