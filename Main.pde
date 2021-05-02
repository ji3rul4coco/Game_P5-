
boolean ScriptC = true;
String [] ScriptAW = new String[300];

int ScreenSet = 0;

//ScreenChange Random Set
int [] ChanceTypeSelect = new int[2];
boolean ChangeRun = false;
int [] CahangeRect = new int[2];
boolean ChangeBegin = false;
boolean MousePressedOff = true;
boolean []updateOnce = new boolean[2];

//StartPage Random Set
PImage StartPageBG;
PImage [][] StartPageIcon = new PImage [6][2];
int [] StartPageIconWH = new int[2];
int [] StartPageIconY = new int [6];
int StartPageIconX = 1050;
boolean [] CheckStartPageIcon = new boolean [6];
boolean CheckExitOn = false;
PImage ExitCheckTable;
PImage [][] ExitCheck = new PImage [2][2];
boolean [] ExitCheckIcon = new boolean[2];

//GamePage Random Set
PImage [] ScriptTable = new PImage[2]; //Table = 1201*334 Name = 281*89
int []ScriptTableWH = new int[2] ;
int CheckToNext = 0;
PImage []BG = new PImage[7];
int BGNext = 0;
String [] ChangeScenesOn = { "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" };
String [] ScriptText;// = { "（轉場動畫）" , "初入六月，童實野市褪去春季微涼的同時，也迎來了梅雨季節的過渡期，濕熱得讓人心煩意躁。" , "而迎著這般的空氣奔跑，我的心情可謂是差到極點。" , "真是在最糟糕的時候轉學啊……。" , "我，＿＿＿＿，一個在古怪的時節搬到童實野市的現役高二生。" , "今天也是我在新學校的第一天。而上課時間已經過了半小時。" , "為何我會淪落到如此境地？與我那對樂天派的父母脫離不了關係。" , "" , "母：（暱稱），趕快收拾一下行李，我們明天要搬家囉！" , "蛤──？！突然地說什麼胡話啊？" , "母：爸爸的工作突然調動，我也沒辦法呀。收拾一下，明天我們就是本島人囉！" , "不對，這怎麼看都不正常吧？你們可不可以有點戒心啊！" , "……" , "以上，便是我被趕鴨子上架轉學的全部過程。從被通知搬家到轉入新學校，整個流程不過三天。" , "我為一家三口的命運憂慮了大半宿，直至後半夜才入睡。入睡後還陷入奇怪的夢境，無法好好休息，導致了如今的狼狽。" , "氣喘吁吁地奔跑，似乎是超過了我平常的體能極限，視線所及處有些虛化。但我的意識仍然清醒。甚至活躍地吐槽這段被虛化的上學路，像極了夢境中的場景。" , "突然來到一片迷霧中，半隱半現的場地讓我有一種既視感。彷彿不久前才看過。明明這不是我熟悉的景色。" , "我摸索著牆壁，走向前方的未知。" , "不知道走了多久，聽到前方有一陣爭執的聲音。" , "我盡力放輕自己的腳步，謹慎地向聲源處前行。" , "（出現剪影）" , "……我無法忍受了！吶，我們一起逃離吧？" , "抱歉，我很想幫助你，可以先告訴我發生了什麼嗎？" , "……啊啊，果然又是這樣嗎……該死該死該死該死該死該死該死該死該死該死" , "什麼狀況？私奔現場？" , "我愣住，沒仔細注意，腳一滑。鞋底與地面磨擦而起的刺耳聲音，引起了對話二人的注意。" , "是誰？" , "他們找準了方向，向我的方向走來。" , "我拔腿就跑。" , "背後遠遠傳來歇斯底里的女聲。" , "又是他，又是他……滾出這座城市啊……" , "（轉場動畫）" , "這個夢境彷彿恐怖故事的開端。雖然某些細節已經隨著起床時間的過去慢慢淡忘，但那種真實感，還是令我難以忘懷。" , "總覺得，這個童實野市有點奇怪啊。" , "" , "邊思考邊奔跑，視線沒牢牢注意前方。很快，我便因為自己的不守規矩，遭到了報應。" , "（撞擊音效）" , "痛痛痛……抱歉抱歉，是我沒注意到，你還好嗎？" , "──一點都不好！" , "洪亮的聲音震得我一愣，我趕緊看向受害者。" , "第一眼，我只看到一片結實的胸膛。抬了老半天的頭，才看到對方盛怒的臉。" , "那是一張混血兒般稜角分明的臉龐，精緻的五官因為憤怒而緊緊皺在一起，也不損壞一絲美感。" , "這應該是近期我見過最好看的人類了吧。" , "看看他身上的裝扮，雖然身上一堆違禁品，但看制服，應該是我即將入學學校的學生。" , "你居然敢踩髒我的白鞋？本大爺如此狼狽，怎麼進得了校門，啊？" , "看來還是個王子病呢。" , "非常抱歉！後續我會賠償的！" , "誰管以後了？我說的是現在，現、在！" , "由於我的肇事人身分，加上對方長相值得包容的份上，我還是繼續向他致歉。" , "對不起，我有點趕時間！不然，我留下我的資料，讓您後續追責？" , "不行，你要把我的鞋弄乾淨了才能走" , "如果這是乙女遊戲的話，我現在對這個金髮男的好感應該已經到底了吧。" , "無視金髮男的叫囂，我拿出便條紙，快速的在紙上寫下我的姓名、手機號碼，毫不猶豫地黏在金髮男的胸口，接著收好東西，拔足狂奔。" , "──抱歉了，我會負責的，但不是現在。" , "……蛤？" , "＿＿＿？你居然敢羞辱我──傑克˙阿特拉斯？" , "休想要我放過你！" , "金髮男──傑克˙阿特拉斯，莫名其妙地緊追在後。" , "要是被追上了，我今天就不用上學了。" , "開學第一天即翹課，我不想成為這樣的校園名人啊。" , "他的大長腿帶給我十足的壓力。為了不讓悲劇發生，我只能跑得更賣力。" , "我跟這個城市相性不合啦──！" , "（轉場動畫）" , "…" , "……" , "跟陌生人在大街上競速，不久，便抵達了校門口。" , "一直在我身後喊個不停的金髮男聲音逐漸消停。" , "我鬆了一口氣，也不敢回頭關注他的狀況，便想直直地衝向校門。" , "安全抵－－" , "喂喂，那邊遲到的同學，該停下來了吧？姓名班級學號報上啊。" , "還有你，傑克！不要給我偷溜！" , "擋在我的上學路之前的，是個長相清秀的男孩。" , "話說這所學校目前遇到的學生水準都蠻高的。" , "煩死了，我有不得不請假的理由啦。" , "呵，我看又是一些無關緊要的小事吧。" , "眉眼清秀的男孩面上露出譏諷，接著轉過頭來瞪著我。" , "同學，你看起來很面生，平時一定很乖吧。" , "是不是被這個白痴給連累的啊？" , "我才是受害者好嗎！" , "缺席率40%確定留級的人不要跟我說話啦。" , "兩人彷彿很熟稔，也不知道能吵到什麼時候。" , "我趕在他們進入新一輪的爭執前，打斷了對話。" , "你好，我是新生。想請問一下同學教師辦公室怎麼走。" , "我在他的臂膀上看到風紀委員的臂套，看來應該是可以詢問的吧。" , "轉學生……喔，原來是我們班的。我晚點帶你去學生會辦公室。" , "至於你，傑克，就給我去愛校服務吧！" , "（轉場動畫）" , "…" , "……" , "跟傑克分開後，一下子安靜了很多。雖然這人在離開前還放話說會找我算帳，很讓人不安啦。" , "而風紀委員也在傑克離開後，變得和軟許多，甚至看起來有些陽光可愛。" , "不用理剛剛那人啦，他是高三的，平常不太會有交集。" , "謝謝……很抱歉給你添麻煩了。" , "不會啦，未來的同學。" , "忘了介紹，我是克羅˙霍根，跟你是一個班的。話說你知道自己的班級嗎？" , "我搖了搖頭。入學太匆忙，要不是我太過堅持，不然我甚至拿不到校服，只能便衣入校。" , "哈，那我不就是提前暴雷嗎？" , "克羅應該是看到我的緊張、不自在，用各種學校的資訊還有一些隱密的小事來填補路程上的沉默。" , "他不是很幽默，但有一種奇特的氣質在，我忍不住沉浸在他的趣聞逸事中，沒注意到前方。" , "於是今天的第二次意外發生了。" , "好險這次只是肩膀與迎面走來的人有些擦撞。" , "抱歉，我剛剛沒……" , "沒關係。" , "清冽如泉的聲音在耳邊炸開，冷得我一個哆嗦。" , "我抬頭看向今天的第二個受害者，看到一張清俊的臉，面上的表情如語調一般平靜無波。" , "他似乎覺得沒什麼大不了，對我點了點頭，接著便和身邊的克羅打招呼。" , "克羅，早安。" , "喔！早啊，遊星。難得會在學校看到你呢。" , "最近不會請假了。抱歉，之前造成你的困擾。" , "寒暄完，見我還盯著他，身體似乎僵硬了一瞬，便冷著臉快步離開。" , "啊，我好像太失禮了。" , "但我實在無法控制。我還在壓抑著其他更冒犯的想法。" , "明明是陌生的容貌，我卻總有一種奇妙的熟悉感。明明這樣冷峻的五官，若曾見過，我一定難以忘懷吧。" , "心臟的鼓譟聲壓不下，身體彷彿被操縱般，十分陌生。" , "我該不會是戀愛腦吧。" , "（轉場動畫）" , "＿＿＿！＿＿＿！" , "……啊？怎麼了嗎？" , "你都看傻眼了還問我怎麼了……怎麼，對剛剛的人有興趣啊？" , "……嘛，某種意義上來說，算是吧。" , "……" , "嘖嘖嘖，我還以為你是乖孩子呢。第一天上學就大遲到，還想早戀，我看未來我們會很熟悉了。" , "……他是好人，但話有點太多了。" , "自來熟的克羅嘴上說著不贊同，卻還是緩緩說出對方的資訊。" , "他是跟我們同級的不動遊星，號稱是本校智商最高的人。" , "基本上是個友善的人，不過因為很少跟人交流的關係，被叫成「冰山王子」，簡直莫名其妙。" , "這到底是什麼奇怪的學校啊。還有王子封號，既視感太強烈了吧。" , "該不會還有什麼四大王子、然後全校女生都是他們的後援會吧。" , "不是，總不會還有什麼王子後援會吧？" , "嘛，下課時間你就知道了。" , "現在的漫畫也不敢這麼演吧。" , "本想對克羅吐槽，轉頭我卻看見他微妙的表情。" , "我有了一個大膽的想法。" , "我說，克羅，你是什麼王子啊？" , "克羅彷彿被驚嚇的貓，偏稚氣的五官倒豎，卻只會讓人覺得可愛。" , "真好奇他是怎麼維護風紀的呢？" , "我怎麼可能啊。開玩笑也要有邏輯啦。" , "可是你很可愛啊。" , "……不會是可愛王子吧。" , "你的取名品味太糟糕了。" , "（轉場動畫）" , "…" , "……" , "閒聊間，學生會辦公室也快抵達了。" , "明明是第一次來，我卻遠遠地能一眼看出哪間教室是目的地。實在是，學生會辦公室的存在感太搶眼了。" , "看起來便造價不斐的雕花木門，門兩側放了我不懂得欣賞的石雕，而門口鋪著紅色的絲絨地毯，一路向兩側延伸……。" , "這個風格也過分浮誇了。" , "這裡就是學生會辦公室了。本校的學生會長有點特別，但不是什麼壞人啦。" , "越解釋越讓人害怕。委員，矯枉過正了吧。" , "懷著這樣的心情，我推開了厚重的門──。" , "" , "入眼的場景沒有我想像中的浮誇。" , "卻也是十分傳統的，我會在戲劇中看到的豪宅書房。" , "一眼望去，便能看見正面對門口的原木辦公桌，桌後卻是旋轉皮椅的椅背。" , "按照過去半個小時，我從學校相關人員與環境吸收到的資訊來看，這個學生會長應該就坐在椅子上，然後等我旁邊的這個會長小弟呼喚──。" , "會長，我帶轉學生過來了喔。" , "如我所料，旋轉皮椅慢慢地轉過來了。" , "這學校戲劇化地異常，難道都沒有其他學生吐槽過嗎？" , "胡思亂想中，我看著學生會長逐漸顯露在我眼前的側臉，一瞬間便忘卻了先前的疑問。" , "那是一張我讓我難以忘懷的臉。" , "細長的劍眉下是一雙凌厲的上斜眼，看起來攻擊性十足。" , "明明是這樣的眉眼，看著卻無端讓人安心。" , "即便刻印在腦海中的五官較之更為稚氣，我卻依稀能在長開後的臉龐上，依稀見到熟悉的影子。" , "歡迎來到滿足學園，我是鬼……" , "……京介大哥！好久不見！" , "???" , "沒想到這麼多年後，還能再次見到京介大哥。" , "我與鬼柳京介曾經是鄰居。在兒時，鬼柳京介就是我們那一區的孩子王，而我則是被大哥關照的小弟。" , "從那時起，我就很崇拜這個鄰居家的、彷彿什麼都會的哥哥。" , "只是後來他們一家好像是搬離了原本的城鎮？從某一天開始，他就消失在我的生活中了。" , "嗯？你認識我？" , "抱歉，我有點想不起來了呢。不如我們從現在開始認識吧。" , "我是鬼柳京介，如你所見，是滿足學園的學生會長。本校追求高度的學生自治，也可以說是我統治了整所學校喔？" , "會長，正經點啦。我等等還要帶轉學生去班上，長話短說。" , "啊啊，克羅還是一樣嚴厲呢。" , "總之，學校生活遇到了什麼困難就來找我喔？" , "我可是樂園的守護者呢。" , "就這樣啦。下次我會好好記住你的──＿＿＿。" , "（轉場動畫）" , "…" , "……" , "離開學生會辦公室後，我的心情可見的低落。" , "倒不是因為京介大哥忘了我們之間的回憶，實在是他最後的笑容讓我十分難受。" , "這不是我印象中的大哥會露出的表情。" , "──看似親切，卻保持著微妙的距離感。彷彿人在我永遠追不著的地方。" , "喂，＿＿＿，怎麼又在發呆了？被會長打擊到？害怕被針對？" , "這個你倒是不用擔心，會長那個人雖然很莫名其妙，但人還蠻好的。" , "……這個我知道啊。" , "只是，想知道更多那個人我不知道的事。" , "要怎麼在不引起克羅注意的情況下打聽呢？" , "……吶，克羅，會長應該相當受歡迎吧？" , "他又是哪種王子啊？" , "──抱歉了京介大哥，但在這種學校氛圍下，我只想得到這個問題了。" , "克羅似乎除了對自己的稱呼有點在意以外，對其他人的稱號倒是沒在掩藏，甚至有點幸災樂禍。" , "是親和王子喔。說什麼待人親切和藹可親的。哈，是在選里長嗎？" , "這樣算親切嗎。" , "經歷過鬼柳京介最柔軟的時期，我很難認同這個說法啊。" , "好了，教室就在這邊！你也抓緊時間認路，不要再愁眉苦臉了。" , "喂喂，拯救一下你的表情啦。我要開門囉？" , "謝謝關心，過保護委員長。" , "教室門逐漸拉開，不管我對這座城市的初心是什麼，我都將迎來新的校園生活。" , "……希望之後的每一天不會如今天一般戲劇性且波瀾壯闊吧。" , "（轉場轉暗）" , "END" };
String [] ScriptOn = { "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" };
String [] ScriptPeoPleName;// = { "" , "" , "" , "主人公" , "" , "" , "" , "" , "" , "主人公" , "" , "主人公" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "十六夜秋" , "不動遊星" , "十六夜秋" , "" , "" , "" , "" , "" , "" , "十六夜秋" , "" , "" , "" , "" , "" , "" , "主人公" , "傑克" , "" , "" , "" , "" , "" , "傑克" , "" , "主人公" , "傑克" , "" , "主人公" , "傑克" , "" , "" , "" , "傑克" , "傑克" , "傑克" , "" , "" , "" , "" , "主人公" , "" , "" , "" , "" , "" , "" , "" , "克羅" , "克羅" , "" , "" , "傑克" , "克羅" , "" , "克羅" , "克羅" , "傑克" , "克羅" , "" , "" , "主人公" , "" , "克羅" , "克羅" , "" , "" , "" , "" , "" , "克羅" , "主人公" , "克羅" , "克羅" , "" , "克羅" , "" , "" , "" , "" , "主人公" , "不動遊星" , "" , "" , "" , "不動遊星" , "克羅" , "不動遊星" , "" , "" , "" , "" , "" , "" , "" , "克羅" , "主人公" , "克羅" , "主人公" , "克羅" , "克羅" , "" , "" , "克羅" , "克羅" , "" , "" , "主人公" , "克羅" , "" , "" , "" , "主人公" , "" , "" , "克羅" , "主人公" , "主人公" , "克羅" , "" , "" , "" , "" , "" , "" , "" , "克羅" , "" , "" , "" , "" , "" , "" , "" , "克羅" , "" , "" , "" , "" , "" , "" , "" , "鬼柳京介" , "主人公" , "" , "" , "" , "" , "" , "鬼柳京介" , "鬼柳京介" , "鬼柳京介" , "克羅" , "鬼柳京介" , "鬼柳京介" , "鬼柳京介" , "鬼柳京介" , "" , "" , "" , "" , "" , "" , "" , "克羅" , "克羅" , "" , "" , "" , "主人公" , "主人公" , "" , "" , "克羅" , "" , "" , "克羅" , "克羅" , "主人公" , "" , "" , "" , "" };
String [] SpecialObject = { "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" };
String [] BGData = { "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "6" };



//PeoPle Random Set
int PeoPleMove , PeoPleTransparency; //PeoPleTransparency = 0; PeoPleMove = 0; on NextScript
boolean SiteStartSet = false; // SiteStartSet = true; on NextScript
int PeoPleCeilingDistance = 50;
PImage [][] PeoPlePicture = new PImage [7][11];
String [] PeoPle1Type = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "5" , "5" , "5" , "5" , "5" , "" , "" , "" , "" , "" , "5" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "2" , "2" , "2" , "2" , "2" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" };
String [] PeoPle1Face = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "0" , "" , "" , "" , "" , "" , "" , "" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "0" , "0" , "2" , "2" , "2" , "0" , "0" , "0" , "0" , "10" , "0" , "2" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "2" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "2" , "2" , "2" , "2" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "0" , "0" , "1" , "0" , "0" , "1" , "1" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "2" , "0" , "5" , "0" , "8" , "1" , "0" , "0" , "0" , "5" , "0" , "0" , "0" , "5" , "5" , "5" , "5" , "0" , "8" , "8" , "8" , "0" , "0" , "2" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "7" , "0" , "8" , "" , "" , "" , "" , "8" , "7" , "1" , "0" , "5" , "7" , "7" , "1" , "" , "" , "" , "" , "" , "" , "" , "5" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "1" , "0" , "0" , "9" , "5" , "0" , "0" , "0" , "" , "" };
String [] PeoPle2Type = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "6" , "6" , "6" , "6" , "6" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "2" , "2" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "" , "" , "" , "" , "" , "" , "" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" };
String [] PeoPle2Face = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "5" , "2" , "0" , "7" , "7" , "0" , "2" , "2" , "2" , "0" , "0" , "7" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "5" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "8" , "" , "" , "" , "" , "" , "" , "" , "5" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" };
String [] PeoPleMoveType  = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "2" , "3" , "3" , "3" , "11" , "" , "" , "" , "" , "" , "0" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "10" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "6" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "10" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "6" , "3" , "3" , "1" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "3" , "" , "" , "" , "" , "1" , "1" , "1" , "3" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" };
String [] PeoPleSite = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" };

  
      


