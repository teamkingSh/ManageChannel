function run(msg)
	help_admin = "_Admin Commands:_\n\n"
	.."   *Add new user:*\n"
	.."     `/add {telegram id},{@channel},{number}`\n\n"
	.."   *Charge user:*\n"
	.."     `/add {telegram id}`\n\n"
	.."   *Edit user:*\n"
	.."     `/edit {telegram id},{@channel},{number}`\n\n"
	.."   *Block a user:*\n"
	.."     `/block {telegram id}`\n\n"
	.."   *Unblock a user:*\n"
	.."     `/unblock {telegram id}`\n\n"
	.."   *Block list:*\n"
	.."     /blocklist\n\n"
	.."   *Send message to all users:*\n"
	.."     `/sendtoall {message}`\n\n"
	.."   *All users list:*\n"
	.."     /users"
	about_txt = "*teamking_sh Robot* v"..bot_version.."\n\n   _- Send Message by SMS_\n   _- Add, Edit & Remove Caption_\n   _- Send Inline Keyboard_\n   _- Remove Forward Info_\n   _- Send Bold,Italic and Cod Text_\n   _- Send Hyper Link_\n   _- Timer for Post to Next Time_\n   _- & More..._\n\n`Made in teamking_sh Team and Powered by teamking_sh Co. Group`"
	about_key = {{{text = "کانال رسمی" , url = "https://telegram.me/teamking_sh"}},{{text = "ربات تیم" , url = "https://telegram.me/PmResan_KingTeam_Bot"}},{{text = "پیام رسان" , url = "https://telegram.me/PvResanCsgroupBot"}}}
	start_txt = "به ربات "..bot.first_name..' خوش آمدید\nاین ربات در حالت اینلاین رایگان است و برای آموزش بیشتر به بخش "راهنمای استفاده رایگان" مراجعه کنید.\n`استفاده ی وی آی پی از این ربات رایگان نبوده و جهت تهیه ی اکانت از طریق پل های ارتباطی موجود در بخش "ارتباط با ما" اقدام نمایید و با ما تماس بگیرید. هزینه ی استفاده از این ربات ماهانه 5.000 تومان میباشد.\nاز جمله قابلیات این ربات میتوان به موارد زیر اشاره کرد:\n-ارسال متن به کانال از طریق پیامک (اس ام اس)\n-ارسال کیبرد شیشه ای به کانال\n-افزودن، ویرایش و حذف درج نویس در فورواردها\n-حذف منبع فورواردها\n-ارسال زماندار پست\n-ارسال متون با استایل و فونت های مختلف\n-افزودن لینک به یک کلمه\n-و...`'
	start_key = {{"راهنمای ربات","راهنمای استفاده رایگان"},{"مثال کیبرد اینلاین و مارک داون"},{"ربات پیام رسان","ارتباط با ما"}}
	keyboard = {{"ارسال کیبرد شیشه ای به کانال"},{"فوروارد به کانال بدون منبع"},{"ارسال هر نوع فایل با زیر نویس"},{"ارسال پست با فونت های مختلف"},{"ارسال پست با SMS","ارسال پست زماندار"},{"ثبت امضا","حذف امضا","نمایش امضا"},{"راهنما","درباره ما","اطلاعات کانال"}}
	help_user = "ربات سی اس گروپ نسخه ی "..bot_version..'\n\nاین ربات در حالت اینلاین رایگان است و برای آموزش بیشتر به بخش "راهنمای استفاده رایگان" مراجعه کنید\n`این ربات یکی از حرفه ای ترین ابزار ها در خصوص مدیریت کانال به زبان کاملان فارسی و با کاربری بسیار ساده میباشد. این ربات در حالت وی آی پی رایگان نبوده و جهت تهیه ی اکانت از طریق پل های ارتباطی موجود در بخش "ارتباط با ما" اقدام نمایید و با ما تماس بگیرید. هزینه ی استفاده از این ربات ماهانه 5.000 تومان میباشد.\n\nقابلیات ربات:\n-ارسال متن به کانال از طریق پیامک (اس ام اس)\n-ارسال کیبرد شیشه ای به کانال\n-افزودن، ویرایش و حذف درج نویس در فورواردها\n-حذف منبع فورواردها\n-ارسال زماندار پست\n-ارسال متون با استایل و فونت های مختلف\n-افزودن لینک به یک کلمه\n-و...\n\nنحوه ی فعالسازی ربات:\nاگر سازنده ی ربات هستید به بخش ادمین های کانال خود بروید و کلیدی که مخصوص افزودن ادمین است را انتخاب کنید. کلیدی که دارای آیکون ذره بین است را برگزینید و یوزر این ربات یعنی @PmResan_KingTeam_Bot را جستوجو کنید و این ربات را به بخش مدیریت کانالتان اضافه کنید. دقت کنید که از تلگرام اصلی برای این کار استفاده کنید زیرا نرم افزار هایی مثل تلگراف و مبوگرام و... ربات را به عنوان مدیر کانال قرار نمیدهند.\nمرحله ی دوم واریز وجه اکانت برای یک ماه است و مرحله ی سوم ارائه ی مشخصاتتان به ما. مشخصات خود را از جمله نام کانال، آی دی خود و شماره تلفنتان که میخواهید از آن طریق کانالتان را با استفاده از پیامک آپدیت کنید، برای ما ارسال نمایید تا ثبت نام شما انجام گردد. به محض انجام شدن ثبت نام ربات برای شما به مدت یک ماه فعال خواهد شد.`'
	help_user_ok = [[راهنمای جامع ربات مدیریت کانال سی اس گروپ:

حالت رایگان و اینلاین:
`با استفاده از قابلیت اینلاین میتوانید به رایگان کلید شیشه ای به کانال خود اضافه کنید. دقت کنید که در حالت رایگان برای هر پست قادر به افزودن فقط یک کلید هستید. برای استفاده، یوزر ربات یعنی @PmResan_KingTeam_Bot را تایپ کنید و یک فاصله بزنید، متن مورد نظر را وارد نمایید که تیتر شما و متن اصلی شما میباشد و دقت کنید که در آن قابلت مارک داون هم فعال است، پی از تایپ متن مورد نظر، علامت # را بگذارید و متن کلید را وارد کنید، سپس علامت = را وارد کرده و بعد لینک را وارد نمایید، دقت کنید که لینک با http:// یا https:// شروع شود. پس از انجام این مراحل علامت > را بگذارید و منتظر باشید تا کلید ارسال به چت نمایش داده شود، با انتخاب آن کیبرد شما به چت اضاف خواهد شد.`
	
ارسال پست با فونت های مختلف:
`از این طریق میتوانید متون خود را با استایل های فونتی مختلف به کانال ارسال کنید. با انتخاب این گزینه راهنما و مثال ها را ب صورت تشریحی نظاره خواهید کرد. دقت کنید که از این طریق میتوانید هایپر لینک هم در متن خود قرار دهید. منظور از ایپر لینک، لینکی است که روی یک کلمه یا جمله قرار میگیرد. به قابلیت استایل نویسی مارک داون گفته یشود. حد اکثر حروف مجاز متن ورودی 4000 کاراکتر میباشد و فقط میتوانید از متن با زبانهای مخلف در این بخش بهره ببرید.`

ارسال کیبرد شیشه ای به کانال:
`از طریق این گزینه میتوانید متون خود را با قابلیت مارک داون و حداکثر 4000 کاراکتر به همراه کیبرد شیشه ای به کانال اضافه کنید. تعداد کلیدها حداکثر 9 عدد میباشد و شما بدون نیاز به داشتن علم کد نویسی و خیلی راحت میتوانید به کانال کیبرد شیشه ای با ساده ترین متد و با مراحل قدو ب قدم ارسال کنید. در این بخش مثالی هم از کیبرد شیشه ای موجود است`

فوروارد به کانال بدون منبع:
`در این بخش میتوانید بدون منبع به صورت انبوه به کانال مطلب فوروارد کنید. مطلب فوروارد شده میتواند عکس، ویدئو، گیف، فایل، موزیک و متن باشد. فوروارد انبوه میباشد و محدودیتی ندارد. برای زیر نویس هم 3 امکان پیش روی شماست. میتوانید زیر نویس ها را حذف کنید، میتوانید از زیر نویس پیش فرض که امضای شما به حساب میآید و در آیتم های بعدی توضیح میدهیم استفاده کنید یا میتوانید از زیر نویس کنونی خود فایل استفاده نمایید.`

ارسال هر نوع فایل با زیر نویس:
`شما میتوانید عکس، ویدئو، موزیک، گیف و فایل را با درج زیر نویس به کانال اضافه کنید. برای درج زیر نویس 3 گزینه دارید، یا میتوانید از امضای از پیش تعیین شده استفاده کنید و یا میتوانید به صورت دستی وارد کنید همچنین میتوانید بدون زیر نویس به کانال ارسال کنید. در این بخش میتوانید از فوروارد هم استفاده کنید و در نظر داشته باشید اگر مطلبی را برای ربات فوروارد کنید، منبع حذف میگردد.`

ارسال پست با SMS:
`یک قابلیت ویژه میباشد و از طریق آن میتوانید با پیامک به کانالتان پست های متنی ارسال کنید. دقت کنید که قابلیت مارک داون فعال است و میتوانید از الگوهای مارک داون استفاده نمایید. حد اکثر متن باید 4000 کاراکتر باشد. متن خود را به صورت پیام کوتاه یا همان اس ام اس به شماره ی 40001244789300 با همان شماره ای که هنگام ثبت نام ارائه نمودید ارسال کنید تا در کانالتان پست شود. پست ممکن است تا یک دقیقه با تاخیر انجام شود.`

ارسال پست زماندار:
`با استفاده از این آپشن میتوانید یک متن را فیکس کنید تا در آینده در کانال پست شود. حداکثر میتوانید پست را برای 10 روز و 23 ساعت و 59 دقیقه ی آینده برنامه ریزی کنید. پست فقط میتواند متن باشد و دقت کنید که از قابلیت مارک داون نمیتوانید استفاده کنید`

ثبت امضا:
`میتوانید در این قسمت متنی را حداکثر با 200 کاراکتر فیکس کنید که در زیر نویس ها به صورت اوتومات از آن بهره ببرید. قابلیت مارک داون در این قسمت فعال نیست.`

حذف امضا:
`در صورتی که امضایی ثبت کرده اید با این کلید قادر به حذف آن ستید.`

نمایش امضا:
`امضای ثبت شده را میتوانید با استفاده از این کلید مشاهده کنید.`

اطلاعات کانال:
`با استفاده از این کلید میتوانید نام کانال، یوزرنیم کانال، آی دی کانال، شماره ارتباطی با سامانه پیامکی، انقضای اکانت، آمار کانال، سازنده ی کانال، تعداد ادمینهای کانال، لیست ادمینهای کانال را در یک لیست ببینید.`]]
	------------------------------------------------------------------------------------
	blocks = load_data("../blocks.json")
	users = load_data("users.json")
	userid = tostring(msg.from.id)
	
	if msg.chat.type == "channel" then
		return
	elseif msg.chat.type == "supergroup" or msg.chat.type == "group" then
		return kickme(msg.chat.id)
	end

	if msg.text == "/start" then
		if users[userid] then
			return send_msg(msg.from.id, start_txt, true)
		else
			return send_key(msg.from.id, start_txt, start_key)
		end
	elseif msg.text == "ربات پیام رسان" then
		return send_msg(msg.from.id, "`اگر ریپورت هستید از طریق این ربات میتوانید با ما ارتباط برقرار کنید.`\n@PvResanCsgroupBot", true)
	elseif msg.text == "راهنمای استفاده رایگان" then
		return send_msg(msg.from.id, "قابلیت اینلاین ربات سی اس گروپ به صورت رایگان:\n`با استفاده از قابلیت اینلاین میتوانید به رایگان کلید شیشه ای به کانال خود اضافه کنید. دقت کنید که در حالت رایگان برای هر پست قادر به افزودن فقط یک کلید هستید. برای استفاده، یوزر ربات یعنی @PmResan_KingTeam_Bot را تایپ کنید و یک فاصله بزنید، متن مورد نظر را وارد نمایید که تیتر شما و متن اصلی شما میباشد و دقت کنید که در آن قابلت مارک داون هم فعال است، پی از تایپ متن مورد نظر، علامت # را بگذارید و متن کلید را وارد کنید، سپس علامت = را وارد کرده و بعد لینک را وارد نمایید، دقت کنید که لینک با http:// یا https:// شروع شود. پس از انجام این مراحل علامت > را بگذارید و منتظر باشید تا کلید ارسال به چت نمایش داده شود، با انتخاب آن کیبرد شما به چت اضاف خواهد شد.`", true)
	elseif msg.text == "ارتباط با ما" or msg.text == "درباره ما" then
		return send_inline(msg.from.id, about_txt, about_key)
	elseif msg.text == "مثال کیبرد اینلاین و مارک داون" then
		inlinekey = {{{text = "کانال تیم" , url = "https://telegram.me/teamking_sh"}},{{text = "ربات تیم" , url = "https://telegram.me/PmResan_KingTeam_Bot"}}}
		text = "مثال استایل نویس با فونتهای مختلف:\n*teamking_sh Team*\nCsgroup Team\n_Csgroup Team_\n`teamking_sh Team`\nتیم سی اس گروپ\n`تیم سی اس گروپ`\nمثال هایپر لینک:\n[تیم سی اس گروپ](telegram.me/teamking_sh)\n[teamking_sh Team](telegram.me/teamking_sh)\nمثال کیبرد اینلاین:"
		return send_inline(msg.from.id, text, inlinekey)
	elseif msg.text == "راهنما" or msg.text == "/help" or msg.text == "راهنمای ربات" then
		if msg.from.id == sudo_id then
			return send_msg(msg.from.id, help_admin, true)
		else
			if users[userid] then
				if users[userid].expire+100 < tonumber(os.date("%y%m%d")) then
					return send_msg(msg.from.id, help_user, true)
				else
					return send_msg(msg.from.id, help_user_ok, true)
				end
			else
				return send_msg(msg.from.id, help_user, true)
			end
		end
	end
	
	if msg.from.id == sudo_id then
	elseif not users[userid] then
		return send_key(msg.from.id, "`شما از کاربران ربات نمیباشید. برای عضویت از بخش ارتباط با ما، با ما مکاتبه کنید یا برای مشاهده ی قابلیات ربات، راهنما را انتخاب نمایید.`", start_key)
	elseif users[userid].expire+100 < tonumber(os.date("%y%m%d")) then
		return send_key(msg.from.id, '`شارژ حساب شما به پایان رسید است. برای شارژ مجدد حساب از بخش "ارتباط با ما"، با ما مکاتبه کنید.`', start_key)
	end
	
	if msg.text:find('/add') and msg.from.id == sudo_id then
		local usertarget = msg.text:input()
		if usertarget then
			local target = usertarget:split(",")
			if users[tostring(target[1])] then
				users[tostring(target[1])].expire = tonumber(os.date("%y%m%d"))
				save_data("users.json", users)
				send_msg(target[1], "`کاربر گرامی\nحساب شما به مدت یک ماه شارژ شد`", true)
				return send_msg(sudo_id, "`کاربر مورد نظر با شناسه "..tostring(target[1]).." برای یک ماه شارژ شد`", true)
			else
				users[tostring(target[1])] = {}
				users[tostring(target[1])].expire = tonumber(os.date("%y%m%d"))
				users[tostring(target[1])].channel = target[2]
				users[tostring(target[1])].number = tostring(target[3])
				users[tostring(target[1])].action = 0
				save_data("users.json", users)
				text = "`کاربر گرامی\nعضویت در این ربات را به شما تبریک میگوییم\nکانال شما: `"..users[tostring(target[1])].channel.."\n`شماره شما: `"..users[tostring(target[1])].number
				send_key(target[1], text, keyboard, false, true)
				return send_msg(sudo_id, "`کاربر مورد نظر با شناسه "..tostring(target[1]).." افزوده شد`", true)
			end
		else
			return send_msg(sudo_id, "*/add 12345678,@teamking_sh,9121234567*\n`/add [telegram id],[@channel],[number]`", true)
		end
	elseif msg.text:find('/edit') and msg.from.id == sudo_id then
		local usertarget = msg.text:input()
		if usertarget then
			local target = usertarget:split(",")
			if users[tostring(target[1])] then
				if users[tostring(target[1])].expire+100 < tonumber(os.date("%y%m%d")) then
					return send_msg(sudo_id, "`حساب کاربری کاربر مورد نظر منقضی شده است`", true)
				else
					if target[2] then
						users[tostring(target[1])].channel = target[2]
					end
					if target[3] then
						users[tostring(target[1])].number = tostring(target[3])
					end
					save_data("users.json", users)
					text = "کاربر گرامی، مشخصات شما ویرایش شد.\nکانال شما: "..users[tostring(target[1])].channel.."\nشماره شما: "..users[tostring(target[1])].number
					send_msg(target[1], text, false)
					return send_msg(sudo_id, "`کاربر مورد نظر با شناسه "..tostring(target[1]).." ویرایش شد`", true)
				end
			else
				return send_msg(sudo_id, "`کاربر مورد نظر فاقد حساب کاربری میباشد`", true)
			end
		else
			return send_msg(sudo_id, "*/edit 12345678,@teamking_sh,9121234567*\n`/edit [telegram id],[@channel],[number]`", true)
		end
	elseif msg.text:find('/sendtoall') and msg.from.id == sudo_id then
		local usertarget = msg.text:input()
		if usertarget then
			i=0
			for k,v in pairs(users) do
				i=i+1
				send_msg(k, usertarget, true)
			end
			return send_msg(sudo_id, "`پیام شما به "..i.." نفر ارسال شد`", true)
		else
			return send_msg(sudo_id, "*/sendtoall test*\n`/sendtoall [message]`", true)
		end
	elseif msg.text == "/users" and msg.from.id == sudo_id then
		local list = ""
		i=0
		for k,v in pairs(users) do
			if users[k].expire+100 < tonumber(os.date("%y%m%d")) then
				b = "*"
			else
				b = ""
			end
			i=i+1
			list = list..i.."- "..k.." ("..users[k].number..") "..users[k].channel..b.."\n\n"
		end
		return send_msg(sudo_id, "لیست اعضا:\n\n"..list, false)
	elseif msg.text == "/blocklist" and msg.from.id == sudo_id then
		local list = ""
		i=0
		for k,v in pairs(blocks) do
			if v then
				i=i+1
				list = list..i.."- "..k.."\n"
			end
		end
		return send_msg(sudo_id, "بلاک لیست:\n\n"..list, false)
	elseif msg.text:find('/block') and msg.from.id == sudo_id then
		local usertarget = msg.text:input()
		if usertarget then
			if tonumber(usertarget) == sudo_id or tonumber(usertarget) == bot.id then
				return send_msg(sudo_id, "`نمیتوانید خودتان را بلاک کنید`", true)
			end
			if blocks[tostring(usertarget)] then
				return send_msg(sudo_id, "`شخص مورد نظر بلاک است`", true)
			end
			blocks[tostring(usertarget)] = true
			save_data("../blocks.json", blocks)
			send_msg(tonumber(usertarget), "`شما بلاک شدید!`", true)
			return send_msg(sudo_id, "`شخص مورد نظر بلاک شد`", true)
		else
			return send_msg(sudo_id, "`بعد از این دستور آی دی شخص مورد نظر را با درج یک فاصله وارد کنید`", true)
		end
	elseif msg.text:find('/unblock') and msg.from.id == sudo_id then
		local usertarget = msg.text:input()
		if usertarget then
			if blocks[tostring(usertarget)] then
				blocks[tostring(usertarget)] = false
				save_data("../blocks.json", blocks)
				send_msg(tonumber(usertarget), "`شما آنبلاک شدید!`", true)
				return send_msg(sudo_id, "`شخص مورد نظر آنبلاک شد`", true)
			end
			return send_msg(sudo_id, "`شخص مورد نظر بلاک نیست`", true)
		else
			return send_msg(sudo_id, "`بعد از این دستور آی دی شخص مورد نظر را با درج یک فاصله وارد کنید`", true)
		end
	end
	
	chstatus = mem_info(users[userid].channel, bot.id)
	if not chstatus then
		return send_msg(msg.from.id, "`یوزرنیم کانال تغییر کرده یا کانال حذف شده است`", true)
	elseif not chstatus.ok then
		return send_msg(msg.from.id, "`یوزرنیم کانال تغییر کرده یا کانال حذف شده است`", true)
	elseif chstatus.result.status == "administrator" then
	else
		return send_msg(msg.from.id, "`برای هر عملیاتی، من را ادمین کانال قرار دهید`", true)
	end

	if msg.text == "لغو" or msg.text == "منو" or msg.text:lower() == "/update" then
		if not users[userid].ctime then
			users[userid].ctext = false
		end
		users[userid].action = 0
		save_data("users.json", users)
		return send_key(msg.from.id, "`کلید مورد نظر را انتخاب نمایید:`", keyboard)
	elseif msg.text == "ارسال پست با فونت های مختلف" then
		users[userid].action = 1
		save_data("users.json", users)
		return send_key(msg.from.id, "از این طریق میتوانید متون خود را با قابلیت مارک داون و با فونت های مختلف به کانال اضافه کنید.\n\n`برای کلفت نویسی، متن مورد نظر را بین 2 عدد * قرار دهید. دقت کنید این قابلیت مربوط به حروف انگلیسی است. مثال:\n*`teamking_sh`* =` *teamking_sh*\n\n`برای کج نویسی، متن مورد نظر را بین 2 عدد _ قرار دهید. دقت کنید این قابلیت مربوط به حروف انگلیسی است. مثال:\n_`teamking_sh`_ = `_Csgroup_\n\n*برای ماشین نویسی یا نوستن با حالت کدینگ، متن مورد نظر را بین 2 عدد ` قرار دهید. مثال:\n`*teamking_sh*`=*  `teamking_sh`\n\n`برای لینک نویسی و هایپر لینک، متن مورد نظر را بین [] قرار دهید و لینک مورد نظر را نیز بین () بگذارید. مثال:\n[teamking_sh](telegram.me/teamking_sh)` = [teamking_sh](telegram.me/teamking_sh)\n\nمتن خود را طبق فرمول گفته شده ارسال کنید", {{"لغو"}}, true)
	elseif msg.text == "ارسال کیبرد شیشه ای به کانال" then
		users[userid].action = 4
		save_data("users.json", users)
		return send_key(msg.from.id, '`تیتر کیبرد اینلاین را وارد کنید. از فرمولهای مارک داون که در قسمت "ارسال پست با فونت های مختلف" توضیح داده شد نیز میتوانید استفاده کنید.`', {{"لغو"},{"مثال کیبرد اینلاین"}}, true)
	elseif msg.text == "فوروارد به کانال بدون منبع" then
		users[userid].action = 5
		save_data("users.json", users)
		if users[userid].caption then
			inkeycustm = {{"لغو"},{"ارسال با زیرنویس اورجینال"},{"ارسال بدون زیرنویس"},{"ارسال با امضای پیشفرض"}}
		else
			inkeycustm = {{"لغو"},{"ارسال با زیرنویس اورجینال"},{"ارسال بدون زیرنویس"}}
		end
		return send_key(msg.from.id, '`یکی از کلید ها را انتخاب کنید`', inkeycustm, true)
	elseif msg.text == "ارسال هر نوع فایل با زیر نویس" then
		users[userid].action = 3
		save_data("users.json", users)
		return send_key(msg.from.id, "`یک عکس، ویدئو، گیف، فایل یا موسیقی ارسال نمایید. حداکثر حجم مجاز 50 مگابایت میباشد.`", {{"لغو"}}, true)
	elseif msg.text == "ارسال پست زماندار" then
		if users[userid].ctime then
			users[userid].action = 6
			save_data("users.json", users)
			return send_key(msg.from.id, "هم اکنون شما یک پست زماندار دارید. زمان ارسال "..os.date("%F , %H:%M",users[userid].ctime).." میباشد و متن به شرح زیر است:\n\n"..users[userid].ctext, {{"لغو"},{"هم اکنون ارسال شود"},{"حذف این پست زماندار"}}, true, true)
		else
			users[userid].action = 7
			save_data("users.json", users)
			return send_key(msg.from.id, "`متنی که میخواهید در آینده به کانال پست نمایید ارسال کنید. دقت کنید نمیتوانید از قابلیت مارک داون استفاده نمایید.`", {{"لغو"}}, true)
		end
	elseif msg.text == "ثبت امضا" then
		users[userid].action = 2
		save_data("users.json", users)
		return send_key(msg.from.id, "`میتوانید امضایی را در این قسمت ثبت کنید که در درج نویس ها به صورت اوتوماتیک الصاق گردد. دقت کنید که طول متن کمتر از 200 کاراکتر باشد و از الگوریتم های مارک داون نمیتوانید بهره ببرید`", {{"لغو"}}, true)
	elseif msg.text == "حذف امضا" then
		users[userid].action = 0
		users[userid].caption = false
		save_data("users.json", users)
		return send_key(msg.from.id, "`امضا حذف شد`", keyboard)
	elseif msg.text == "اطلاعات کانال" then
		chnum = mem_num(users[userid].channel)
		chinfo = channel(users[userid].channel)
		chadmin = ch_admins(users[userid].channel)
		chadminlist = ""
		a = 0
		for i=1,#chadmin.result do
			if chadmin.result[i].status == "creator" then
				creator = "نام: "..(chadmin.result[i].user.first_name or "").." "..(chadmin.result[i].user.last_name or "").."\nیوزرنیم: @"..(chadmin.result[i].user.username or "-----").."\nآی دی: "..chadmin.result[i].user.id
			else
				a = a+1
				chadminlist = chadminlist..a.."- "..(chadmin.result[i].user.first_name or "").." "..(chadmin.result[i].user.last_name or "").." (@"..(chadmin.result[i].user.username or "-----")..") ["..chadmin.result[i].user.id.."]\n\n"
			end
		end
		text = "نام کانال: "..chinfo.result.title.."\n\nیوزرنیم کانال: @"..(chinfo.result.username or "-----").."\n\nآی دی کانال: "..chinfo.result.id.."\n\nشماره ارتباطی با سامانه پیامکی: "..users[userid].number .."\n\nانقضای اکانت: "..users[userid].expire.."\n\nآمار کانال: "..chnum.result.."\n\nسازنده ی کانال:\n"..creator.."\n\nتعداد ادمینهای کانال: "..tostring(a+1).."\n\nلیست ادمینهای کانال:\n"..chadminlist
		--[For See First Post in Channel, Click Here](https://telegram.me/"..chinfo.result.username.."/1)
		return send_msg(msg.from.id, text, false)
	elseif msg.text == "نمایش امضا" then
		if users[userid].caption then
			return send_msg(msg.from.id, "`امضای شما جهت درج در درج نویسها:\n_______________________________\n`"..users[userid].caption, true)
		else
			return send_msg(msg.from.id, "`امضایی وجود ندارد`", true)
		end
	elseif msg.text == "ارسال پست با SMS" then
		users[userid].action = 0
		save_data("users.json", users)
		return send_key(msg.from.id, "`برای استفاده از این سرویس، پیام خود را به شماره ی زیر پیامک (SMS) کنید و حداکثر پیامتان تا 30ثانیه بعد در کانالتان پست میشود. دقت کنید از طریق این روش قادر به استفاده از قابلیت مارک داون هم هستید. فقط میتوانید با شماره ای پیامک دهید که هنگام ثبت نام ارائه نمودید.`\n(+98)0000 00 11 00 11 00", keyboard)
	elseif msg.text == "مثال کیبرد اینلاین" then
		return send_inline(msg.from.id, "`تیتر کیبرد اینلاین با قابلیت استفاده از قابلیت مارک داون`", {{{text = "کانال تیم" , url = "https://telegram.me/teamking_sh"}}})
	end
	
	if users[userid].action == 0 then
		return send_key(msg.from.id, "`ورودی صحیح نیست، یک گزینه دیگر را انتخاب کنید.`", keyboard)
	elseif users[userid].action == 1 then
		users[userid].action = 0
		save_data("users.json", users)
		send_msg(users[userid].channel, msg.text, true)
		return send_key(msg.from.id, "`مکتوبه ی مورد نظر مرسول گشت.\nدقت کنید چنانچه متن شما به کانال ارسال نشد، قطعا یکی از علامت های مارک داون به صورت مفرد در متن شما قرار دارد یعنی برای مثال در متن شما یک * به صورت مفرد قرار دارد. اگر از علامت * یا _ میخواهید به صورت مفرد استفاده نمایید، یا آن را هایپر لینک کنید یا به صورت کد نویس یا ماشین نویس بنویسید.`", keyboard)
	elseif users[userid].action == 2 then
		if string.len(msg.text) > 200 then
			return send_msg(msg.from.id, "`متن وارد شده بیش از 200 کاراکتر میباشد، متن را اصلاح نمایید`", true)
		end
		users[userid].action = 0
		users[userid].caption = msg.text
		save_data("users.json", users)
		return send_key(msg.from.id, "`امضا و کپشن مورد نظر ثبت شد`", keyboard)
	elseif users[userid].action == 3 then
		if msg.document then
			users[userid].file_type = "document"
			users[userid].file_id = msg.document.file_id
		elseif msg.video then
			users[userid].file_type = "video"
			users[userid].file_id = msg.video.file_id
		elseif msg.photo then
			i = #msg.photo
			users[userid].file_type = "photo"
			users[userid].file_id = msg.photo[i].file_id
		elseif msg.audio then
			users[userid].file_type = "audio"
			users[userid].file_id = msg.audio.file_id
		else
			return send_msg(msg.from.id, "`فقط قادر به ارسال عکس، ویدئو، گیف، فایل و موسیقی میباشید. حداکثر حجم مجاز 50 مگابایت میباشد.`", true)
		end
		users[userid].action = 30
		save_data("users.json", users)
		if users[userid].caption then
			inkeycustm = {{"لغو"},{"وارد کردن زیرنویس"},{"ارسال بدون زیرنویس"},{"ارسال با امضای پیشفرض"}}
		else
			inkeycustm = {{"لغو"},{"وارد کردن زیرنویس"},{"ارسال بدون زیرنویس"}}
		end
		return send_key(msg.from.id, "`یکی از آیتم ها را انتخاب نمایید`", inkeycustm, true)
	elseif users[userid].action == 30 then
		if msg.text == "وارد کردن زیرنویس" then
			users[userid].action = 31
			save_data("users.json", users)
			return send_key(msg.from.id, "`متن مورد نظر را وارد کنید، دقت کنید که متن وارد شده کمتر از 200 کاراکتر باشد و در آن از فرمولهای مارک داون استفده نشود.`", {{"لغو"}}, true)
		elseif msg.text == "ارسال بدون زیرنویس" then
			if users[userid].file_type == "document" then
				send_doc(users[userid].channel, users[userid].file_id, false)
			elseif users[userid].file_type == "video" then
				send_video(users[userid].channel, users[userid].file_id, false)
			elseif users[userid].file_type == "photo" then
				send_photo(users[userid].channel, users[userid].file_id, false)
			elseif users[userid].file_type == "audio" then
				send_audio(users[userid].channel, users[userid].file_id, "audio", "unknown")
			end
		elseif msg.text == "ارسال با امضای پیشفرض" then
			if not users[userid].caption then
				users[userid].action = 0
				save_data("users.json", users)
				return send_key(msg.from.id, "`امضا وجود ندارد`", keyboard)
			end
			if users[userid].file_type == "document" then
				send_doc(users[userid].channel, users[userid].file_id, users[userid].caption)
			elseif users[userid].file_type == "video" then
				send_video(users[userid].channel, users[userid].file_id, users[userid].caption)
			elseif users[userid].file_type == "photo" then
				send_photo(users[userid].channel, users[userid].file_id, users[userid].caption)
			elseif users[userid].file_type == "audio" then
				send_audio(users[userid].channel, users[userid].file_id, "audio", users[userid].caption)
			end
		else
			return send_msg(msg.from.id, "`ورودی صحیح نیست.`", true)
		end
		users[userid].action = 0
		save_data("users.json", users)
		return send_key(msg.from.id, "`عملیات مورد نظر انجام شد.`", keyboard)
	elseif users[userid].action == 31 then
		if string.len(msg.text) > 200 then
			return send_msg(msg.from.id, "`متن وارد شده بیش از 200 کاراکتر میباشد، متن را اصلاح نمایید`", true)
		end
		if users[userid].file_type == "document" then
			send_doc(users[userid].channel, users[userid].file_id, msg.text)
		elseif users[userid].file_type == "video" then
			send_video(users[userid].channel, users[userid].file_id, msg.text)
		elseif users[userid].file_type == "photo" then
			send_photo(users[userid].channel, users[userid].file_id, msg.text)
		elseif users[userid].file_type == "audio" then
			send_audio(users[userid].channel, users[userid].file_id, "audio", msg.text)
		end
		users[userid].action = 0
		save_data("users.json", users)
		return send_key(msg.from.id, "`عملیات مورد نظر انجام شد.`", keyboard)
	elseif users[userid].action == 4 then
		users[userid].action = 40
		users[userid].titr = msg.text
		save_data("users.json", users)
		return send_key(msg.from.id, "`تعداد کلیدهای کیبرد شیشه ای را وارد نمایید. حداکثر 9 عدد مجاز است.`", {{"لغو"}}, true)
	elseif users[userid].action == 40 then
		if tonumber(msg.text) > 9 then
			return send_msg(msg.from.id, "`تعداد کلیدهای مجاز حداکثر 9 عدد میباشد، اصلاح کنید.`", true)
		end
		users[userid].action = 41
		users[userid].tab = tonumber(msg.text)
		users[userid].tables = {}
		save_data("users.json", users)
		return send_key(msg.from.id, "`متن کلید `"..msg.text.."` را تا حداکثر 50 کاراکتر وارد نمایید.`", {{"لغو"}}, true)
	elseif users[userid].action == 41 then
		if string.len(msg.text) > 50 then
			return send_msg(msg.from.id, "`متن وارد شده بیش از 50 کاراکتر میباشد، متن را اصلاح نمایید`", true)
		end
		users[userid].action = 42
		users[userid].tabtxt = msg.text
		save_data("users.json", users)
		return send_msg(msg.from.id, "`لینکی که میخواهید این کلید نماینده ی آن باشد را وارد کنید\nمثال: https://telegram.me/teamking_sh`", true)
	elseif users[userid].action == 42 then
		table.insert(users[userid].tables, {{text=users[userid].tabtxt,url=msg.text}})
		if users[userid].tab == 1 then
			send_inline(users[userid].channel, users[userid].titr, users[userid].tables)
			users[userid].action = 0
			save_data("users.json", users)
			return send_key(msg.from.id, "`کیبرد شیشه ای به کانال ارسال شد.`", keyboard)
		else
			users[userid].tab = users[userid].tab-1
			users[userid].action = 41
			save_data("users.json", users)
			return send_key(msg.from.id, "`متن کلید `"..users[userid].tab.."` را تا حداکثر 50 کاراکتر وارد نمایید.`", {{"لغو"}}, true)
		end
	elseif users[userid].action == 5 then
		if msg.text == "ارسال با زیرنویس اورجینال" then
			users[userid].action = 51
		elseif msg.text == "ارسال بدون زیرنویس" then
			users[userid].action = 52
		elseif msg.text == "ارسال با امضای پیشفرض" then
			if not users[userid].caption then
				users[userid].action = 0
				save_data("users.json", users)
				return send_key(msg.from.id, "`امضا وجود ندارد`", keyboard)
			end
			users[userid].action = 53
		else
			return send_msg(msg.from.id, "`ورودی صحیح نیست.`", true)
		end
		save_data("users.json", users)
		return send_key(msg.from.id, "`همینک انواع پست ها از جمله متن، عکس، ویدئو، گیف، فایل و موسیقی را به طور انبوه فوروارد کنید تا بدون منبع به کانال شما ارسال شود.`", {{"لغو"}}, true)
	elseif users[userid].action == 51 then
		if msg.document then
			send_doc(users[userid].channel, msg.document.file_id, (msg.caption or false))
		elseif msg.video then
			send_video(users[userid].channel, msg.video.file_id, (msg.caption or false))
		elseif msg.photo then
			i = #msg.photo
			send_photo(users[userid].channel, msg.photo[i].file_id, (msg.caption or false))
		elseif msg.audio then
			send_audio(users[userid].channel, msg.audio.file_id, (msg.audio.title or "audio"), (msg.audio.performer or "unknown"))
		elseif msg.text then
			send_msg(users[userid].channel, msg.text, false)
		else
			return send_msg(msg.from.id, "`ورودی صحیح نیست.`", true)
		end
		return send_msg(msg.from.id, "`به کانال ارسال شد`", true)
	elseif users[userid].action == 52 then
		if msg.document then
			send_doc(users[userid].channel, msg.document.file_id, false)
		elseif msg.video then
			send_video(users[userid].channel, msg.video.file_id, false)
		elseif msg.photo then
			i = #msg.photo
			send_photo(users[userid].channel, msg.photo[i].file_id, false)
		elseif msg.audio then
			send_audio(users[userid].channel, msg.audio.file_id, "audio", "unknown")
		elseif msg.text then
			send_msg(users[userid].channel, msg.text, false)
		else
			return send_msg(msg.from.id, "`ورودی صحیح نیست.`", true)
		end
		return send_msg(msg.from.id, "`به کانال ارسال شد`", true)
	elseif users[userid].action == 53 then
		if msg.document then
			send_doc(users[userid].channel, msg.document.file_id, users[userid].caption)
		elseif msg.video then
			send_video(users[userid].channel, msg.video.file_id, users[userid].caption)
		elseif msg.photo then
			i = #msg.photo
			send_photo(users[userid].channel, msg.photo[i].file_id, users[userid].caption)
		elseif msg.audio then
			send_audio(users[userid].channel, msg.audio.file_id, "audio", users[userid].caption)
		elseif msg.text then
			send_msg(users[userid].channel, msg.text.."\n\n"..users[userid].caption, false)
		else
			return send_msg(msg.from.id, "`ورودی صحیح نیست.`", true)
		end
		return send_msg(msg.from.id, "`به کانال ارسال شد`", true)
	elseif users[userid].action == 6 then
		if msg.text == "هم اکنون ارسال شود" then
			send_msg(users[userid].channel, users[userid].ctext, false)
			users[userid].ctime = false
			users[userid].ctext = false
			users[userid].action = 0
			save_data("users.json", users)
			return send_key(msg.from.id, "`پیام زماندار همینک به کانال ارسال شد.`", keyboard)
		elseif msg.text == "حذف این پست زماندار" then
			users[userid].ctime = false
			users[userid].ctext = false
			users[userid].action = 0
			save_data("users.json", users)
			return send_key(msg.from.id, "`پیام زماندار حذف شد.`", keyboard)
		end
	elseif users[userid].action == 7 then
		users[userid].ctext = msg.text
		users[userid].action = 71
		save_data("users.json", users)
		return send_msg(msg.from.id, "`تعداد روزها را از 0 تا 10 روز آینده وارد کنید. صفر یعنی همین امروز.`", true)
	elseif users[userid].action == 71 then
		if tonumber(msg.text) > 10 or tonumber(msg.text) < 0 then
			return send_msg(msg.from.id, "`مقدار وارد شده صحیح نیست، روزها را بین 0 تا 10 انتخاب کنید.`", true)
		end
		users[userid].cd = tonumber(msg.text)
		users[userid].action = 72
		save_data("users.json", users)
		return send_msg(msg.from.id, "`تعداد ساعت ها را بین 0 تا 23 وارد کنید. صفر یعنی همین ساعت.`", true)
	elseif users[userid].action == 72 then
		if tonumber(msg.text) > 23 or tonumber(msg.text) < 0 then
			return send_msg(msg.from.id, "`مقدار وارد شده صحیح نیست، ساعت را بین 0 تا 23 وارد کنید.`", true)
		end
		users[userid].ch = tonumber(msg.text)
		users[userid].action = 73
		save_data("users.json", users)
		return send_msg(msg.from.id, "`دقیقه را بین 1 تا 59 وارد کنید.`", true)
	elseif users[userid].action == 73 then
		if tonumber(msg.text) > 59 or tonumber(msg.text) < 1 then
			return send_msg(msg.from.id, "`مقدار وارد شده صحیح نیست، دقیقه را بین 1 تا 59 وارد نمایید.`", true)
		end
		H = tonumber(os.date("%H"))+users[userid].ch
		D = tonumber(os.date("%d"))+users[userid].cd
		M = tonumber(os.date("%M"))+tonumber(msg.text)
		B = tonumber(os.date("%m"))
		Y = tonumber(os.date("%y"))
		if M > 59 then
			M = M-60
			H = H+1
			if M > 10 then
				M = "0"..tostring(M)
			end
		end
		if H > 23 then
			H = H-24
			D = D+1
			if H > 10 then
				H = "0"..tostring(H)
			end
		end
		if D > 30 then
			D = D-30
			B = B+1
			if D > 10 then
				D = "0"..tostring(D)
			end
		end
		if B > 12 then
			B = B-12
			Y = Y+1
			if B > 10 then
				B = "0"..tostring(B)
			end
		end
		users[userid].ctime = tonumber(Y..B..D..H..M)
		users[userid].action = 0
		save_data("users.json", users)
		return send_key(msg.from.id, "`پیام زماندار ثبت شد`", keyboard)
	end
end

function inline(msg)
	tab1 = '{"type":"article","parse_mode":"Markdown","disable_web_page_preview":true,"id":'
	thumb = "http://umbrella.shayan-soft.ir/inline_icons/"
	ercomp = "مراحل ساخت کیبرد اینلاین به اتمام نرسیده است، لطفا طبق الگو عمل کنید، برای آموزش بیشتر راهنما را از داخل ربات مشاهده فرمایید.\n@PmResan_KingTeam_Bot"
	if msg.query == "" or msg.query == nil then
		tab_inline = tab1..'"1","title":"متن تیتر","description":"تیتر اصلی کیبرد را وارد کنید بعد علامت # بگذارید","message_text":"'..ercomp..'","thumb_url":"'..thumb..'keyk_t.png"}'
	else
		if msg.query:find('#') then
			if msg.query:find('=') then
				if msg.query:find('>') then
					spel = msg.query:split("#")
					titr = spel[1]
					spel = spel[2]:split("=")
					keytxt = spel[1]
					spel = spel[2]:split(">")
					keyurl = spel[1]
					tab_inline = tab1..'"2","title":"اتمام مراحل","description":"کلید ساخته شد، برای ارسال کلیک کنید","message_text":"'..titr..'","thumb_url":"'..thumb..'keyk_ok.png","reply_markup":{"inline_keyboard":[[{"text":"'..keytxt..'","url":"'..keyurl..'"}]]}}'
				else
					tab_inline = tab1..'"3","title":"لینک کلید","description":"لینک کلید را با http:// وارد کنید بعد علامت > بگذارید","message_text":"'..ercomp..'","thumb_url":"'..thumb..'keyk_k.png"}'
				end
			else
				tab_inline = tab1..'"4","title":"متن کلید","description":"متن کلید را وارد کنید بعد علامت = بگذارید","message_text":"'..ercomp..'","thumb_url":"'..thumb..'keyk_k.png"}'
			end
		else
			tab_inline = tab1..'"5","title":"متن تیتر","description":"تیتر اصلی کیبرد را وارد کنید بعد علامت # بگذارید","message_text":"'..ercomp..'","thumb_url":"'..thumb..'keyk_t.png"}'
		end
	end
	return send_req(send_api.."/answerInlineQuery?inline_query_id="..msg.id.."&is_personal=true&cache_time=1&results="..url.escape('['..tab_inline..']'))
end

return {launch = run , cron = cron, inline = inline}