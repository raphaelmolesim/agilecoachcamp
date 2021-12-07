$ ->
	
	images = [
	  'https://by3302files.storage.live.com/y4mvRiDu68LWkS2yFgyjxt36b7SJA0DaJ8yqW7bi7w2iUCrAjzHS8HROshP7lz9MuVeaGi3QBPXJECpiySsX2F9iP5QSg4uZ5oUvuc8yQ4LrPgDczddo5eJuvLNbPM1X7aofhxbe5z9pi-ynjXVvjNFNrubCW5ETZm9RjfDmtPTEXg1NsM4aLkupdoxV2c_-0sPYWMKU1pyAWIwqNuturXKyg/1%20dia%2043.JPG?psid=1&width=1263&height=843',
	  'https://by3301files.storage.live.com/y4mPByuc_-cf0R8MiYmCttsfwQ-ZvpCb4ydabijy0JqYNq2W8NRY14fhgrEpLD-O7x8EZNmjux1oWSmME7njEyr7eZUvx5A9NOrPFIVEwvWxfOXysPZPB1mc8sP03FU8kFTrk9IGTlf9iE-GNANJT-c6YJgOlJE_nQWj8MY7D9Vqs3AfPnZzTKVFrlyzzyjMUG9ZmmxODq2PD8sl1490of65A/2%20dia%2024.JPG?psid=1&width=1263&height=843',
	  'https://by3302files.storage.live.com/y4mIMiu-CSLJ24Zcp7lqzmKr71vWichZCSoZ616wD2WoyX9F4q56zN98MSyM_I9-VF4JprlWsTEcu0lR_bp0_6fqdTGBRCS6UkxH8vQnfemWpwP8J-Dcl3D8SbLtfOBpjArF_qqzHEXlwiJ53ANSclA3DlkfEzo4_9kBS8PpyBRH2XSWEaQX9NVKjxx7088skfDpzcoiAFYMboACeyWxVN4Vg/1%20dia%20378.JPG?psid=1&width=1263&height=843',
	  'https://by3302files.storage.live.com/y4mkUCPQ9ZWByi2qCdifjGlUF6Yg2ia7wvLx1bHmKEj9N554b83NHahTOVFBge-vdIRKZPi_eb3rhyvB5CPukOGq7t5faElbSA3FqnnDVAfNzt6wD4NA8HryIYCChYn8ZxYDAiSxIkzJdzOgwWtp6npAVpm5gp4yDsVNsWQiGwiLHzN2IannzDJxo-uX7YRiimJ9sf82WxTQVZZCI9kkn_vOw/2%20dia%2090.JPG?psid=1&width=1263&height=843',
	  'https://by3301files.storage.live.com/y4myLrjcYTWfAhJAMp7Jf4ccXDkEntogb3MVVu9YeYzUNUIHYTu9-9l-ihVaLsmMJvkC6LBxGjzVAF6ZAeGXJc08VGoy5-4VUd3pY2Nvo4prTzYgILy3eh8zyfiMiyTQdcYb6gDt9dUAARrwMMsy0VjAAL7T2h_lFNkAWXsl2BYA4pKT1Q5AFrjtCNWb9zvjpD_R7jsK1u9zBhyRKuCxgTsPA/2%20dia%20251.JPG?psid=1&width=1263&height=843',
	  'https://by3301files.storage.live.com/y4mkaHpKMF-nT2QcE9cTvRCuecon7tOKyhEVMpP4M9rKVtBTqSzQ5gsI0Qxlm2mYL450OamyZxK-xj3cPp7HgQydiXLcd5dxZofcvefUZ-KxjQp3uwB1NmQsRsFI-JII_xLr6Q20e-3LcvQxQXbuLvURM_40bH5ohH0qoOYxula5pBziPI7uwiaAbfzK3Yu-Uu4kWsRPXKwEbexZJ84KOtXDA/3%20dia%20114.JPG?psid=1&width=1263&height=843',
	  'https://by3301files.storage.live.com/y4mPg8fxV5trietovD94iOSL9g5_sysKNEUU0ockRlLAVsFbCSRTr3YyG-qoVQtWEItaEII4e_g0CYihix96ijaJqkAOlh99M11pPheCbzKc8wwvqBJiwRL_VDeEnwsZuZjH5CYBnhKMRpAyh0mLkewNA1_ALo2TSdHhx0V4dCHYvpNvnggiB_baMzRkqR0dInGYuzX1spZ6taz_A2gHO1J6g/2%20dia%20191.JPG?psid=1&width=1263&height=843',
	]
	
	imageHead = document.getElementById('acc2022')
	i = 0
	setInterval (->
	  imageHead.style.backgroundImage = 'url(' + images[i] + ')'
	  i = i + 1
	  if i == images.length
	    i = 0
	  return
	), 4000