//BackStartPage
boolean BackHomePage = false;

//Special Things

  //AutoRead
  int AutoReadRate = 40;
  int AutoReadGo = 0;
  boolean AutoReadOn = false;
  
  //SkipRead
  int SkipReadRate = 5;
  int SkipReadGo = 0;
  boolean SkipReadOn = false;  
  
  //Q.Save & Q.Load
  int [] QSaveData = new int[2];
  boolean QLoad = false;
    
  //ScriptIcon
  PImage [] ScriptIcon = new PImage[4];
  boolean [] CheckScriptIcon = new boolean[4];

void setup(){
  size(1280,960);
  CahangeRect[0] = 0;
  CahangeRect[1] = 1;
  updateOnce[0] = true;
  updateOnce[1] = false;
  rectMode(CORNER);
  ChanceTypeSelect[0] = 0;
  ChanceTypeSelect[1] = 5;
  
  //StartPage Data Load
  ScreenSet = 0;
  for (int i = 0 ; i < 6 ; i ++) CheckStartPageIcon[i] = false;
  for (int i = 0 ; i < 6 ; i ++) StartPageIconY[i] = 440+i*85;
  StartPageIconWH[0] = 200;
  StartPageIconWH[1] = 64;
  StartPageBG = requestImage("https://images.plurk.com/dYjiHD0lvrBmzwHabOVR8.jpg");
  StartPageIcon[0][0] = requestImage("https://images.plurk.com/3nG48dL4BczqBSGDaNmn7S.png");
  StartPageIcon[0][1] = requestImage("https://images.plurk.com/7dJUqqqS7ukzmOnN9IDPqw.png");
  StartPageIcon[1][0] = requestImage("https://images.plurk.com/5ly96HiSbOO0ZlnJiLQgxC.png");
  StartPageIcon[1][1] = requestImage("https://images.plurk.com/5ly96HiSbOO0ZlnJiLQgxC.png");
  StartPageIcon[2][0] = requestImage("https://images.plurk.com/4MgGUhsiDUyzLE9mEP6hV1.png");
  StartPageIcon[2][1] = requestImage("https://images.plurk.com/4MgGUhsiDUyzLE9mEP6hV1.png");
  StartPageIcon[3][0] = requestImage("https://images.plurk.com/dgKB35oU0Kux75Z4pX2vr.png");
  StartPageIcon[3][1] = requestImage("https://images.plurk.com/dgKB35oU0Kux75Z4pX2vr.png");
  StartPageIcon[4][0] = requestImage("https://images.plurk.com/6C20yKgQDfCXz8k9LnBPmX.png");
  StartPageIcon[4][1] = requestImage("https://images.plurk.com/40r1omhMCmxGDSXUbzpFOq.png");
  StartPageIcon[5][0] = requestImage("https://images.plurk.com/72SS5Lv02cPldbkVYxwm3V.png");
  StartPageIcon[5][1] = requestImage("https://images.plurk.com/U4WszNG4FPaVrPSYCLaDe.png");
  ExitCheckTable = requestImage("https://images.plurk.com/20hYH2I8G79nhpexUUK0Hv.png");
  ExitCheck[0][0] = requestImage("https://images.plurk.com/3NkFzQ2TTSdBgM5AYKfU05.png");
  ExitCheck[0][1] = requestImage("https://images.plurk.com/3TYLe5yPN4vSHX4qpThHBa.png");
  ExitCheck[1][0] = requestImage("https://images.plurk.com/1Y6SnxTZFKke3lVrN3pXuS.png");
  ExitCheck[1][1] = requestImage("https://images.plurk.com/6lHJOdHJPbQUjUKZfVpXRf.png");
  
  //GamePage Data Load
  for (int i = 0 ; i < PeoPleSite.length ; i++){ if(int(PeoPleSite[i]) == 0) PeoPleSite[i] = "Left"; if(int(PeoPleSite[i]) == 1) PeoPleSite[i] = "Mid"; if(int(PeoPleSite[i]) == 2) PeoPleSite[i] = "Right"; }
  ScriptTable[0] = requestImage("https://images.plurk.com/1sBuDpSBekd1qavVWaBrxo.png");
  ScriptTable[1] = requestImage("https://images.plurk.com/22tnG82FtnA8Wyp7WAbAyp.png");
  BG[0] = requestImage("https://images.plurk.com/5PSws6Cw56rDq8kCyDpEFN.jpg");
  BG[1] = requestImage("https://images.plurk.com/l3wjUmjCrC4thgYrK7Hyz.jpg");
  BG[2] = requestImage("https://images.plurk.com/5y3EB9uZpZjXTPkuRlNCpz.jpg");
  BG[3] = requestImage("https://images.plurk.com/2vKsDTzNnCJ4lwD8FHZw1B.jpg");
  BG[4] = requestImage("https://images.plurk.com/1QOCdgFOk5A1MVvWDYsZqw.jpg");
  BG[5] = requestImage("https://images.plurk.com/5e63dcE7Pc3XZa9iShEXJ0.jpg");
  BG[6] = requestImage("https://images.plurk.com/8yqcKwwuuDOcFF8h2BsyX.jpg");
  for (int i = 0 ; i < 7 ; i ++){
    for (int k = 0 ; k < 11 ; k ++){
      PeoPlePicture[i][k] = requestImage("https://images.plurk.com/8yqcKwwuuDOcFF8h2BsyX.jpg");
    } 
  }
  PeoPlePicture[0][0] = requestImage("https://images.plurk.com/eFRvsDYQLQfa0UFuv2Kyh.png");
  PeoPlePicture[0][1] = requestImage("https://images.plurk.com/1oKKXTslCIJVLco9GZSvN1.png");
  PeoPlePicture[0][5] = requestImage("https://images.plurk.com/7AR2gyR94zlZLwSC5mAdne.png");
  PeoPlePicture[0][7] = requestImage("https://images.plurk.com/32Xz9DdmgY1PCctRXB04ux.png");
  PeoPlePicture[0][8] = requestImage("https://images.plurk.com/5HdZfoT9u86JdtQvuPIBQT.png");
  PeoPlePicture[1][0] = requestImage("https://images.plurk.com/qUQqXo59K6oO0pgIud6Ne.png");
  PeoPlePicture[1][2] = requestImage("https://images.plurk.com/7HhrLq6Xi5L9jeQVmKQJl3.png");
  PeoPlePicture[1][5] = requestImage("https://images.plurk.com/26xUK1Tqfm9QBhMeiaI5yT.png");
  PeoPlePicture[1][10] = requestImage("https://images.plurk.com/4eB3Y3W47D6FEHkvVEae9s.png");
  PeoPlePicture[2][0] = requestImage("https://images.plurk.com/1HBlMGpVC60VyCp87NhEaI.png");
  PeoPlePicture[2][5] = requestImage("https://images.plurk.com/5m9rKT8gs3Cece598YmIUN.png");
  PeoPlePicture[3][0] = requestImage("https://images.plurk.com/7mArXZiT7K3xvwDA7Uf2XI.png");
  PeoPlePicture[3][1] = requestImage("https://images.plurk.com/AggdyBPCJFLnNwKcvPmQO.png");
  PeoPlePicture[3][2] = requestImage("https://images.plurk.com/UQzt5CLg9eKrhXM80FOSe.png");
  PeoPlePicture[3][5] = requestImage("https://images.plurk.com/2LBLisWReTF4frELdpo21r.png");
  PeoPlePicture[3][7] = requestImage("https://images.plurk.com/TallTbchlaRIEoVUkKFeY.png");
  PeoPlePicture[3][8] = requestImage("https://images.plurk.com/2Otp9f6UOeRHK1iJcT4FWk.png");
  PeoPlePicture[3][9] = requestImage("https://images.plurk.com/4hgi68bQBUu7Iv8StHZMn5.png");
  PeoPlePicture[5][0] = requestImage("https://images.plurk.com/3e0Bw5PmjuvKqL4y9bAcl3.png");
  PeoPlePicture[6][0] = requestImage("https://images.plurk.com/6AG1mjG6wbKsXhPiE4ao7A.png");
  ScriptTableWH[0] = 1201;
  ScriptTableWH[1] = 248;
  ScriptText[13] = ScriptText[13].substring(0,20) + "\n" + ScriptText[13].substring(20,ScriptText[13].length());
  ScriptText[14] = ScriptText[14].substring(0,25) + "\n" + ScriptText[14].substring(25,ScriptText[14].length());
  ScriptText[15] = ScriptText[15].substring(0,33) + "\n" + ScriptText[15].substring(33,ScriptText[15].length());
  
  //Special Things Update Data
  ScriptIcon[0] = requestImage("https://images.plurk.com/1YPNDSlUjEHjY50n1mu7WB.png");
  ScriptIcon[1] = requestImage("https://images.plurk.com/1LcMRpecLaf7ROrttLIFuw.png");
  ScriptIcon[2] = requestImage("https://images.plurk.com/5I5Ah4HJasU4j7hnbuDFvy.png");
  ScriptIcon[3] = requestImage("https://images.plurk.com/1x64ConJBJsIrTFER6KzL.png");
  QSaveData[0] = -1;
  QSaveData[1] = -1;
  
}


