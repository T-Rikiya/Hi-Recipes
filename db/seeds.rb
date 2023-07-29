# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(
  email:"admin@example.com", password:"password"
)

User.create([
  { name:"料理一郎", email:"mail1@example.com", password:"password" },
  { name:"料理二郎", email:"mail2@example.com", password:"password" },
  { name:"料理三郎", email:"mail3@example.com", password:"password" },
  { name:"料理四郎", email:"mail4@example.com", password:"password" },
  { name:"料理五郎", email:"mail5@example.com", password:"password" }
])

Recipe.create([
  { user_id: 1, title:"チキンカレー", body:"ジューシーなチキンとスパイスの絶妙なハーモニー。深い味わいがクセになる。",
  instruction:"野菜を切る：玉ねぎは薄切り、にんじんは輪切り、ジャガイモは一口サイズに切ります。

鍋に油を熱し、鶏肉を炒める：中火で鍋に油を熱し、鶏肉を加えて軽く焼きます。塩とこしょうを振って味をつけます。

野菜を加える：玉ねぎ、にんじん、ジャガイモを加えてさらに炒めます。

水を加える：野菜がしんなりしてきたら、水または鶏ガラスープを加えます。

煮込む：鍋を蓋で覆い、中火から弱火にして野菜と鶏肉が柔らかくなるまで煮込みます。時々かき混ぜながら、約15〜20分程度煮ます。

カレールーを加える：鍋にカレールーを加えて溶かし、とろみがつくまでさらに煮ます。カレールーの量は好みで調整してください。

器に盛り付け：ご飯の上にチキンカレーを盛り付けて完成です。",
ingredient:"鶏もも肉または鶏むね肉　500g（食べやすい大きさにカット）
玉ねぎ　1個（大きめの場合は半分）
にんじん　1本
ジャガイモ　2個
カレールー　市販のもの（お好みのブランドを選んでください）
水または鶏ガラスープ　500ml
油　大さじ2
塩　適量
こしょう　適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe1.png"), filename:"recipe1.png")},

  { user_id: 1, title:"肉じゃが", body:"優しい味わいの家庭料理。野菜とお肉が柔らかく煮込まれ、温かいご飯との相性が抜群。", instruction:"豚肉を一口大に切り、じゃがいもとにんじんは皮をむいて1cm角程度に切り、玉ねぎは薄切りにします。
鍋にサラダ油を熱し、豚肉を炒めます。

肉に火が通ったら、じゃがいもとにんじんを加え、さらに炒めます。

野菜に少し焼き色がついたら、みりんと砂糖を加え、弱火で煮詰めます。

だしと水を加えて醤油も入れ、蓋をして中火で煮ます。

野菜が柔らかくなり、味がしみ込んだら、玉ねぎを加えて更に煮ます。

玉ねぎが透明になったら完成です。お皿に盛り付けて、お好みで青ねぎなどをトッピングしてお召し上がりください。",
ingredient:"豚肉（または牛肉）：300g
じゃがいも：3個
にんじん：1本
玉ねぎ：1個
醤油：大さじ3
みりん：大さじ2
砂糖：大さじ1
だし：300ml
サラダ油：大さじ1
水：100ml",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe2.jpg"), filename:"recipe2.jpg")},

  { user_id: 1, title:"オムライス", body:"ふわふわの卵に包まれたケチャップライスが懐かしさを感じさせ、子供も大人も笑顔に。", instruction:"玉ねぎと鶏肉またはハムをみじん切りにします。

フライパンにサラダ油を熱し、玉ねぎを炒めます。

鶏肉またはハムを加えて炒め、ご飯を入れて全体を混ぜます。

ケチャップと塩を加え、さらに炒めます。

別のフライパンで卵を溶き、オムレツを作ります。

オムレツをご飯の上に乗せて完成です。",
ingredient:"卵：2個
ご飯：1膳分（約180g程度）
玉ねぎ：1個
鶏肉またはハム：適量
ケチャップ：大さじ2
塩：少々
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe3.jpg"), filename:"recipe3.jpg")},

  { user_id: 1, title:"豚汁", body:"家族の体を温める味わい。野菜とお肉が具材に溶け込み、ほっこり心温まる一品。", instruction:"こんにゃくは熱湯でさっとゆで、ざるにあげて水気を切り、一口大に切る。

じゃがいもとにんじんは皮をむき、1cm角程度の乱切りにする。

白菜は食べやすい大きさに切る。

ごぼうは皮をむいて短冊切りにして水にさらし、アクを抜く（お好みで入れる場合）。

長ねぎは斜め切りにする。

豚肉を一口大に切る。

鍋にサラダ油を熱し、豚肉を炒める。

豚肉に火が通ったら、じゃがいも、にんじん、ごぼうを加えて炒める。

野菜に少し焼き色がついたら、だし汁を加えて中火で煮る。

野菜が柔らかくなったら、白菜を加えてさらに煮る。

白菜がしんなりしたら、醤油、みりん、塩で味を調える。

最後に長ねぎを加えて煮立てば完成です。",
ingredient:"豚肉：150g
こんにゃく：1/2枚
じゃがいも：1個
にんじん：1本
白菜：4枚
ごぼう：1/2本（お好みで）
長ねぎ：1本
だし汁：600ml
醤油：大さじ2
塩：少々
みりん：大さじ1
サラダ油：適量
",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe4.jpg"), filename:"recipe4.jpg")},

  { user_id: 1, title:"エビチリ", body:"プリプリのエビが辛甘いソースと絶妙な相性。炒めた野菜と一緒に楽しむ、中華の風味。", instruction:"エビは背わたを取り、塩を振って下処理します。

ピーマンは種を取り除いて一口サイズに切ります。

にんにくと生姜をみじん切りにします。

フライパンにサラダ油を熱し、にんにくと生姜を炒めます。

エビを加えて炒め、色が変わったらピーマンを入れてさらに炒めます。

醤油、酒、砂糖、みりん、ケチャップを加えて全体を炒め合わせます。

塩で味を調えて完成です。",
ingredient:"エビ：300g
ピーマン：2個
にんにく：2片
生姜：1片
醤油：大さじ2
酒：大さじ1
砂糖：大さじ1
みりん：大さじ1
ケチャップ：大さじ1
塩：少々
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe5.jpg"), filename:"recipe5.jpg")},

  { user_id: 2, title:"麻婆豆腐", body:"ピリ辛な豆腐料理。豆腐とお肉の組み合わせが絶品で、ご飯が進む美味しさ。", instruction:"豆腐は一口大に切り、ネギは小口切りにします。

フライパンにサラダ油を熱し、合いびき肉を炒めます。

肉に火が通ったら、にんにくと生姜をみじん切りにしたものを加えて炒めます。

豆豉（豆板醤）と甜麺醤（テンメンジャン）を加え、香りが立つまで炒めます。

醤油と酒を加え、さらに炒めます。

水を加えて煮立たせ、砂糖と鶏がらスープの素を入れて味を調えます。

豆腐を加えて軽く混ぜ、豆腐に絡ませながら煮ます。

最後にネギを加えてごま油で風味をつければ完成です。",
ingredient:"豆腐：1丁（約300g）
合いびき肉（豚または牛）：150g
ネギ：1本
にんにく：2片
生姜：1片
豆豉（豆板醤）：大さじ1
甜麺醤（テンメンジャン）：大さじ1
醤油：大さじ1
酒：大さじ1
砂糖：小さじ1/2
鶏がらスープの素：小さじ1/2
水：150ml
ごま油：小さじ1
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe6.jpg"), filename:"recipe6.jpg")},

  { user_id: 2, title:"酢豚", body:"サクサクのお肉と甘酸っぱいソースが爽やか。野菜との組み合わせが良く、子供も大好き。", instruction:"玉ねぎとにんじんは一口サイズに切ります。豚肉も食べやすい大きさに切ります。

ボウルに醤油、酢、砂糖、塩、こしょう、しょうが、にんにくを合わせてタレを作ります。

豚肉をタレに漬け込み、片栗粉をまぶします。

フライパンにサラダ油を熱し、豚肉を揚げます。

別のフライパンにサラダ油を熱し、玉ねぎとにんじんを炒めます。

野菜がしんなりしたら、揚げた豚肉を加えてさらに炒めます。

タレを加えて全体を煮立たせます。

最後にグリーンピースとパイナップルを加えてさっと炒めれば完成です。",
ingredient:"豚肉（薄切り）：300g
玉ねぎ：1個
にんじん：1本
グリーンピース：適量
パイナップル缶：適量
醤油：大さじ3
酢：大さじ3
砂糖：大さじ2
塩：少々
こしょう：少々
しょうが（すりおろし）：1片分
にんにく（すりおろし）：1片分
片栗粉：適量
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe7.jpg"), filename:"recipe7.jpg")},

  { user_id: 2, title:"マカロニグラタン", body:"とろけるチーズとホワイトソースが絶品。具材が溶け込んで、濃���な味わいが魅力。", instruction:"マカロニを表示通りの時間茹でておきます。

鶏肉（またはベーコン・ハム）を小さく切ります。玉ねぎもみじん切りにします。

フライパンにバターを溶かし、玉ねぎを炒めます。

鶏肉（またはベーコン・ハム）を加えて炒め、火が通ったらグリーンピースも入れます。

小麦粉を振りかけてから、牛乳を少しずつ加えながら、とろみがつくまで混ぜます。

塩とこしょうで味を調えます。

マカロニとソースを混ぜ合わせ、耐熱容器に移します。

チェダーチーズを上に散らし、パン粉をふりかけます。

オーブンで180°Cで15分程度焼いて、チーズが溶けてこんがりとした色になったら完成です。",
ingredient:"マカロニ：150g
鶏肉（またはベーコン・ハム）：100g
玉ねぎ：1個
グリーンピース：適量
バター：大さじ1
小麦粉：大さじ1
牛乳：400ml
塩：少々
こしょう：少々
チェダーチーズ（または溶けるタイプのチーズ）：100g
パン粉：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe8.jpg"), filename:"recipe8.jpg")},

  { user_id: 2, title:"ハンバーグ", body:"ジューシーでボリューム満点。ソースとの相性も抜群で、家族の大好物。", instruction:"玉ねぎをみじん切りにします。

ボウルにパン粉と牛乳を入れ、ふんわりするまで混ぜます。

パン粉に牛乳がしみ込んだら、合いびき肉、みじん切りにした玉ねぎ、卵、ケチャップ、ウスターソース、塩、こしょうを加えてよく混ぜます。

手のひらに少量のサラダ油をつけて、肉を丸めてハンバーグの形に整えます。

フライパンにサラダ油を熱し、ハンバーグを焼きます。両面に焼き色がつくまで中火で焼き、その後蓋をして中火で焼き続けます。

火が通ったら完成です。",
ingredient:"合いびき肉（牛・豚の混合でも可）：500g
玉ねぎ：1個
パン粉：大さじ3
牛乳：大さじ3
卵：1個
ケチャップ：大さじ2
ウスターソース：大さじ1
塩：小さじ1/2
こしょう：少々
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe9.jpg"), filename:"recipe9.jpg")},

  { user_id: 2, title:"だし巻き卵", body:"ふわふわの卵にだしの風味が絶妙。朝食やお弁当に愛される、家庭の味。", instruction:"ボウルに卵を割り入れ、だし汁、砂糖、塩を加えてよく混ぜます。

フライパンにサラダ油を熱し、卵液を流し入れます。

周囲が少し固まってきたら、箸や竹串を使って中心から巻いていきます。

円形に巻けたら、巻き終わりをフライパンの端に寄せ、さらに卵液を流し込みます。

再び巻いていきます。これを繰り返して、卵液がなくなるまで巻きます。

全体的にしっかりと巻けたら、火を止めてしばらく蒸らせば完成です。",
ingredient:"卵：3個
だし汁：100ml
砂糖：小さじ1
塩：小さじ1/2
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe10.jpg"), filename:"recipe10.jpg")},

  { user_id: 3, title:"カルボナーラ", body:"濃厚なクリームソースがたまらない。ベーコンと黒コショウの風味が絶品。", instruction:"スパゲッティを表示通りの時間茹で、茹で汁を取っておきます。

ベーコンは一口大に切ります。

ボウルに卵黄と生クリームを入れ、よく混ぜます。

パルメザンチーズを加えてさらに混ぜます。

フライパンにサラダ油を熱し、ベーコンを炒めます。

ベーコンが香ばしくなったら、茹でたスパゲッティを加えて炒めます。

パスタとベーコンに油が絡んだら、火を止めて塩をふり、黒こしょうを振りかけます。

ボウルに用意した卵黄と生クリームの混合液を加え、すぐによく混ぜます。

ソースが絡んだら完成です。
",
ingredient:"スパゲッティ：200g
ベーコン：100g
卵黄：2個
生クリーム：100ml
パルメザンチーズ（またはグラナパダーノ）：50g
黒こしょう：適量
塩：少々
サラダ油：適量
",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe11.jpg"), filename:"recipe11.jpg")},

  { user_id: 3, title:"ペペロンチーノ", body:"オリーブオイルとニンニクの風味が爽やか。シンプルながらパンチのある一品。", instruction:"スパゲッティを表示通りの時間茹で、茹で汁を取っておきます。

フライパンにオリーブオイルを熱し、にんにくと唐辛子を入れて弱火でじっくりと炒めます。

にんにくが香り始めたら、火を止めておきます。

茹でたスパゲッティをフライパンに移し、弱火でさらに炒めます。

塩をふり、パスタにオリーブオイルとにんにくが絡むように炒めます。

仕上げにパセリを加えて炒め、火を止めます。

器に盛り付けし、パルメザンチーズをたっぷりとかければ完成です。",
ingredient:"スパゲッティ：200g
オリーブオイル：大さじ3
にんにく：2片（薄切り）
唐辛子（乾燥またはフレーク）：小さじ1/2（お好みで調整）
パセリ：適量（みじん切り）
塩：少々
パルメザンチーズ（またはペコリーノチーズ）：適量
",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe12.jpg"), filename:"recipe12.jpg")},

  { user_id: 3, title:"親子丼", body:"ふわふわの卵と甘辛い鶏肉が絶妙に絡んで絶品。家族で幸せな食卓を楽しむ。", instruction:"フライパンにサラダ油を熱し、玉ねぎを炒めます。

玉ねぎがしんなりしてきたら、鶏もも肉を加えて炒めます。

鶏もも肉に火が通ったら、だし、醤油、みりん、砂糖を加えて混ぜます。

一度沸騰したら、火を弱めて5分ほど煮込みます。

卵をボウルに割り入れ、軽く混ぜます。

煮込んだ鶏もも肉の上に卵を注ぎ、蓋をして卵が半熟になるまで加熱します。

卵が半熟になったら火を止め、ご飯の上にかけて青ねぎをトッピングすれば完成です。",
ingredient:"鶏もも肉：300g（皮と骨を取り除いて一口大に切る）
卵：3個
玉ねぎ：1個（薄切り）
だし：200ml
醤油：大さじ3
みりん：大さじ3
砂糖：大さじ2
サラダ油：適量
青ねぎ：適量（みじん切り）
",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe13.jpg"), filename:"recipe13.jpg")},

  { user_id: 3, title:"とんかつ", body:"カリッと揚げたジューシーな豚肉が最高。ソースとキャベツの相性が抜群で満足度高。", instruction:"豚ロース肉に塩とこしょうをふります。

小麦粉を薄くまぶし、余分な粉をはたき落とします。

別のボウルに卵を割り入れ、よく混ぜます。

豚肉を卵液にくぐらせてから、パン粉をしっかりとまぶします。

フライパンにサラダ油を熱し、中火で揚げます。両面がきれいな色になるまで揚げます（約3〜4分ずつ）。

きれいな色に揚がったら、キッチンペーパーに取り出して余分な油を取ります。",
ingredient:"豚ロース肉（薄切り）：4枚
塩：少々
こしょう：少々
小麦粉：適量
卵：2個
パン粉：適量
サラダ油：適量",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe14.jpg"), filename:"recipe14.jpg")},

  { user_id: 3, title:"鮭のホイル焼き", body:"香り豊かなホイル焼き。鮭の脂が程よく絡み、健康的で美味しい", instruction:"オーブンを180°Cに予熱します。

アルミホイルを2枚程度に切り、鮭フィレをのせます。

鮭の上にレモン、にんにくを薄切りにしたものをのせ、塩とこしょうをふります。

オリーブオイルをまわしかけ、バターを小さじ1程度分をのせます。

アルミホイルを閉じてしっかりと封をし、オーブンで15〜20分程度焼きます。

焼き上がったら、器に盛り付けてパセリをかければ完成です。",
ingredient:"鮭フィレ（皮付き）：2切れ
レモン：1/2個（薄切り）
にんにく：2片（薄切り）
塩：少々
こしょう：少々
オリーブオイル：大さじ1
バター：小さじ1
パセリ：適量（みじん切り）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe15.jpg"), filename:"recipe15.jpg")},

  { user_id: 4, title:"クリームシチュー", body:"優しい味わいのホワイトソースに野菜が溶け込み、心温まる味わい。", instruction:"フライパンにオリーブオイルとバターを熱し、鶏もも肉を炒めます。

色が変わったら、玉ねぎを加えて炒め、透明になるまで炒めます。

じゃがいもとにんじんを加えて炒めます。

シチュールーを加え、よく混ぜます。

牛乳と水を少しずつ加えながら、シチュールーが溶けるまで混ぜます。

塩とこしょうで味を調えます。

野菜と肉が柔らかくなるまで中火で煮込みます。

とろみがついたら火を止め、器に盛り付けす��ば完成です。",
ingredient:"鶏もも肉：300g（一口大に切る）
じゃがいも：2個（一口大に切る）
にんじん：1本（一口大に切る）
玉ねぎ：1個（薄切り）
シチュールー：1袋（市販のシチュールーを使用）
牛乳：600ml
水：400ml
塩：適量
こしょう：適量
バター：大さじ1
オリーブオイル：大さじ1",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe16.jpg"), filename:"recipe16.jpg")},

  { user_id: 4, title:"月見うどん", body:"トロトロの卵がうどんに絡み、懐かしい味わい。栄養満点で優しい味わい。", instruction:"だしを鍋に入れて温めます。

だしが温かくなったら、みりん、醤油、塩を加えて味を調えます。

かまぼこを細切りにし、鍋に加えます。

卵を割り入れ、軽く混ぜながら火をつけます。

卵が半熟状になったら、うどんを鍋に入れて温めます。

うどんが温まったら、器に盛り付け、青ねぎをかければ完成です。",
ingredient:"うどん：2玉
だし：600ml
みりん：大さじ2
醤油：大さじ2
塩：小さじ1/2
かまぼこ：2枚（細切りにする）
卵：2個
青ねぎ：2本（みじん切り）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe17.jpg"), filename:"recipe17.jpg")},

  { user_id: 4, title:"ぶりの照り焼き", body:"ふっくら焼き上げた鰤の身が贅沢な味。甘辛いタレの風味が絶品。", instruction:"醤油、みりん、砂糖、しょうが、酒を合わせて照り焼きのタレを作ります。

鰤の切り身にタレを塗り、15〜20分程度漬け込みます。

フライパンにサラダ油を熱し、鰤の切り身を両面焼きます。

タレを残しておいた鍋に入れ、弱火でタレを煮詰めます。

鰤が焼き上がったら、皿に盛り付け、煮詰めたタレをかけます。

オプションで白ごまと青ねぎをかければ完成です。",
ingredient:"鰤の切り身：2切れ
醤油：大さじ2
みりん：大さじ2
砂糖：大さじ1
しょうが：1片（すりおろす）
酒：大さじ1
サラダ油：適量
白ごま：適量（オプション）
青ねぎ：適量（みじん切り）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe18.jpg"), filename:"recipe18.jpg")},

  { user_id: 4, title:"ナスの煮浸し", body:"優しい味わいで、煮汁が染み込んだナスの食感がたまらない。", instruction:"ナスを熱湯でさっと茹で、ざるにあげて水気を切ります。

鍋にだし、醤油、みりん、砂糖、しょうがを入れて混ぜ、火にかけます。

調味液が沸騰したら、ナスを加え、蓋をして弱火で煮ます。

ナスが柔らかくなったら、火を止めて長ねぎを加えてさっと煮ます。

仕上げにごま油を回しかけ、白ごまをかければ完成です。",
ingredient:"ナス：2本（皮をむき、縦に半分に切り、斜めに切る）
だし：200ml
醤油：大さじ2
みりん：大さじ2
砂糖：大さじ1
しょうが：1片（薄切り）
長ねぎ：1本（斜め薄切り）
ごま油：小さじ1
白ごま：適量（オプション）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe19.jpg"), filename:"recipe19.jpg")},

  { user_id: 4, title:"チーズリゾット", body:"とろけるチーズがアクセント。クリーミーで濃厚な味わいが心地よい。", instruction:"鍋にバターを入れて溶かし、玉ねぎとにんにくを炒めます。

米を加えてさらに炒め、全体にバターが絡まるようにします。

白ワインを加えてアルコールを飛ばします。

だしを少しずつ加え、中火で煮込みます。米が柔らかくなるまで煮てください。

生クリームを加え、とろみがつくまで煮詰めます。

最後にチーズを加え、とろりとするまで混ぜながら煮込みます。

塩とこしょうで味を調えます。

盛り付けたら、オプションでパセリをかけて完成です。",
ingredient:"米（リゾット用の短粒米）：150g
玉ねぎ：1個（みじん切り）
にんにく：1片（みじん切り）
白ワイン：50ml（なければ水で代用可）
だし：600ml（もしくは水）
生クリーム：50ml
バター：大さじ2
グラナパダーノチーズまたはパルメザンチーズ：50g（お好みで調整）
塩：少々
こしょう：少々
パセリ：適量（みじん切り、オプション）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe20.jpg"), filename:"recipe20.jpg")},

  { user_id: 5, title:"コーンポタージュ", body:"甘みとコクが絶妙。温かいスープが心をほっこりさせてくれる。", instruction:"鍋にバターを溶かし、みじん切りにした玉ねぎを炒めます。

玉ねぎが透明になったら、一口大に切ったじゃがいもを加えて炒めます。

コーン缶を水切りし、鍋に加えてさらに炒めます。

牛乳を加え、じゃがいもが柔らかくなるまで中火で煮込みます。

煮込んだらコンソメキューブを加え、塩とこしょうで味を調えます。

鍋を火からおろし、手持ちのミキサーやブレンダーで滑らかになるまで撹拌します。

カップなどに注ぎ、オプションでパセリをかけて完成です。",
ingredient:"コーン缶：200g（水煮のもの）
玉ねぎ：1/2個（みじん切り）
じゃがいも：1個（一口大に切る）
バター：大さじ1
牛乳：400ml
コンソメキューブ：1個
塩：少々
こしょう：少々
パセリ：適量（みじん切り、オプション）",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe21.jpg"), filename:"recipe21.jpg")},

  { user_id: 5, title:"ビーフカレー", body:"ジューシーな牛肉とスパイスの調和が最高。濃厚な味わいで食欲を刺激し、心温まる一品。", instruction:"鍋にサラダ油を熱し、牛肉を炒めます。

色が変わったら、玉ねぎを加えて炒め、透明になるまで炒めます。

にんじんとじゃがいもを加えてさらに炒めます。

トマト缶を加え、さらに煮込みます。

水またはだしを加えて煮込みます。

カレールーを入れて溶かし、中火で煮込みます。

野菜が柔らかくなり、カレーがとろみがついたら、塩とこしょうで味を調えます。

スパイスで風味を加える場合は、お好みで適量を加えます。

器に盛り付けて、ご飯と一緒に召し上がれます。",
ingredient:"牛肉（カレー用）：400g（一口大に切る）
玉ねぎ：2個（薄切り）
にんじん：2本（一口大に切る）
じゃがいも：2個（一口大に切る）
カレールー：200g（市販のルーを使用）
トマト缶：1缶（400g程度）
水またはだし：800ml
サラダ油：大さじ2
塩：少々
こしょう：少々
スパイス（カレー粉、クミン、コリアンダー、ターメリックなど）：お好みで",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/recipe22.jpg"), filename:"recipe22.jpg")}
])
