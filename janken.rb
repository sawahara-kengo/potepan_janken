#準備処理################################

#関数宣言###############################
#じゃんけん(メイン関数)
def janken
    #"最初はグー！じゃんけん・・・！"
    #"【グー：0 / チョキ：1 / パー：2 / 辞退：3】"からプレイヤー入力以降の処理
    ################################################################
    janken_you = gets.to_i #じゃんけんのプレイヤー選択値を取得して数値に変換
    janken_me = rand(3) #プログラムのじゃんけん選択値
    hands = ["グー","チョキ","パー"] #じゃんけん変換用
    ################################################################
    case janken_you #プレイヤー選択に応じた処理
    when 0..2 #グー,チョキ,パーいずれかの場合
        puts "ホイ！"
        puts "----------------------------------------------"
        puts "あなたは#{hands[janken_you]}を出しました！"
        puts "私は#{hands[janken_me]}を出しました！"
        puts "----------------------------------------------"
        if janken_you == janken_me #あいこ
            aiko
        elsif (janken_you == 0 && janken_me == 1) || (janken_you == 1 && janken_me == 2) || (janken_you == 2 && janken_me == 0)
            #プレイヤーの勝ち
            puts "あなたの勝ち！"
            hoi_win #def hoi_win呼び出し
        else #プレイヤーの負け
            puts "私の勝ち！"
            hoi_lose #def hoi_lose呼び出し
        end
    when 3 #辞退の場合
        puts "また遊ぼうね！"
    else #上記以外の値が入力された場合
        puts "そんな手はないよ！"
        puts "最初はグー！じゃんけん・・・！"
        puts "【グー：0 / チョキ：1 / パー：2 / 辞退：3】"
        janken #再度def janken呼び出し
    end
end #def janken

################################################################
#じゃんけんに内包される関数たち

#あいこ
def aiko
    puts "あいこで・・・！"
    puts "【グー：0 / チョキ：1 / パー：2 / 辞退：3】"
    #入力まで待機
    #########################################################
    aiko_you = gets.to_i #あいこのプレイヤー選択値を取得して数値に変換
    aiko_me = rand(3) #プログラムのあいこ選択値
    hands_aiko = ["グー","チョキ","パー"] #あいこ変換用
    ##########################################################
    case aiko_you #プレイヤー選択に応じた処理
    when 0..2 #グー,チョキ,パーいずれかの場合
        puts "ショ！"
        puts "----------------------------------------------"
        puts "あなたは#{hands_aiko[aiko_you]}を出しました！"
        puts "私は#{hands_aiko[aiko_me]}を出しました！"
        puts "----------------------------------------------"
        if aiko_you == aiko_me #あいこ
            aiko #再度def aiko呼び出し
        elsif (aiko_you == 0 && aiko_me == 1) || (aiko_you == 1 && aiko_me == 2) || (aiko_you == 2 && aiko_me == 0)
            #プレイヤーの勝ち
            puts "あなたの勝ち！"
            hoi_win #def hoi_win呼び出し
        else #プレイヤーの負け
            puts "私の勝ち！"
            hoi_lose #def hoi_lose呼び出し
        end
    when 3 #辞退の場合
        puts "また遊ぼうね！"
    else #上記以外の値が入力された場合
        puts "そんな手はないよ！"
        aiko #再度def aiko呼び出し
    end
end

#あっち向いてホイ(プレイヤーじゃんけん勝利)
def hoi_win
    puts "『向かせろ！』"
    puts "あっち向いて〜！"
    puts "【上：0 / 下：1 / 左：2 / 右：3 / 辞退：4】"
    #入力まで待機
    ##########################################################
    hoi_win_you = gets.to_i #あっち向いてホイのプレイヤー選択値を取得して数値に変換
    hoi_win_me = rand(3) #プログラム選択
    arrows_win = ["上","下","左","右"] #方向変換用
    ########################################################
    case hoi_win_you #プレイヤー選択に応じた処理
    when 0..3 #上,下,左,右いずれかの場合
        puts "ホイ！"
        puts "----------------------------------------------"
        puts "あなたは#{arrows_win[hoi_win_you]}を指しました"
        puts "私は#{arrows_win[hoi_win_me]}を向きました"
        puts "----------------------------------------------"
        if hoi_win_you == hoi_win_me #方向一致
            puts "あなたの勝ち！やるね！"
            puts "また遊ぼうね！"
        else #方向不一致
            puts "あぶなかったあ！もう一回じゃんけんからだね！"
            puts "最初はグー！じゃんけん・・・！"
            puts "【グー：0 / チョキ：1 / パー：2 / 辞退：3】"
            #入力まで待機
            janken #再度def janken呼び出し
        end
    when 4 #辞退の場合
        puts "また遊ぼうね！"
    else #上記以外の値が入力された場合
        puts "そんな向きはないよ！"
        hoi_win #再度def hoi_win呼び出し
    end
end

#あっち向いてホイ(プログラムじゃんけん勝利)
def hoi_lose
    puts "『よけろ！』"
    puts "あっち向いて〜！"
    puts "【上：0 / 下：1 / 左：2 / 右：3 / 辞退：4】"
    #入力まで待機
    ##########################################################
    hoi_lose_you = gets.to_i #あっち向いてホイのプレイヤー選択値を取得して数値に変換
    hoi_lose_me = rand(3) #プログラム選択
    arrows_lose = ["上","下","左","右"] #方向変換用
    ########################################################
    case hoi_lose_you #プレイヤー選択に応じた処理
    when 0..3 #上,下,左,右いずれかの場合
        puts "ホイ！"
        puts "----------------------------------------------"
        puts "あなたは#{arrows_lose[hoi_lose_you]}を向きました"
        puts "私は#{arrows_lose[hoi_lose_me]}を指しました"
        puts "----------------------------------------------"
        if hoi_lose_you == hoi_lose_me #方向一致
            puts "私の勝ち！やったあ！"
            puts "また遊ぼうね！"
        else #方向不一致
            puts "やるねえ！もう一回じゃんけんからだね！"
            puts "最初はグー！じゃんけん・・・！"
            puts "【グー：0 / チョキ：1 / パー：2 / 辞退：3】"
            #入力まで待機
            janken #再度def janken呼び出し
        end
    when 4 #辞退の場合
        puts "また遊ぼうね！"
    else #上記以外の値が入力された場合
        puts "そんな向きはないよ！"
        hoi_lose #再度def hoi_lose呼び出し
    end
end
################################################################

#メイン処理################################
puts "私とじゃんけんゲームをしましょう！"
puts "最初はグー！じゃんけん・・・！"
puts "【グー：0 / チョキ：1 / パー：2 / 辞退：3】"
#入力まで待機
janken #def jankenの呼び出し