void draw(){
  
if (updateOnce[0]){
  if (ScreenSet == 0) StartPage();
  if (ScreenSet == 1) GamePage();

  if (ChangeBegin == true){
    if (ScreenSet == 0) ChanceTypeSelect[0] = 0;
    if (ScreenSet == 1 && BackHomePage == false && QLoad == false) ChanceTypeSelect[0] = 1;
    if (ScreenSet == 1 && BackHomePage == true && QLoad == false) ChanceTypeSelect[0] = 2;
    if (ScreenSet == 1 && QLoad == true && QSaveData[0] != -1){
      ChanceTypeSelect[0] = 3;
      CheckScriptIcon[1] = false;
    }
    ChangeRun = true;
  }
  
  if (ChangeRun){
    ScreenChange(ChanceTypeSelect[0],ChanceTypeSelect[1]);
  }
  
  

}
  
}

void StartPage1(){
 
  background(StartPageBG);
  image(StartPageIcon[0][1],StartPageIconX,StartPageIconY[0]);
  
}

void StartPage(){
  fill(0);
  tint(255, 255);
  image(StartPageBG,0,0);
  CheckToNext = 0;
  for (int i = 0 ; i < 6 ; i ++){
      if ((StartPageIconX < mouseX && mouseX < (StartPageIconX + StartPageIconWH[0]) && StartPageIconY[i] < mouseY && mouseY < (StartPageIconY[i]+StartPageIconWH[1]))) {
        if (CheckExitOn == false){
        image(StartPageIcon[i][1],StartPageIconX,StartPageIconY[i]);
        CheckStartPageIcon[i] = true;
        }
      }else{
        image(StartPageIcon[i][0],StartPageIconX,StartPageIconY[i]);
        CheckStartPageIcon[i] = false;
      }
    }  


  if(CheckExitOn) {
    fill(0,150);
     rect(0,0,width,height);
     image(ExitCheckTable,width/2-ExitCheckTable.width/2,height/2-ExitCheckTable.height/2);
     for(int i = 0 ; i < 2 ; i ++){
       if(mouseX > width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i && mouseX < width/2-30+(ExitCheck[i][0].width+60)*i && mouseY > height/2 && mouseY < height/2+ExitCheck[i][0].height){
        image(ExitCheck[i][1],width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i,height/2);
        ExitCheckIcon[i] = true;
       }else{
        image(ExitCheck[i][0],width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i,height/2);
        ExitCheckIcon[i] = false;
       }
       
     }
  }
  
  
}



