--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: adjectives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.adjectives (id, kanji, hiragana, translation) FROM stdin;
1	きたない		smutsig
2	丈夫だ	じょうぶだ	slitstark
3	まっすぐだ		rak
4	かならず		säkert
5	詳しい	くわしい	detaljerad
6	薄い	うすい	tunn
7	ていねいだ		artig
8	へんだ		konstig
9	せいかくだ		korrekt
10	我慢強い	がまんづよい	tålig
11	明るい	あかるい	glad
12	きれい好きだ	きれいずきだ	renlig
13	安全だ	あんぜんだ	säker
14	自由だ	じゆうだ	fri
15	若い	わかい	ung
16	熱心だ	ねっしんだ	ivrig
17	悔しい	くやしい	
18	恥ずかしい	はずかしい	skamlig
19	得意だ	とくいだ	vara duktig på 
20	伝統的だ	でんとうてきだ	traditionell
21	気が弱い	きがよわい	vek
22	頑固だ	がんこだ	envis, trilsk
23	ちょうど		precis
24	きっと		säkerligen
25	あとで		senare
26	時々	ときどき	ibland
27	今	いま	nu
28		いい	bra
29	大きい	おおきい	stor
30	面白い	おもしろい	rolig
31	奇麗だ/	きれいだ	vacker/ren
32	元気だ	げんきだ	pigg
33	高い	たかい	hög/dyr
34	小さい	ちいさい	liten
35		つまらない	tråkig
36	安い	やすい	billig
37	悪い	わるい	dålig
38	忙しい	いそがしい	upptagen
39	美味しい	おいしい	god (smak)
40	厳しい	きびしい	sträng
41	大変だ	たいへんだ	jobbig/förskräcklig
42	難しい	むずかしい	svår
43	優しい/易しい	やさしい	snäll/enkel
44	明るい	あかるい	ljus
45	多い	おおい	många/flera
46	便利だ	べんりだ	behändig
47	欲しい	ほしい	att vilja ha
48	有名だ	ゆうめいだ	berömd
49		ゆっくり	långsamt
50		あまり med negation	inte mycket
51	嫌いだ	きらいだ	att tycka illa om
52	上手だ	じょうずだ	bra på (något)
53	好きだ	すきだ	att tycka om
54	少し	すこし	lite
55		ぜんぜん med neg.	aldrig
56	下手だ	へただ	dålig på (något)
57	不味い	まずい	smakar illa
58		よく	väl
59	暑い	あつい	het
60	安全だ	あんぜんだ	säker
61	寒い	さむい	kall
62	必要だ	ひつようだ	nödvändig
63		ちょっと	lite
64	暇だ	ひまだ	ledig
65		すぐ	omedelbart
66		すごい	förskräcklig
67		ぜひ	verkligen
68		まだ	(inte) än/fortfarande
69	危ない	あぶない	farlig
70	複雑だ	ふくざつだ	kompliserad
71	真面目だ	まじめだ	seriös
72	痛い	いたい	gör ont
73	寂しい	さびしい	ensam
74	眠い	ねむい	sömnig
75	真直ぐだ	まっすぐだ	rak
76	全部	ぜんぶ	allt
77		だめだ	dålig
78	特に	とくに	särsilkt
\.


