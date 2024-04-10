-- {"id":1308639962,"ver":"1.0.0","libVer":"1.0.0","author":"Jobobby04","dep":["ReadWN>=1.0.11"]}

local GENRES = {
    "All",
    "Fan-Fiction",
    "Billionaire",
    "Douluo",
    "Faloo",
    "Dragon Ball",
    "Football",
    "NBA",
    "Marvel",
    "Pokemon",
    "Elf",
    "Hogwarts",
    "System",
    "Naruto",
    "One Piece",
    "Villain",
    "Sign in",
    "Derivative Fanfic",
    "Hot",
    "Korean",
    "Action",
    "Adventure",
    "Anime",
    "Comedy",
    "Systemflow",
    "Competitive Sports",
    "Contemporary Romance",
    "Detective",
    "Drama",
    "Eastern Fantasy",
    "Ecchi",
    "Adult",
    "Fantasy",
    "Fantasy Romance",
    "Game",
    "Gender Bender",
    "Harem",
    "Historical",
    "Historical Romance",
    "Horror",
    "Josei",
    "LGBT",
    "Lolicon",
    "Magic",
    "Magical Realism",
    "Martial Arts",
    "Mature",
    "Mecha",
    "Military",
    "Modern Life",
    "Movies",
    "Mystery",
    "Psychological",
    "Realistic Fiction",
    "Reincarnation",
    "Romance",
    "School Life",
    "Sci-fi",
    "Science fiction",
    "Secret",
    "Seinen",
    "Shoujo",
    "Shoujo Ai",
    "Shounen",
    "Shounen Ai",
    "Slice of Life",
    "Smut",
    "Sports",
    "Supernatural",
    "Suspense",
    "Terror",
    "Tragedy",
    "Video Games",
    "War",
    "Wuxia",
    "Xianxia",
    "Xuanhuan",
    "Yaoi",
    "Yuri",
    "Urban Life",
    "Travel Through Time",
    "BL",
    "BG",
    "GL",
    "Other",
}

return Require("FanNovel")("https://www.fannovels.com", {
	id = 1308639962,
	name = "FanNovel",
	imageURL = "https://raw.githubusercontent.com/LordGrindelwald/Shosetsu/main/icons/FanNovel.png",
	shrinkURLNovel = "^.-fannovels%.com",
	hasCloudFlare = true,

	genres = GENRES,

	listingsMap = {
	
		{
			name = "New to Web Novels",
			increments = true,
			url = function(data)
				return "https://www.fannovels.com/list/all/all-newstime-" .. (data[PAGE] - 1) .. ".html"
			end
		}
	},
})