void GamePage(){
  
  if (updateOnce[0]){
  //Background
  //People & Script
  if (CheckToNext < ScriptText.length-1){
    tint(255, 255); 
    background(BG[int(BGData[BGNext])]);
    BackHomePage = false;
    if(PeoPleMoveType[CheckToNext].length() > 0) CharaCterAnimateSelect(int(PeoPleMoveType[CheckToNext]),PeoPlePicture[int(PeoPle1Type[CheckToNext])][int(PeoPle1Face[CheckToNext])],PeoPlePicture[int(PeoPle2Type[CheckToNext])][int(PeoPle2Face[CheckToNext])],PeoPleSite[CheckToNext],10,15);
    if(int(ChangeScenesOn[CheckToNext]) == 1) ChangeBegin = true;  
    if(int(ScriptOn[CheckToNext]) == 1) {
      if(CheckToNext == 23) ScriptLoad(23,32,true,15);
      if(CheckToNext == 38 || CheckToNext == 56 || CheckToNext == 116) ScriptLoad(CheckToNext,48,true,15);
      if(CheckToNext != 23 && CheckToNext != 38 && CheckToNext != 56 && CheckToNext != 116) ScriptLoad(CheckToNext,32,false,0); 
    }
  }else if ( CheckToNext == ScriptText.length-1 ){
    ScriptLoad(ScriptText.length-1,32,false,0);
    if(ScriptC) {
      for (int i = 0 ; i < ScriptText.length ; i++){
        
        if(int(ScriptOn[i]) == 1) {
          if (ScriptPeoPleName[i].length() > 0){
          ScriptAW[i] = i + "@" + ScriptPeoPleName[i] + ":" + ScriptText[i];
          }else{
            ScriptAW[i] = i + "@" + ScriptText[i];
          }
          
          }
      }
      saveStrings("1.txt", ScriptAW);
      ScriptC = false;
      
    }
  }else{
    BackHomePage = true;
    ChangeBegin = true;
  }
  
  //Icon
  if(AutoReadOn == true && MousePressedOff == true) AutoScriptRead();
  if(SkipReadOn == true && MousePressedOff == true) SkipScriptRead();
  
   if (updateOnce[1] == false) updateOnce[1] = true; updateOnce[0] = false;
  }
  
  if (CheckToNext <= ScriptText.length-1 && int(SpecialObject[CheckToNext]) == 1) CheckToNext += 1; updateOnce[0] = true;
}