--
-- Data for Name: misc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.misc (id, kanji, hiragana, translation, wordtype) FROM stdin;
1	～しか		bara	partikel
2	こんな			pronomen
3	そんな			pronomen
4	あんな			pronomen
5		あなた	(du/dig/din)	pronomen
6		いくら	hur mycket (kostar)	frågeord
7		いただきます	tack (före maten)	hälsning
8	お元気ですか	おげんきですか	hur står det till?	hälsning
9		ごちそうさまでした	tack för maten	hälsning
10		さようなら	Adjö/vi ses	hälsning
11		すみません	ursäkt/förlåt	hälsning
12		どこ	var	frågeord
13	初めまして	はじめまして	(nice to meet you)	hälsning
14		もういちどおねがいします	en gång till, tack	hälsning
15	何	なに	vad	frågeord
16	何時	なんじ	vilken tid	frågeord
17	歩いて	あるいて	gående	speciell form
18		だれ	vem	frågeord
19	一人で	ひとりで	ensam	speciell form
20		いつ	när	frågeord
21	毎日	まいにち	varje dag	speciell form
22		どう	hur	frågeord
23		～について	om (något)	
24		どんな	hurdan	frågeord
25	一番	いちばん	bäst (först på plats)	
26		どうして	varför	frågeord
27		どうやって	med hurdant sätt	frågeord
28		どのくらい	hur mycket	frågeord
29	歳	さい	ålder	
30		どうぞ	varsågod	
31	お願いします	おねがいします	be om hjälp	
32	今度	こんど	denna gång	
33		それじゃ	i så fall	konjunktion
34		ところで	förresten	konjunktion
35		まあまあ	så så/inte illa	interjektion
36	もう一度	もういちど	en gång till	
37		でも	men	konjunktion
38		おめでとう	grattis	interjektion
\.


