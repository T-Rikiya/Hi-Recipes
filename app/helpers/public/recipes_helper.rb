module Public::RecipesHelper

  def ingredient_placeholder
    <<-"EOS".strip_heredoc
    ・鶏もも肉：500g
    ・小麦粉：大さじ3
    ・揚げ油：適量
    ・
    ・
    EOS
  end

  def instruction_placeholder
    <<-"EOS".strip_heredoc
    １.鶏肉に下味をつけるため、醤油、しょうが、にんにく、
    　塩、黒こしょうをボウルに混ぜます。
    ２.鶏肉を下味のボウルに入れてよく絡ませ、ラップで覆って
    　冷蔵庫で30分から1時間ほど寝かせます。
    ・
    ・
    EOS
  end

end