void mouseClicked(){
  if(MousePressedOff == true){
  //StartPage Key
    if(ScreenSet == 0){
      if(CheckStartPageIcon[0]) ChangeBegin = true; 
      if(CheckStartPageIcon[5]) CheckExitOn = true;
      if(ExitCheckIcon[0] == true && CheckExitOn == true) exit();
      if(ExitCheckIcon[1] == true && CheckExitOn == true) {CheckExitOn = false; ExitCheckIcon[1]=false;}
    }
  //GamePage Key
    if(ScreenSet == 1){
      if(CheckScriptIcon[0] == false && CheckScriptIcon[1] == false && CheckScriptIcon[2] == false && CheckScriptIcon[3] == false){ 
          CheckToNext += 1;
          BGNext = CheckToNext;
          SiteStartSet = true;
          PeoPleTransparency = 0;
          PeoPleMove = 0;
          AutoReadOn = false;
          SkipReadOn = false;
      }
      //GameIcon
      if (CheckScriptIcon[2]) {
        AutoReadOn =! AutoReadOn; 
        CheckScriptIcon[2] = false;
      }
      if (CheckScriptIcon[3]) {
        SkipReadOn =! SkipReadOn;
        CheckScriptIcon[3] = false;
      }
      if (CheckScriptIcon[0]) {
        QSaveData[0] = CheckToNext;
        QSaveData[1] = BGNext;
        CheckScriptIcon[0] = false;
      }
      if (CheckScriptIcon[1] == true && QSaveData[0]>0){
        QLoad = true;
        ChangeBegin = true;
        CheckScriptIcon[1] = false;
      }
    }
    updateOnce[0] = true;
  }
  
}