--
-- Data for Name: nouns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nouns (id, kanji, hiragana, translation) FROM stdin;
1	油	あぶら	olja
2	道路	どうろ	väg
3	材料	ざいりょう	material
4	電気	でんき	elektricitet
5	こうさてん		vägkorsning
6	きせつ		säsong
7	せんじつ		här om dagen
8	計算	けいさん	kalkylering
9	現金	げんきん	kontant
10	経験	けいけん	erfarenhet
11	昼間	ひるま	dagtid
12	国籍	こくせき	nationalitet
13	～証	～しょう	certifikat för
14	理由	りゆう	orsak
15	ひあたり		tillgång till solljus
16	データ		data
17	～つもり		avsikt
18	免許	めんきょ	licens
19	家賃	やちん	hyra
20	人気	にんき	popularitet
21	しめきり		deadline
22	保険証	ほけんしょう	försäkringscertifikat
23	ビザ		visum
24	特急券	とっきゅうけん	biljett för express tåg
25	製品	せいひん	produkt
26	日付	ひづけ	datum
27	社長	しゃちょう	VD
28	報告書	ほうこくしょ	rapport
29	学会	がっかい	vetenskapig konferens
30	調査	ちょうさ	undersökning
31	身分証明書	みぶんしょうめいしょ	ID-handling
32	アレルギー		allergi
33	階段	かいだん	trappa
34	のど		hals
35	気分	きぶん	känsla
36	咳	せき	hosta
37	会議	かいぎ	möte
38	出張	しゅっちょう	affärsresa
39	おみまい		besök på sjuksäng
40	熱	ねつ	feber
41	夕方	ゆうがた	tidig kväll
42	書類	しょるい	dokument
43	電池	でんち	batteri
44	あじ		smak
45	におい		lukt
46	音	おと	ljud
47	情報	じょうほう	information
48	空	そら	himmel
49	自然	しぜん	natur
50	就職	しゅうしょく	anställning
51	研修	けんしゅう	träning
52	開発	かいはつ	utveckling
53	あいさつ	あいさつ	hälsning
54	人間関係	にんげんかんけい	relation med människor
55	健康	けんこう	hälsa
56	海外	かいがい	utland
57	表	ひょう	lista, tabell
58	証明書	しょうめいしょ	certifikat
59	非常口	ひじょうぐち	nödutgång
60	くつした	くつした	strumpor
61	予防注射	よぼうちゅうしゃ	spruta för förberedande syfte
62	希望	きぼう	hopp
63	未来	みらい	framtid
64	計画	けいかく	plan
65	奨学金	しょうがくきん	
66	故障	こしょう	stipendium
67	給料	きゅうりょう	lön
68	技術	ぎじゅつ	teknik
69	開発	かいはつ	utveckling
70	添付	てんぷ	bifogad
71	パスワード		
72	廊下	ろうか	korridor
73	入学試験	にゅうがくしけん	inträdesprov
74	裏	うら	baksida
75	神社	じんじゃ	Shinto religionens helgedom
76	予習	よしゅう	förberedelse inför lektion
77	工夫	くふう	knep, påhitt
78	石油	せきゆ	olja
79	工業	こうぎょう	industri
80	農業	のうぎょう	jordbruk
81	遅刻	ちこく	sen ankomst
82	行列	ぎょうれつ	kö
83	電子辞書	でんしじしょ	elektroniskt lexikon
84	赤ちゃん	あかちゃん	baby
85	商品	しょうひん	varor
86	交流	こうりゅう	utbyte
87	グラフ		
88	女性	じょせい	kvinna
89	音楽	おんがく	musik
90	化学	かがく	kemi
91	学生	がくせい	student
92	携帯	けいたい	mobil
93	研究員	けんきゅういん	forskare
94	研究室	けんきゅうしつ	labb
95	工学	こうがく	teknologi
96	趣味	しゅみ	hobby
97	先生	せんせい	lärare
98	専門	せんもん	specialitet
99	大学	だいがく	universitet
100	日本人	にほんじん	japan
101	留学生	りゅうがくせい	utbytesstudent
102	旅行	りょこう	resa
103	私	わたし	(Jag/mig/min)
104	牛乳	ぎゅうにゅう	mjölk
105	国	くに	land/nation
106	コーヒー	コーヒー	kaffe
107	住所	じゅうしょ	adress
108	名前	なまえ	namn
109	お茶	おちゃ	te
110	鍵	かぎ	nyckel
111	鞄	かばん	väska
112	牛肉	ぎゅうにく	nötkött
113	車	くるま	bil
114	財布	さいふ	plånbok
115	魚	さかな	fisk
116	新聞	しんぶん	dagstidning
117	定期券	ていきけん	månadskort
118	電子辞書	でんしじしょ	elektroniskt lexikon
119	鶏肉	とりにく	kycklingskött
120	パン	ぱん	bröd
121	豚肉	ぶたにく	fläsk
122	野菜	やさい	grönsak
123	朝	あさ	morgon
124		うち	hem
125	研究	けんきゅう	forskning
126	ご飯	ごはん	mat/kokt ris
127	ジュース	ジュース	juice
128	スーパー	すーぱー	snabbköp
129	勉強	べんきょう	studier
130	水	みず	vatten
131	論文	ろんぶん	vetenskaplig artikel
132	銀行	ぎんこう	bank
133	クラス	クラス	klass (skol-)
134	講義	こうぎ	föreläsning
135	午後	ごご	eftermiddag
136	午前	ごぜん	förmiddag
137	ゼミ	ゼミ	seminarium
138	デパート	でぱーと	varuhus
139	半	はん	halv
140	郵便局	ゆうびんきょく	postkontor
141	明日	あした	i morgon
142	家族	かぞく	familj
143	昨日	きのう	i går
144	区役所	くやくしょ	kommunkontor
145	自転車	じてんしゃ	cykel
146	地下鉄	ちかてつ	tunnelbana
147	電車	でんしゃ	tåg
148	友達	ともだち	vän
149	バス	ばす	buss
150	雨	あめ	regn
151	海	うみ	hav
152	去年	きょねん	förra året
153	今年	ことし	i år
154	今週	こんしゅう	denna vecka
155	誕生日	たんじょうび	födelsedag
156	花火	はなび	fyrverkeri
157	花見	はなみ	blom-skådning
158	美術館	びじゅつかん	konstmuseum
159	来週	らいしゅう	nästa vecka
160	来年	らいねん	nästa år
161		アパート	lägenhet
162		エアコン	air-conditioner
163	教室	きょうしつ	klassrum
164	公園	こうえん	park
165	交番	こうばん	kvaterspoliskonstor
166	子供	こども	barn
167		コンビニ	convinient store
168	事務室	じむしつ	kontor
169		トイレ	toalett
170	バス停	バスてい	busshållplats
171	上	うえ	över/på
172		エレベーター	hiss
173		コピーカード	copy card
174	下	した	under
175	食堂	しょくどう	matsal
176	正門	せいもん	huvudport
177	体育館	たいいくかん	gym-sal
178		テーブル	bord (ej skriv-)
179	電池	でんち	batteri
180	左	ひだり	vänster
181		みぎ	höger
182	冷蔵庫	れいぞうこ	kysskåp
183	買い物	かいもの	shopping/inköp
184	学会	がっかい	akademisk konferens
185	工場	こうじょう	fabrik
186	散歩	さんぽ	promenad
187	発表	はっぴょう	presentation
188	所	ところ	plats
189	実験	じっけん	experiment
190	準備	じゅんび	förberedelse
191	成績	せいせき	betyg
192	金	（お）かね	pengar
193	時間	じかん	tid
194	処理速度	しょりそくど	processing speed
195	飲み物	のみもの	dryck
196	勉強	べんきょう	studier
197	自然	しぜん	natur
198	情報	じょうほう	information
199	人口	じんこう	befolkningsmängd
200	世界	せかい	världen
201	地球	ちきゅう	jorden
202	月	つき	måne
203	発明	はつめい	uppfinning
204	切符	きっぷ	biljett
205	電気	でんき	elektricitet
206	読み方	よみかた	sätt att läsa
207	会社員	かいしゃいん	företagsanställd
208	機械	きかい	maskin
209	技術者	ぎじゅつしゃ	tekniker
210	石油	せきゆ	olja
211	病気	びょうき	sjukdom
212	医者	いしゃ	läkare
213	受付	うけつけ	reception
214	運動	うんどう	fysisk aktivitet
215	辛い物	からいもの	kryddstark mat
216		かん	burk
217	管理費	かんりひ	underhållsavgift
218	規則	きそく	regel
219	禁止	きんし	förbjud
220	使用	しよう	användning
221		マンション	mansion
222	お弁当	おべんとう	matsäck
223	環境	かんきょう	miljö
224	荷物	にもつ	bagage
225	旅館	りょかん	värdshus i japansk stil
226	温泉	おんせん	varmvattenkälla
227	外国	がいこく	utland
228	会社	かいしゃ	företag
229	警官	けいかん	polis
230	地震	じしん	jordbävning
231	旅行	りょこう	resa
232	お土産	おみやげ	souvenir
233	故障	こしょう	att vara trasig
234	洗濯	せんたく	tvättning av kläder
235	掃除	そうじ	städning
236	予約	よやく	bokning
237	開発	かいはつ	utveckling
238	結婚式	けっこんしき	bröllopsceremoni
239	出席	しゅっせき	närvaron
240	入学	にゅうがく	inträde
241	本屋	ほんや	bokhandel
242	技術	ぎじゅつ	teknik
243	計算	けいさん	beräkning
244	検索	けんさく	sökning
245	国籍	こくせき	nationalitet
246	生活	せいかつ	vardagsliv
247	年齢	ねんれい	ålder
248		レベル	nivå
249	運転	うんてん	körning
250	関心	かんしん	intresse
251	政治	せいじ	politik
252	犯罪	はんざい	brott
253	久しぶり	ひさしぶり	länge sedan
254		みんな	alla
255	頭	あたま	huvud
256	薬	くすり	medicin
257	火	ひ	eld
258		アルバイト	extraarbete
259	事故	じこ	olycka
260	信号	しんごう	trafiksignal
261	食べ物	たべもの	mat
262	手紙	てがみ	brev
263	花	はな	blomma
264	休講	きゅうこう	inställd lektion
265	見学	けんがく	studiebesök
266	設計	せっけい	ritning
267	調子	ちょうし	kondition
268	鼻水	はなみず	rinnande snor
269	お正月	おしょうがつ	nyår
270	経験	けいけん	erfarenhet
271	工学博士	こうがくはかせ	doktor i tekniskt ämne
272		ゴールデンウィーク	golden week
273	卒業	そつぎょう	akademiska examen
274		ホームシック	hemlägtan
\.


