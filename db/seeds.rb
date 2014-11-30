# ['324', '4564', '567', 'rtet3435'].each do |color|
#   Color.create(name: color)
# end
#
# ['Breed1', 'Breed2', 'Breed3', 'Breed4'].each do |breed|
#   Breed.create(name: breed)
# end
#
# ['Title1', 'Title2'].each do |title|
#   Title.create(name: title)
# end
#
# @f = Cat.create(
#     breed: Breed.first,
#     color: Color.first,
#     title: Title.first,
#     breeder: 'Muchacho',
#     owner: 'Onuaro',
#     name: 'Tormozino',
#     is_cat: true,
#     birthday: 4.years.ago
# )
#
# @m = Cat.create(
#     breed: Breed.last,
#     color: Color.first,
#     title: Title.first,
#     breeder: 'Shta',
#     owner: 'Murkalo',
#     name: 'Murka',
#     is_cat: false,
#     birthday: 2.years.ago
# )
#
# Cat.create(
#     breed: Breed.last,
#     color: Color.last,
#     title: Title.last,
#     breeder: 'Shta',
#     owner: 'Pacho',
#     name: 'Prima',
#     is_cat: false,
#     is_kitty: true,
#     mother_id: @m.id,
#     father_id: @f.id,
#     birthday: 2.weeks.ago
# )

User.create(email: 'a@b.com', password: '12345678', password_confirmation: '12345678') if User.count == 0

Content.create(content_type: Content.content_types['static'], name: 'welcome', body: '
  Bla bla bla welcome
')


Content.create(content_type: Content.content_types['static'], name: 'links', body: '
  <span class="title">Ссылки</span><br><br>
					<p>
						1. <span style="color: #3594B8; font-weight: bold;">Fluffy Joy</span>
				 <br><a href="http://www.fluffyjoy.net/" target="_blank"><img id="cc-m-imagesubtitle-image-6410674585" src="http://u.jimdo.com/www53/o/sde8df63a5f28e1b3/img/i2dbf388866f0df48/1344779014/std/%D0%B4%D0%BE%D0%B1%D1%80%D0%BE-%D0%BF%D0%BE%D0%B6%D0%B0%D0%BB%D0%BE%D0%B2%D0%B0%D1%82%D1%8C-%D0%B2-%D0%BC%D0%B8%D1%80-%D0%BF%D1%83%D1%88%D0%B8%D1%81%D1%82%D0%BE%D0%B9-%D1%80%D0%B0%D0%B4%D0%BE%D1%81%D1%82%D0%B8.jpg" alt="ДОБРО ПОЖАЛОВАТЬ В МИР ПУШИСТОЙ РАДОСТИ" title="ДОБРО ПОЖАЛОВАТЬ В МИР ПУШИСТОЙ РАДОСТИ" class="" style="width: 300px; height: 120px;"></a><br><a href=""></a>
					</p>
					<p>
						2. <span style="color: #3594B8; font-weight: bold;">Lakli</span>
				 <br><a href="<a target=_blank href=http://lakli.ru/><img src=http://lakli.ru/images/banner.gif border=0 alt="></a><a target="_blank" href="http://lakli.ru/"><img class="hrkotvlbtueiozyadyfu" src="http://lakli.ru/images/banner.gif" alt="</a" border="0">
					</a></p><a target="_blank" href="http://lakli.ru/">
					</a><p><a target="_blank" href="http://lakli.ru/">
						3. <span style="color: #3594B8; font-weight: bold;"></span>
				 <br><script type="text/javascript" src="http://zj9.ucoz.es/rtr/1-2"></script><br></a><a href=""></a>
					</p>
					<p>
						4. <span style="color: #3594B8; font-weight: bold;"></span>
				 <br><a href="http://laracat.ru"><img class="hrkotvlbtueiozyadyfu" src="http://laracat.ru/banner/468.gif" alt="Питомник Британских кошек серебристых окрасов " lara-cat"!"="" border="0" height="60" width="468"></a><br><a href=""></a>
					</p>
					<p>
						5. <span style="color: #3594B8; font-weight: bold;">Масики</span>
				 <br></p><form action="http://masiki.web-box.ru" target="_blank" method="get"><input value="МАГАЗИН МАСИКИ" type="submit"></form><br><a href=""></a>
					<p></p>
					<p>
						6. <span style="color: #3594B8; font-weight: bold;">MORMOT</span>
				 <br><a target="_blank" href="http://www.mormot.ru/"><img src="http://www.mormot.ru/images/news/468.gif" alt="Питомник золотых и серебристых шиншилл  Мормот" border="0" height="60" width="468"></a><br><a href=""></a>
					</p>
					<p>
						7. <span style="color: #3594B8; font-weight: bold;"></span>
				 <br><a href="http://mau.ru/"><b>CATS-портал</b></a> - всё о кошках, диких и домашних.<br> <a href="http://cat.mau.ru/">Породы кошек,</a> <a href="http://show.mau.ru/">расписание выставок,</a> <a href="http://club.mau.ru/">cats-</a><a href="http://mauforum.ru/">форум,</a> <a href="http://doska.mau.ru/">объявления,</a> <a href="http://privet.mau.ru/">открытки,</a> <a href="http://art.mau.ru/">фото</a><br><a href=""></a>
					</p>	<span class="title">Наши баннеры</span><br><br>
	<p><img src="/images/b/b2.gif"></p>
	<form action="" name="embedForm" id="embedForm">
	<label for="embed_code">Код банера</label><br>
	<textarea style="width:100%" id="embed_code" name="embed_code" onclick="document.embedForm.embed_code.focus(); document.embedForm.embed_code.select();" readonly="readonly" type="text">&lt;a target=_blank href="http://www.beautifold.ru/"&gt;&lt;img src="http://www.beautifold.ru/images/b/b2.gif" width=100 height=100 border=0 alt="Питомник BEAUTIFOLD"&gt;&lt;/a&gt;</textarea>
	</form>

	<br><br>
	<p><img src="/images/b/b1.gif"></p>
	<form action="" name="embedForm1" id="embedForm">
	<label for="embed_code1">Код банера</label><br>
	<textarea style="width:100%" id="embed_code1" name="embed_code1" onclick="document.embedForm1.embed_code1.focus(); document.embedForm1.embed_code1.select();" readonly="readonly" type="text">&lt;a target=_blank href="http://www.beautifold.ru/"&gt;&lt;img src="http://www.beautifold.ru/images/b/b1.gif" width=468 height=60 border=0 alt="Питомник BEAUTIFOLD"&gt;&lt;/a&gt;</textarea>
	</form>
')