void ScreenChange(int ChangeType,int Rate){
 MousePressedOff = false;
 AutoReadOn = false;
 SkipReadOn = false;
 fill(0,0,0,CahangeRect[0] += CahangeRect[1]*Rate); 
 rect(0,0,width,height);
 if (CahangeRect[0] >= 255){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 255;
  if (ChangeType == 0) ScreenSet += 1; 
  if (ChangeType == 2) ScreenSet = 0;
  if (ChangeType == 1) BGNext += 1;
  if (ChangeType == 3) { 
    CheckToNext = QSaveData[0]; 
    BGNext = QSaveData[1]; 
  }
  
 }
 if (CahangeRect[0] <= 0){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 0;
  ChangeBegin = false;
  MousePressedOff = true;
  QLoad = false;
  ChangeRun = false;
  if (ChangeType == 1) CheckToNext += 1;
  if (ChangeType == 0) CheckToNext = 1;
 }
 
}

void ScriptLoad(int ScriptTextNumber,int ScriptTextSize,boolean DiffColor,int DiffColorBeginNumber){
  tint(255, 255*0.7);
  ScriptIconUpdate();
  image(ScriptTable[0],width/2-ScriptTableWH[0]/2,height-ScriptTableWH[1]-30);
  if(ScriptPeoPleName[ScriptTextNumber].length() > 0) image(ScriptTable[1],40,575);
  textSize(ScriptTextSize);
  fill(0);
  if(ScriptPeoPleName[ScriptTextNumber].length() > 0) text(ScriptPeoPleName[ScriptTextNumber],40+(ScriptTable[1].width/2)-(textWidth(ScriptPeoPleName[ScriptTextNumber])/2),575+89/2+ScriptTextSize/2);
  if (DiffColor && ScriptText[ScriptTextNumber].length() > DiffColorBeginNumber) {
    fill(255,0,0);
    text(ScriptText[ScriptTextNumber],width/2-ScriptTableWH[0]/2+50,height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
    fill(0);
    text(ScriptText[ScriptTextNumber].substring(0,DiffColorBeginNumber-1),width/2-ScriptTableWH[0]/2+50,height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
  }else{
    fill(0);
    text(ScriptText[ScriptTextNumber],int(width/2-ScriptTableWH[0]/2+50),height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
  }
  updateOnce[1] = false;
}

void CharaCterAnimateSelect(int SelectType,PImage PeoPleNumber1Select,PImage PeoPleNumber2Select,String SiteSet,int MRateSet,int TRateSet){
  switch (SelectType){
    
    case 0:
    OnePeoPle(PeoPleNumber1Select,SiteSet,true,TRateSet);
    break;
    case 1:
    OnePeoPle(PeoPleNumber1Select,SiteSet,false,TRateSet);
    break;
    case 2:
    TwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,true,TRateSet);
    break;
    case 3:
    TwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,false,TRateSet);
    break;
    case 6:
    OneToTwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,SiteSet,MRateSet,false,TRateSet);
    break;
    case 10:
    OnePeoPleOff(PeoPleNumber1Select,SiteSet,TRateSet);
    break;
    case 11:
    TwoPeoPleOff(PeoPleNumber1Select,PeoPleNumber2Select,TRateSet);
    break;
    
  }
  
}