--
-- Data for Name: verbs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verbs (id, kanji, hiragana, translation) FROM stdin;
1	消える	きえる	att slockna
2	続く	つづく	att fortsättas
3	出る	でる	att komma ut/starta
4	聞こえる	きこえる	att höras
5	開く	あく	att öppnas
6	曲がる	まがる	att svänga
7	なる		att bli
8	渡る	わたる	att gå över
9	動く	うごく	att röra
10	走る	はしる	att springa
11	予約する	よやくする	att boka
12	割る	わる	att slå sönder
13	調べる	しらべる	att undersöka
14	受ける	うける	att genomgå
15	採用する	さいようする	att anställa
16	答える	こたえる	att svara på
17	確認する	かくにんする	att konfirmera
18	遅れる	おくれる	att bli försenad
19	申し込む	もうしこむ	att ansöka
20	考える	かんがえる	att tänka
21	誘う	さそう	att bjuda ut
22	覚える	おぼえる	att komma ihåg
23	出席する	しゅっせきする	att vara närvarande
24	参加する	さんかする	att delta i 
25	休む	やすむ	att vila
26	いる		att behöva
27	感じる	かんじる	att känna
28	やけどする		att bli bränd
29	心配する	しんぱいする	att bekymra
30	転ぶ	ころぶ	att ramla
31	止まる	とまる	att stanna av
32	続ける	つづける	att fortsätta
33	閉まる	しまる	att stängas
34	乾く	かわく	att bli torr
35	落ちる	おちる	att falla
36	汚れる	よごれる	att bli smutsig
37	折れる	おれる	att brytas
38	通る	とおる	att gå förbi
39	困る	こまる	att bli besvärad
40	揺れる	ゆれる	att bli gungig
41	混ぜる	まぜる	att blanda
42	きがつく		att märka
43	決まる	きまる	att bestämma
44	出す	だす	att ta fram
45	変える	かえる	att ändra
46	泊める	とめる	att ge husrum
47	守る	まもる	att försvara
48	建てる	たてる	att bygga
49	暖める	あたためる	att värma upp
50	植える	うえる	att plantera
51	かたづける	かたづける	att städa undan
52	冷やす	ひやす	att kyla ner
53	消す	けす	att släcka
54	閉める	しめる	att stänga
55	かくす	かくす	att gömma
56	禁止する	きんしする	att förbjuda
57	はやる	はやる	att bli populär
58	飛ぶ	とぶ	att flyga
59	つける	つける	att sätta på
60	むく	むく	att skala
61	間に合う	まにあう	att hinna 
62	いかす		att utnyttja
63	諦める	あきらめる	att ge upp
64	整理する	せいりする	att skapa ordning på
65	勝つ	かつ	att vinna
66	やめる		att sluta/hoppa av
67	間違える	まちがえる	att göra fel
68	終了する	しゅうりょうする	att avsluta
69	がっかりする	がっかりする	att bli besviken
70	負ける	まける	att förlora
71	招く	まねく	att bjuda
72	持ち運ぶ	もちはこぶ	att bära
73	測る	はかる	att mäta
74	挙げる	あげる	att lista upp
75	褒める	ほめる	att berömma
76	発明する	はつめいする	att uppfinna
77	叱る	しかる	att skälla ut
78	こぼす		att spilla
79	刺す	さす	att sticka
80	取る	とる	att ta, stjäla
81	輸出する	ゆしゅつする	att exportera
82	勧める	すすめる	att rekommendera
83	表す	あらわす	att visa
84	似合う	にあう	att passa, klä
85	用意する	よういする	att förebereda
86		する	att göra
87	食べる	たべる	att äta
88	飲む	のむ	att dricka
89	見る	みる	att titta på
90	読む	よむ	att läsa
91	起きる	おきる	att vakna, stiga upp
92	買う	かう	att köpa
93	聞く	きく	att lyssna
94	寝る	ねる	att sova
95	行く	いく	att gå/åka 
96	帰る	かえる	att gå/åka hem
97	来る	くる	att komma
98	泳ぐ	およぐ	att simma
99	書く	かく	att skriva
100		ある	att finnas (ting)
101		いる	att finnas (levande)
102		(でんわを)かける	att ringa
103	会う	あう	att träffas
104		あげる	att ge
105	送る	おくる	att skicka
106	撮る	とる	att ta (foto)
107	働く	はたらく	att arbeta
108		もらう	att få
109	終わる	おわる	att (något) sluta
110	習う	ならう	att lära sig 
111	登る	のぼる	att bestiga
112	休む	やすむ	att ta ledig/vila
113	分かる	わかる	att förstå
114	思う	おもう	att tycka/tänka/tro
115	付ける	(でんきを)つける	att sätta på 
116	急ぐ	いそぐ	at skynda
117	使う	つかう	att använda
118	伝える	つたえる	att meddela
119	出かける	でかける	att gå /åka hemifrån 
120		なる	att ringa, låta
121	走る	はしる	att springa
122	話す	はなす	att prata/tala
123	待つ	まつ	att vänta
124	開ける	あける	att öppna
125	教える	おしえる	att lära ut
126	返す	かえす	att återlämna
127	貸す	かす	att låna ut
128	気をつける	きをつける	att vara uppmärksam
129	閉める	しめる	att stänga
130	座る	すわる	att sitta
131	手伝う	てつだう	att hjälpa
132	曲がる	まがる	att svänga
133	呼ぶ	よぶ	att ropa/kalla
134	浴びる	(シャワーを)あびる	att få på sig
135	集める	あつめる	att samla
136	洗う	あらう	att tvätta
137	入れる	いれる	att sätta i
138	押す	おす	att trycka på
139	降りる	おりる	att gå av
140		かかる(tid, pengar)	att ta
141	決める	きめる	att bestämma
142	答える	こたえる	att svara på
143	作る	つくる	att tillverka
144	乗る	のる	att åka 
145	住む	すむ	att bo
146	疲れる	つかれる	att bli trött
147	入る	はいる	att komma in
148	持つ	もつ	att äga/ hålla
149	飼う	かう	att ha husdjur
150	捨てる	すてる	att kasta
151	泊める	とめる	att låta någon övernatta
152	置く	おく	att ställa
153	怒る	おこる	att bli arg
154	切る	きる	att skära
155	着る	きる	att sätta på (kläder)
156		とる	att ta
157	泣く	なく	att gråta
158	守る	まもる	att hålla
159	笑う	わらう	att skratta
160	覚える	おぼえる	att komma ihåg
161	借りる	かりる	att låna
162	着く	つく	att anlända
163	見せる	みせる	att visa
164	持ってくる	もってくる	att hämta/ta med 
165	生まれる	うまれる	att bli född
166	選ぶ	えらぶ	att välja
167	建てる	たてる	att bygga 
168	泊まる	とまる	att övernatta
169	なくなる	なくなる	att gå bort (dö)
170	始める	はじめる	att börja (något)
171	歌う	うたう	att sjunga
172		できる	att kunna
173	運ぶ	はこぶ	att transpotrera
174	弾く	ひく	att spela stränginstrument
175	歩く	あるく	att gå till fots
176	進む	すすむ	att framskrida
177	増える	ふえる	att öka
178	押す	おす	att trycka på
179	消す	けす	att sudda bort
180	探す	さがす	att leta
181	引く	ひく	att dra
182	眼鏡をかける	めがねをかける	att sätta på glasögon
183	おきる	おきる	att ske
184	お腹が空く	おなかがすく	att bli hungrig
185	なくす	なくす	att tappa bort
186	喉が渇く	のどがかわく	att bli törstig
187	風邪を引く	かぜをひく	att bli förkyld
188	講義に出る	こうぎにでる	att vara med på lektionen
189	咳が出る	せきがでる	att hosta
190	直す	なおす	att reparera
191	祝う	いわう	att gratulera
192	試験を受ける	しけんをうける	att skriva test
193	世話になる	せわになる	att bli omhändertagen
194		なる	att bli
195	始まる	はじまる	att (något )börja 
\.


--
-- Name: adjectives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adjectives_id_seq', 78, true);


--
-- Name: misc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.misc_id_seq', 38, true);


--
-- Name: nouns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nouns_id_seq', 274, true);


--
-- Name: verbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verbs_id_seq', 195, true);


--
-- PostgreSQL database dump complete
--