void OnePeoPle(PImage PeoPleNumber,String Site,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void TwoPeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void ThreePeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void OneToTwoPeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,String Site,int Rate,boolean TransparencyOpen,int TransparencyRate){
  tint(255, 255);
  if (SiteStartSet){ 
    if (Site == "Left"){ PeoPleMove = 0; }else if (Site == "Mid"){ PeoPleMove = width/2-PeoPleNumber1.width/2; } 
    SiteStartSet = false; 
  }
  image(PeoPleNumber1,min(PeoPleMove,width-PeoPleNumber1.width),PeoPleCeilingDistance);
  PeoPleMove = min(width*2,PeoPleMove += Rate);
  if (PeoPleMove >= width-PeoPleNumber1.width){
    if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
    image(PeoPleNumber2,0,PeoPleCeilingDistance);
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; updateOnce[1] = true; }else{ MousePressedOff = false; updateOnce[1] = false; } }else{ MousePressedOff = true; updateOnce[1] = true;}
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}

void OneToThreePeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,String Site,int Rate,boolean TransparencyOpen,int TransparencyRate){
  tint(255, 255);
  if (SiteStartSet){ 
    if (Site == "Left"){ PeoPleMove = 0; }else if (Site == "Mid"){ PeoPleMove = width/2-PeoPleNumber1.width/2; } 
    SiteStartSet = false; 
  }
  image(PeoPleNumber1,min(PeoPleMove,width-PeoPleNumber1.width),PeoPleCeilingDistance);
  PeoPleMove = min(width*2,PeoPleMove += Rate);
  if (PeoPleMove >= width-PeoPleNumber1.width){
    if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
    image(PeoPleNumber2,0,PeoPleCeilingDistance);
    image(PeoPleNumber3,width/2-PeoPleNumber3.width/2,PeoPleCeilingDistance);
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; updateOnce[1] = true;}else{ MousePressedOff = false; updateOnce[1] = false;} }else{ MousePressedOff = true; updateOnce[1] = true;}
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}


void OnePeoPleOff(PImage PeoPleNumber,String Site,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}
void TwoPeoPleOff(PImage PeoPleNumber1,PImage PeoPleNumber2,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}
void ThreePeoPleOff(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}


void AutoScriptRead(){
    AutoReadGo += 1;
    if (AutoReadGo % AutoReadRate == 0) {CheckToNext = min(ScriptText.length-1,CheckToNext += 1); BGNext = CheckToNext;}
}

void SkipScriptRead(){
    SkipReadGo += 1;
    if (SkipReadGo % SkipReadRate == 0) {CheckToNext = min(ScriptText.length-1,CheckToNext += 1); BGNext = CheckToNext;}
}

void ScriptIconUpdate(){
 for (int i = 0 ; i < 4 ; i ++) {
   image(ScriptIcon[i],width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(4-i))-10*(3-i),height-ScriptTableWH[1]-ScriptIcon[i].height-40);
   if(MousePressedOff){
     if (mouseX > width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(4-i))-10*(3-i) && mouseX < width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(3-i))-10*(3-i) && mouseY > height-ScriptTableWH[1]-ScriptIcon[i].height-40 && mouseY < height-ScriptTableWH[1]-40){
       CheckScriptIcon[i] = true; 
     }else{
       CheckScriptIcon[i]=false;
       }
   }
 }
  
}
