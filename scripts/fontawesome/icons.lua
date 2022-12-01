local icons = {
    ICON_GLASS = '\u{f000}',
    ICON_MUSIC = '\u{f001}',
    ICON_SEARCH = '\u{f002}',
    ICON_ENVELOPE_O = '\u{f003}',
    ICON_HEART = '\u{f004}',
    ICON_STAR = '\u{f005}',
    ICON_STAR_O = '\u{f006}',
    ICON_USER = '\u{f007}',
    ICON_FILM = '\u{f008}',
    ICON_TH_LARGE = '\u{f009}',
    ICON_TH = '\u{f00a}',
    ICON_TH_LIST = '\u{f00b}',
    ICON_CHECK = '\u{f00c}',
    ICON_TIMES = '\u{f00d}',
    ICON_SEARCH_PLUS = '\u{f00e}',
    ICON_SEARCH_MINUS = '\u{f010}',
    ICON_POWER_OFF = '\u{f011}',
    ICON_SIGNAL = '\u{f012}',
    ICON_COG = '\u{f013}',
    ICON_TRASH_O = '\u{f014}',
    ICON_HOME = '\u{f015}',
    ICON_FILE_O = '\u{f016}',
    ICON_CLOCK_O = '\u{f017}',
    ICON_ROAD = '\u{f018}',
    ICON_DOWNLOAD = '\u{f019}',
    ICON_ARROW_CIRCLE_O_DOWN = '\u{f01a}',
    ICON_ARROW_CIRCLE_O_UP = '\u{f01b}',
    ICON_INBOX = '\u{f01c}',
    ICON_PLAY_CIRCLE_O = '\u{f01d}',
    ICON_REPEAT = '\u{f01e}',
    ICON_REFRESH = '\u{f021}',
    ICON_LIST_ALT = '\u{f022}',
    ICON_LOCK = '\u{f023}',
    ICON_FLAG = '\u{f024}',
    ICON_HEADPHONES = '\u{f025}',
    ICON_VOLUME_OFF = '\u{f026}',
    ICON_VOLUME_DOWN = '\u{f027}',
    ICON_VOLUME_UP = '\u{f028}',
    ICON_QRCODE = '\u{f029}',
    ICON_BARCODE = '\u{f02a}',
    ICON_TAG = '\u{f02b}',
    ICON_TAGS = '\u{f02c}',
    ICON_BOOK = '\u{f02d}',
    ICON_BOOKMARK = '\u{f02e}',
    ICON_PRINT = '\u{f02f}',
    ICON_CAMERA = '\u{f030}',
    ICON_FONT = '\u{f031}',
    ICON_BOLD = '\u{f032}',
    ICON_ITALIC = '\u{f033}',
    ICON_TEXT_HEIGHT = '\u{f034}',
    ICON_TEXT_WIDTH = '\u{f035}',
    ICON_ALIGN_LEFT = '\u{f036}',
    ICON_ALIGN_CENTER = '\u{f037}',
    ICON_ALIGN_RIGHT = '\u{f038}',
    ICON_ALIGN_JUSTIFY = '\u{f039}',
    ICON_LIST = '\u{f03a}',
    ICON_OUTDENT = '\u{f03b}',
    ICON_INDENT = '\u{f03c}',
    ICON_VIDEO_CAMERA = '\u{f03d}',
    ICON_PICTURE_O = '\u{f03e}',
    ICON_PENCIL = '\u{f040}',
    ICON_MAP_MARKER = '\u{f041}',
    ICON_ADJUST = '\u{f042}',
    ICON_TINT = '\u{f043}',
    ICON_PENCIL_SQUARE_O = '\u{f044}',
    ICON_SHARE_SQUARE_O = '\u{f045}',
    ICON_CHECK_SQUARE_O = '\u{f046}',
    ICON_ARROWS = '\u{f047}',
    ICON_STEP_BACKWARD = '\u{f048}',
    ICON_FAST_BACKWARD = '\u{f049}',
    ICON_BACKWARD = '\u{f04a}',
    ICON_PLAY = '\u{f04b}',
    ICON_PAUSE = '\u{f04c}',
    ICON_STOP = '\u{f04d}',
    ICON_FORWARD = '\u{f04e}',
    ICON_FAST_FORWARD = '\u{f050}',
    ICON_STEP_FORWARD = '\u{f051}',
    ICON_EJECT = '\u{f052}',
    ICON_CHEVRON_LEFT = '\u{f053}',
    ICON_CHEVRON_RIGHT = '\u{f054}',
    ICON_PLUS_CIRCLE = '\u{f055}',
    ICON_MINUS_CIRCLE = '\u{f056}',
    ICON_TIMES_CIRCLE = '\u{f057}',
    ICON_CHECK_CIRCLE = '\u{f058}',
    ICON_QUESTION_CIRCLE = '\u{f059}',
    ICON_INFO_CIRCLE = '\u{f05a}',
    ICON_CROSSHAIRS = '\u{f05b}',
    ICON_TIMES_CIRCLE_O = '\u{f05c}',
    ICON_CHECK_CIRCLE_O = '\u{f05d}',
    ICON_BAN = '\u{f05e}',
    ICON_ARROW_LEFT = '\u{f060}',
    ICON_ARROW_RIGHT = '\u{f061}',
    ICON_ARROW_UP = '\u{f062}',
    ICON_ARROW_DOWN = '\u{f063}',
    ICON_SHARE = '\u{f064}',
    ICON_EXPAND = '\u{f065}',
    ICON_COMPRESS = '\u{f066}',
    ICON_PLUS = '\u{f067}',
    ICON_MINUS = '\u{f068}',
    ICON_ASTERISK = '\u{f069}',
    ICON_EXCLAMATION_CIRCLE = '\u{f06a}',
    ICON_GIFT = '\u{f06b}',
    ICON_LEAF = '\u{f06c}',
    ICON_FIRE = '\u{f06d}',
    ICON_EYE = '\u{f06e}',
    ICON_EYE_SLASH = '\u{f070}',
    ICON_EXCLAMATION_TRIANGLE = '\u{f071}',
    ICON_PLANE = '\u{f072}',
    ICON_CALENDAR = '\u{f073}',
    ICON_RANDOM = '\u{f074}',
    ICON_COMMENT = '\u{f075}',
    ICON_MAGNET = '\u{f076}',
    ICON_CHEVRON_UP = '\u{f077}',
    ICON_CHEVRON_DOWN = '\u{f078}',
    ICON_RETWEET = '\u{f079}',
    ICON_SHOPPING_CART = '\u{f07a}',
    ICON_FOLDER = '\u{f07b}',
    ICON_FOLDER_OPEN = '\u{f07c}',
    ICON_ARROWS_V = '\u{f07d}',
    ICON_ARROWS_H = '\u{f07e}',
    ICON_BAR_CHART = '\u{f080}',
    ICON_TWITTER_SQUARE = '\u{f081}',
    ICON_FACEBOOK_SQUARE = '\u{f082}',
    ICON_CAMERA_RETRO = '\u{f083}',
    ICON_KEY = '\u{f084}',
    ICON_COGS = '\u{f085}',
    ICON_COMMENTS = '\u{f086}',
    ICON_THUMBS_O_UP = '\u{f087}',
    ICON_THUMBS_O_DOWN = '\u{f088}',
    ICON_STAR_HALF = '\u{f089}',
    ICON_HEART_O = '\u{f08a}',
    ICON_SIGN_OUT = '\u{f08b}',
    ICON_LINKEDIN_SQUARE = '\u{f08c}',
    ICON_THUMB_TACK = '\u{f08d}',
    ICON_EXTERNAL_LINK = '\u{f08e}',
    ICON_SIGN_IN = '\u{f090}',
    ICON_TROPHY = '\u{f091}',
    ICON_GITHUB_SQUARE = '\u{f092}',
    ICON_UPLOAD = '\u{f093}',
    ICON_LEMON_O = '\u{f094}',
    ICON_PHONE = '\u{f095}',
    ICON_SQUARE_O = '\u{f096}',
    ICON_BOOKMARK_O = '\u{f097}',
    ICON_PHONE_SQUARE = '\u{f098}',
    ICON_TWITTER = '\u{f099}',
    ICON_FACEBOOK = '\u{f09a}',
    ICON_GITHUB = '\u{f09b}',
    ICON_UNLOCK = '\u{f09c}',
    ICON_CREDIT_CARD = '\u{f09d}',
    ICON_RSS = '\u{f09e}',
    ICON_HDD_O = '\u{f0a0}',
    ICON_BULLHORN = '\u{f0a1}',
    ICON_BELL = '\u{f0f3}',
    ICON_CERTIFICATE = '\u{f0a3}',
    ICON_HAND_O_RIGHT = '\u{f0a4}',
    ICON_HAND_O_LEFT = '\u{f0a5}',
    ICON_HAND_O_UP = '\u{f0a6}',
    ICON_HAND_O_DOWN = '\u{f0a7}',
    ICON_ARROW_CIRCLE_LEFT = '\u{f0a8}',
    ICON_ARROW_CIRCLE_RIGHT = '\u{f0a9}',
    ICON_ARROW_CIRCLE_UP = '\u{f0aa}',
    ICON_ARROW_CIRCLE_DOWN = '\u{f0ab}',
    ICON_GLOBE = '\u{f0ac}',
    ICON_WRENCH = '\u{f0ad}',
    ICON_TASKS = '\u{f0ae}',
    ICON_FILTER = '\u{f0b0}',
    ICON_BRIEFCASE = '\u{f0b1}',
    ICON_ARROWS_ALT = '\u{f0b2}',
    ICON_USERS = '\u{f0c0}',
    ICON_LINK = '\u{f0c1}',
    ICON_CLOUD = '\u{f0c2}',
    ICON_FLASK = '\u{f0c3}',
    ICON_SCISSORS = '\u{f0c4}',
    ICON_FILES_O = '\u{f0c5}',
    ICON_PAPERCLIP = '\u{f0c6}',
    ICON_FLOPPY_O = '\u{f0c7}',
    ICON_SQUARE = '\u{f0c8}',
    ICON_BARS = '\u{f0c9}',
    ICON_LIST_UL = '\u{f0ca}',
    ICON_LIST_OL = '\u{f0cb}',
    ICON_STRIKETHROUGH = '\u{f0cc}',
    ICON_UNDERLINE = '\u{f0cd}',
    ICON_TABLE = '\u{f0ce}',
    ICON_MAGIC = '\u{f0d0}',
    ICON_TRUCK = '\u{f0d1}',
    ICON_PINTEREST = '\u{f0d2}',
    ICON_PINTEREST_SQUARE = '\u{f0d3}',
    ICON_GOOGLE_PLUS_SQUARE = '\u{f0d4}',
    ICON_GOOGLE_PLUS = '\u{f0d5}',
    ICON_MONEY = '\u{f0d6}',
    ICON_CARET_DOWN = '\u{f0d7}',
    ICON_CARET_UP = '\u{f0d8}',
    ICON_CARET_LEFT = '\u{f0d9}',
    ICON_CARET_RIGHT = '\u{f0da}',
    ICON_COLUMNS = '\u{f0db}',
    ICON_SORT = '\u{f0dc}',
    ICON_SORT_DESC = '\u{f0dd}',
    ICON_SORT_ASC = '\u{f0de}',
    ICON_ENVELOPE = '\u{f0e0}',
    ICON_LINKEDIN = '\u{f0e1}',
    ICON_UNDO = '\u{f0e2}',
    ICON_GAVEL = '\u{f0e3}',
    ICON_TACHOMETER = '\u{f0e4}',
    ICON_COMMENT_O = '\u{f0e5}',
    ICON_COMMENTS_O = '\u{f0e6}',
    ICON_BOLT = '\u{f0e7}',
    ICON_SITEMAP = '\u{f0e8}',
    ICON_UMBRELLA = '\u{f0e9}',
    ICON_CLIPBOARD = '\u{f0ea}',
    ICON_LIGHTBULB_O = '\u{f0eb}',
    ICON_EXCHANGE = '\u{f0ec}',
    ICON_CLOUD_DOWNLOAD = '\u{f0ed}',
    ICON_CLOUD_UPLOAD = '\u{f0ee}',
    ICON_USER_MD = '\u{f0f0}',
    ICON_STETHOSCOPE = '\u{f0f1}',
    ICON_SUITCASE = '\u{f0f2}',
    ICON_BELL_O = '\u{f0a2}',
    ICON_COFFEE = '\u{f0f4}',
    ICON_CUTLERY = '\u{f0f5}',
    ICON_FILE_TEXT_O = '\u{f0f6}',
    ICON_BUILDING_O = '\u{f0f7}',
    ICON_HOSPITAL_O = '\u{f0f8}',
    ICON_AMBULANCE = '\u{f0f9}',
    ICON_MEDKIT = '\u{f0fa}',
    ICON_FIGHTER_JET = '\u{f0fb}',
    ICON_BEER = '\u{f0fc}',
    ICON_H_SQUARE = '\u{f0fd}',
    ICON_PLUS_SQUARE = '\u{f0fe}',
    ICON_ANGLE_DOUBLE_LEFT = '\u{f100}',
    ICON_ANGLE_DOUBLE_RIGHT = '\u{f101}',
    ICON_ANGLE_DOUBLE_UP = '\u{f102}',
    ICON_ANGLE_DOUBLE_DOWN = '\u{f103}',
    ICON_ANGLE_LEFT = '\u{f104}',
    ICON_ANGLE_RIGHT = '\u{f105}',
    ICON_ANGLE_UP = '\u{f106}',
    ICON_ANGLE_DOWN = '\u{f107}',
    ICON_DESKTOP = '\u{f108}',
    ICON_LAPTOP = '\u{f109}',
    ICON_TABLET = '\u{f10a}',
    ICON_MOBILE = '\u{f10b}',
    ICON_CIRCLE_O = '\u{f10c}',
    ICON_QUOTE_LEFT = '\u{f10d}',
    ICON_QUOTE_RIGHT = '\u{f10e}',
    ICON_SPINNER = '\u{f110}',
    ICON_CIRCLE = '\u{f111}',
    ICON_REPLY = '\u{f112}',
    ICON_GITHUB_ALT = '\u{f113}',
    ICON_FOLDER_O = '\u{f114}',
    ICON_FOLDER_OPEN_O = '\u{f115}',
    ICON_SMILE_O = '\u{f118}',
    ICON_FROWN_O = '\u{f119}',
    ICON_MEH_O = '\u{f11a}',
    ICON_GAMEPAD = '\u{f11b}',
    ICON_KEYBOARD_O = '\u{f11c}',
    ICON_FLAG_O = '\u{f11d}',
    ICON_FLAG_CHECKERED = '\u{f11e}',
    ICON_TERMINAL = '\u{f120}',
    ICON_CODE = '\u{f121}',
    ICON_REPLY_ALL = '\u{f122}',
    ICON_STAR_HALF_O = '\u{f123}',
    ICON_LOCATION_ARROW = '\u{f124}',
    ICON_CROP = '\u{f125}',
    ICON_CODE_FORK = '\u{f126}',
    ICON_CHAIN_BROKEN = '\u{f127}',
    ICON_QUESTION = '\u{f128}',
    ICON_INFO = '\u{f129}',
    ICON_EXCLAMATION = '\u{f12a}',
    ICON_SUPERSCRIPT = '\u{f12b}',
    ICON_SUBSCRIPT = '\u{f12c}',
    ICON_ERASER = '\u{f12d}',
    ICON_PUZZLE_PIECE = '\u{f12e}',
    ICON_MICROPHONE = '\u{f130}',
    ICON_MICROPHONE_SLASH = '\u{f131}',
    ICON_SHIELD = '\u{f132}',
    ICON_CALENDAR_O = '\u{f133}',
    ICON_FIRE_EXTINGUISHER = '\u{f134}',
    ICON_ROCKET = '\u{f135}',
    ICON_MAXCDN = '\u{f136}',
    ICON_CHEVRON_CIRCLE_LEFT = '\u{f137}',
    ICON_CHEVRON_CIRCLE_RIGHT = '\u{f138}',
    ICON_CHEVRON_CIRCLE_UP = '\u{f139}',
    ICON_CHEVRON_CIRCLE_DOWN = '\u{f13a}',
    ICON_HTML5 = '\u{f13b}',
    ICON_CSS3 = '\u{f13c}',
    ICON_ANCHOR = '\u{f13d}',
    ICON_UNLOCK_ALT = '\u{f13e}',
    ICON_BULLSEYE = '\u{f140}',
    ICON_ELLIPSIS_H = '\u{f141}',
    ICON_ELLIPSIS_V = '\u{f142}',
    ICON_RSS_SQUARE = '\u{f143}',
    ICON_PLAY_CIRCLE = '\u{f144}',
    ICON_TICKET = '\u{f145}',
    ICON_MINUS_SQUARE = '\u{f146}',
    ICON_MINUS_SQUARE_O = '\u{f147}',
    ICON_LEVEL_UP = '\u{f148}',
    ICON_LEVEL_DOWN = '\u{f149}',
    ICON_CHECK_SQUARE = '\u{f14a}',
    ICON_PENCIL_SQUARE = '\u{f14b}',
    ICON_EXTERNAL_LINK_SQUARE = '\u{f14c}',
    ICON_SHARE_SQUARE = '\u{f14d}',
    ICON_COMPASS = '\u{f14e}',
    ICON_CARET_SQUARE_O_DOWN = '\u{f150}',
    ICON_CARET_SQUARE_O_UP = '\u{f151}',
    ICON_CARET_SQUARE_O_RIGHT = '\u{f152}',
    ICON_EUR = '\u{f153}',
    ICON_GBP = '\u{f154}',
    ICON_USD = '\u{f155}',
    ICON_INR = '\u{f156}',
    ICON_JPY = '\u{f157}',
    ICON_RUB = '\u{f158}',
    ICON_KRW = '\u{f159}',
    ICON_BTC = '\u{f15a}',
    ICON_FILE = '\u{f15b}',
    ICON_FILE_TEXT = '\u{f15c}',
    ICON_SORT_ALPHA_ASC = '\u{f15d}',
    ICON_SORT_ALPHA_DESC = '\u{f15e}',
    ICON_SORT_AMOUNT_ASC = '\u{f160}',
    ICON_SORT_AMOUNT_DESC = '\u{f161}',
    ICON_SORT_NUMERIC_ASC = '\u{f162}',
    ICON_SORT_NUMERIC_DESC = '\u{f163}',
    ICON_THUMBS_UP = '\u{f164}',
    ICON_THUMBS_DOWN = '\u{f165}',
    ICON_YOUTUBE_SQUARE = '\u{f166}',
    ICON_YOUTUBE = '\u{f167}',
    ICON_XING = '\u{f168}',
    ICON_XING_SQUARE = '\u{f169}',
    ICON_YOUTUBE_PLAY = '\u{f16a}',
    ICON_DROPBOX = '\u{f16b}',
    ICON_STACK_OVERFLOW = '\u{f16c}',
    ICON_INSTAGRAM = '\u{f16d}',
    ICON_FLICKR = '\u{f16e}',
    ICON_ADN = '\u{f170}',
    ICON_BITBUCKET = '\u{f171}',
    ICON_BITBUCKET_SQUARE = '\u{f172}',
    ICON_TUMBLR = '\u{f173}',
    ICON_TUMBLR_SQUARE = '\u{f174}',
    ICON_LONG_ARROW_DOWN = '\u{f175}',
    ICON_LONG_ARROW_UP = '\u{f176}',
    ICON_LONG_ARROW_LEFT = '\u{f177}',
    ICON_LONG_ARROW_RIGHT = '\u{f178}',
    ICON_APPLE = '\u{f179}',
    ICON_WINDOWS = '\u{f17a}',
    ICON_ANDROID = '\u{f17b}',
    ICON_LINUX = '\u{f17c}',
    ICON_DRIBBBLE = '\u{f17d}',
    ICON_SKYPE = '\u{f17e}',
    ICON_FOURSQUARE = '\u{f180}',
    ICON_TRELLO = '\u{f181}',
    ICON_FEMALE = '\u{f182}',
    ICON_MALE = '\u{f183}',
    ICON_GRATIPAY = '\u{f184}',
    ICON_SUN_O = '\u{f185}',
    ICON_MOON_O = '\u{f186}',
    ICON_ARCHIVE = '\u{f187}',
    ICON_BUG = '\u{f188}',
    ICON_VK = '\u{f189}',
    ICON_WEIBO = '\u{f18a}',
    ICON_RENREN = '\u{f18b}',
    ICON_PAGELINES = '\u{f18c}',
    ICON_STACK_EXCHANGE = '\u{f18d}',
    ICON_ARROW_CIRCLE_O_RIGHT = '\u{f18e}',
    ICON_ARROW_CIRCLE_O_LEFT = '\u{f190}',
    ICON_CARET_SQUARE_O_LEFT = '\u{f191}',
    ICON_DOT_CIRCLE_O = '\u{f192}',
    ICON_WHEELCHAIR = '\u{f193}',
    ICON_VIMEO_SQUARE = '\u{f194}',
    ICON_TRY = '\u{f195}',
    ICON_PLUS_SQUARE_O = '\u{f196}',
    ICON_SPACE_SHUTTLE = '\u{f197}',
    ICON_SLACK = '\u{f198}',
    ICON_ENVELOPE_SQUARE = '\u{f199}',
    ICON_WORDPRESS = '\u{f19a}',
    ICON_OPENID = '\u{f19b}',
    ICON_UNIVERSITY = '\u{f19c}',
    ICON_GRADUATION_CAP = '\u{f19d}',
    ICON_YAHOO = '\u{f19e}',
    ICON_GOOGLE = '\u{f1a0}',
    ICON_REDDIT = '\u{f1a1}',
    ICON_REDDIT_SQUARE = '\u{f1a2}',
    ICON_STUMBLEUPON_CIRCLE = '\u{f1a3}',
    ICON_STUMBLEUPON = '\u{f1a4}',
    ICON_DELICIOUS = '\u{f1a5}',
    ICON_DIGG = '\u{f1a6}',
    ICON_PIED_PIPER_PP = '\u{f1a7}',
    ICON_PIED_PIPER_ALT = '\u{f1a8}',
    ICON_DRUPAL = '\u{f1a9}',
    ICON_JOOMLA = '\u{f1aa}',
    ICON_LANGUAGE = '\u{f1ab}',
    ICON_FAX = '\u{f1ac}',
    ICON_BUILDING = '\u{f1ad}',
    ICON_CHILD = '\u{f1ae}',
    ICON_PAW = '\u{f1b0}',
    ICON_SPOON = '\u{f1b1}',
    ICON_CUBE = '\u{f1b2}',
    ICON_CUBES = '\u{f1b3}',
    ICON_BEHANCE = '\u{f1b4}',
    ICON_BEHANCE_SQUARE = '\u{f1b5}',
    ICON_STEAM = '\u{f1b6}',
    ICON_STEAM_SQUARE = '\u{f1b7}',
    ICON_RECYCLE = '\u{f1b8}',
    ICON_CAR = '\u{f1b9}',
    ICON_TAXI = '\u{f1ba}',
    ICON_TREE = '\u{f1bb}',
    ICON_SPOTIFY = '\u{f1bc}',
    ICON_DEVIANTART = '\u{f1bd}',
    ICON_SOUNDCLOUD = '\u{f1be}',
    ICON_DATABASE = '\u{f1c0}',
    ICON_FILE_PDF_O = '\u{f1c1}',
    ICON_FILE_WORD_O = '\u{f1c2}',
    ICON_FILE_EXCEL_O = '\u{f1c3}',
    ICON_FILE_POWERPOINT_O = '\u{f1c4}',
    ICON_FILE_IMAGE_O = '\u{f1c5}',
    ICON_FILE_ARCHIVE_O = '\u{f1c6}',
    ICON_FILE_AUDIO_O = '\u{f1c7}',
    ICON_FILE_VIDEO_O = '\u{f1c8}',
    ICON_FILE_CODE_O = '\u{f1c9}',
    ICON_VINE = '\u{f1ca}',
    ICON_CODEPEN = '\u{f1cb}',
    ICON_JSFIDDLE = '\u{f1cc}',
    ICON_LIFE_RING = '\u{f1cd}',
    ICON_CIRCLE_O_NOTCH = '\u{f1ce}',
    ICON_REBEL = '\u{f1d0}',
    ICON_EMPIRE = '\u{f1d1}',
    ICON_GIT_SQUARE = '\u{f1d2}',
    ICON_GIT = '\u{f1d3}',
    ICON_HACKER_NEWS = '\u{f1d4}',
    ICON_TENCENT_WEIBO = '\u{f1d5}',
    ICON_QQ = '\u{f1d6}',
    ICON_WEIXIN = '\u{f1d7}',
    ICON_PAPER_PLANE = '\u{f1d8}',
    ICON_PAPER_PLANE_O = '\u{f1d9}',
    ICON_HISTORY = '\u{f1da}',
    ICON_CIRCLE_THIN = '\u{f1db}',
    ICON_HEADER = '\u{f1dc}',
    ICON_PARAGRAPH = '\u{f1dd}',
    ICON_SLIDERS = '\u{f1de}',
    ICON_SHARE_ALT = '\u{f1e0}',
    ICON_SHARE_ALT_SQUARE = '\u{f1e1}',
    ICON_BOMB = '\u{f1e2}',
    ICON_FUTBOL_O = '\u{f1e3}',
    ICON_TTY = '\u{f1e4}',
    ICON_BINOCULARS = '\u{f1e5}',
    ICON_PLUG = '\u{f1e6}',
    ICON_SLIDESHARE = '\u{f1e7}',
    ICON_TWITCH = '\u{f1e8}',
    ICON_YELP = '\u{f1e9}',
    ICON_NEWSPAPER_O = '\u{f1ea}',
    ICON_WIFI = '\u{f1eb}',
    ICON_CALCULATOR = '\u{f1ec}',
    ICON_PAYPAL = '\u{f1ed}',
    ICON_GOOGLE_WALLET = '\u{f1ee}',
    ICON_CC_VISA = '\u{f1f0}',
    ICON_CC_MASTERCARD = '\u{f1f1}',
    ICON_CC_DISCOVER = '\u{f1f2}',
    ICON_CC_AMEX = '\u{f1f3}',
    ICON_CC_PAYPAL = '\u{f1f4}',
    ICON_CC_STRIPE = '\u{f1f5}',
    ICON_BELL_SLASH = '\u{f1f6}',
    ICON_BELL_SLASH_O = '\u{f1f7}',
    ICON_TRASH = '\u{f1f8}',
    ICON_COPYRIGHT = '\u{f1f9}',
    ICON_AT = '\u{f1fa}',
    ICON_EYEDROPPER = '\u{f1fb}',
    ICON_PAINT_BRUSH = '\u{f1fc}',
    ICON_BIRTHDAY_CAKE = '\u{f1fd}',
    ICON_AREA_CHART = '\u{f1fe}',
    ICON_PIE_CHART = '\u{f200}',
    ICON_LINE_CHART = '\u{f201}',
    ICON_LASTFM = '\u{f202}',
    ICON_LASTFM_SQUARE = '\u{f203}',
    ICON_TOGGLE_OFF = '\u{f204}',
    ICON_TOGGLE_ON = '\u{f205}',
    ICON_BICYCLE = '\u{f206}',
    ICON_BUS = '\u{f207}',
    ICON_IOXHOST = '\u{f208}',
    ICON_ANGELLIST = '\u{f209}',
    ICON_CC = '\u{f20a}',
    ICON_ILS = '\u{f20b}',
    ICON_MEANPATH = '\u{f20c}',
    ICON_BUYSELLADS = '\u{f20d}',
    ICON_CONNECTDEVELOP = '\u{f20e}',
    ICON_DASHCUBE = '\u{f210}',
    ICON_FORUMBEE = '\u{f211}',
    ICON_LEANPUB = '\u{f212}',
    ICON_SELLSY = '\u{f213}',
    ICON_SHIRTSINBULK = '\u{f214}',
    ICON_SIMPLYBUILT = '\u{f215}',
    ICON_SKYATLAS = '\u{f216}',
    ICON_CART_PLUS = '\u{f217}',
    ICON_CART_ARROW_DOWN = '\u{f218}',
    ICON_DIAMOND = '\u{f219}',
    ICON_SHIP = '\u{f21a}',
    ICON_USER_SECRET = '\u{f21b}',
    ICON_MOTORCYCLE = '\u{f21c}',
    ICON_STREET_VIEW = '\u{f21d}',
    ICON_HEARTBEAT = '\u{f21e}',
    ICON_VENUS = '\u{f221}',
    ICON_MARS = '\u{f222}',
    ICON_MERCURY = '\u{f223}',
    ICON_TRANSGENDER = '\u{f224}',
    ICON_TRANSGENDER_ALT = '\u{f225}',
    ICON_VENUS_DOUBLE = '\u{f226}',
    ICON_MARS_DOUBLE = '\u{f227}',
    ICON_VENUS_MARS = '\u{f228}',
    ICON_MARS_STROKE = '\u{f229}',
    ICON_MARS_STROKE_V = '\u{f22a}',
    ICON_MARS_STROKE_H = '\u{f22b}',
    ICON_NEUTER = '\u{f22c}',
    ICON_GENDERLESS = '\u{f22d}',
    ICON_FACEBOOK_OFFICIAL = '\u{f230}',
    ICON_PINTEREST_P = '\u{f231}',
    ICON_WHATSAPP = '\u{f232}',
    ICON_SERVER = '\u{f233}',
    ICON_USER_PLUS = '\u{f234}',
    ICON_USER_TIMES = '\u{f235}',
    ICON_BED = '\u{f236}',
    ICON_VIACOIN = '\u{f237}',
    ICON_TRAIN = '\u{f238}',
    ICON_SUBWAY = '\u{f239}',
    ICON_MEDIUM = '\u{f23a}',
    ICON_Y_COMBINATOR = '\u{f23b}',
    ICON_OPTIN_MONSTER = '\u{f23c}',
    ICON_OPENCART = '\u{f23d}',
    ICON_EXPEDITEDSSL = '\u{f23e}',
    ICON_BATTERY_FULL = '\u{f240}',
    ICON_BATTERY_THREE_QUARTERS = '\u{f241}',
    ICON_BATTERY_HALF = '\u{f242}',
    ICON_BATTERY_QUARTER = '\u{f243}',
    ICON_BATTERY_EMPTY = '\u{f244}',
    ICON_MOUSE_POINTER = '\u{f245}',
    ICON_I_CURSOR = '\u{f246}',
    ICON_OBJECT_GROUP = '\u{f247}',
    ICON_OBJECT_UNGROUP = '\u{f248}',
    ICON_STICKY_NOTE = '\u{f249}',
    ICON_STICKY_NOTE_O = '\u{f24a}',
    ICON_CC_JCB = '\u{f24b}',
    ICON_CC_DINERS_CLUB = '\u{f24c}',
    ICON_CLONE = '\u{f24d}',
    ICON_BALANCE_SCALE = '\u{f24e}',
    ICON_HOURGLASS_O = '\u{f250}',
    ICON_HOURGLASS_START = '\u{f251}',
    ICON_HOURGLASS_HALF = '\u{f252}',
    ICON_HOURGLASS_END = '\u{f253}',
    ICON_HOURGLASS = '\u{f254}',
    ICON_HAND_ROCK_O = '\u{f255}',
    ICON_HAND_PAPER_O = '\u{f256}',
    ICON_HAND_SCISSORS_O = '\u{f257}',
    ICON_HAND_LIZARD_O = '\u{f258}',
    ICON_HAND_SPOCK_O = '\u{f259}',
    ICON_HAND_POINTER_O = '\u{f25a}',
    ICON_HAND_PEACE_O = '\u{f25b}',
    ICON_TRADEMARK = '\u{f25c}',
    ICON_REGISTERED = '\u{f25d}',
    ICON_CREATIVE_COMMONS = '\u{f25e}',
    ICON_GG = '\u{f260}',
    ICON_GG_CIRCLE = '\u{f261}',
    ICON_TRIPADVISOR = '\u{f262}',
    ICON_ODNOKLASSNIKI = '\u{f263}',
    ICON_ODNOKLASSNIKI_SQUARE = '\u{f264}',
    ICON_GET_POCKET = '\u{f265}',
    ICON_WIKIPEDIA_W = '\u{f266}',
    ICON_SAFARI = '\u{f267}',
    ICON_CHROME = '\u{f268}',
    ICON_FIREFOX = '\u{f269}',
    ICON_OPERA = '\u{f26a}',
    ICON_INTERNET_EXPLORER = '\u{f26b}',
    ICON_TELEVISION = '\u{f26c}',
    ICON_CONTAO = '\u{f26d}',
    ICON_500PX = '\u{f26e}',
    ICON_AMAZON = '\u{f270}',
    ICON_CALENDAR_PLUS_O = '\u{f271}',
    ICON_CALENDAR_MINUS_O = '\u{f272}',
    ICON_CALENDAR_TIMES_O = '\u{f273}',
    ICON_CALENDAR_CHECK_O = '\u{f274}',
    ICON_INDUSTRY = '\u{f275}',
    ICON_MAP_PIN = '\u{f276}',
    ICON_MAP_SIGNS = '\u{f277}',
    ICON_MAP_O = '\u{f278}',
    ICON_MAP = '\u{f279}',
    ICON_COMMENTING = '\u{f27a}',
    ICON_COMMENTING_O = '\u{f27b}',
    ICON_HOUZZ = '\u{f27c}',
    ICON_VIMEO = '\u{f27d}',
    ICON_BLACK_TIE = '\u{f27e}',
    ICON_FONTICONS = '\u{f280}',
    ICON_REDDIT_ALIEN = '\u{f281}',
    ICON_EDGE = '\u{f282}',
    ICON_CREDIT_CARD_ALT = '\u{f283}',
    ICON_CODIEPIE = '\u{f284}',
    ICON_MODX = '\u{f285}',
    ICON_FORT_AWESOME = '\u{f286}',
    ICON_USB = '\u{f287}',
    ICON_PRODUCT_HUNT = '\u{f288}',
    ICON_MIXCLOUD = '\u{f289}',
    ICON_SCRIBD = '\u{f28a}',
    ICON_PAUSE_CIRCLE = '\u{f28b}',
    ICON_PAUSE_CIRCLE_O = '\u{f28c}',
    ICON_STOP_CIRCLE = '\u{f28d}',
    ICON_STOP_CIRCLE_O = '\u{f28e}',
    ICON_SHOPPING_BAG = '\u{f290}',
    ICON_SHOPPING_BASKET = '\u{f291}',
    ICON_HASHTAG = '\u{f292}',
    ICON_BLUETOOTH = '\u{f293}',
    ICON_BLUETOOTH_B = '\u{f294}',
    ICON_PERCENT = '\u{f295}',
    ICON_GITLAB = '\u{f296}',
    ICON_WPBEGINNER = '\u{f297}',
    ICON_WPFORMS = '\u{f298}',
    ICON_ENVIRA = '\u{f299}',
    ICON_UNIVERSAL_ACCESS = '\u{f29a}',
    ICON_WHEELCHAIR_ALT = '\u{f29b}',
    ICON_QUESTION_CIRCLE_O = '\u{f29c}',
    ICON_BLIND = '\u{f29d}',
    ICON_AUDIO_DESCRIPTION = '\u{f29e}',
    ICON_VOLUME_CONTROL_PHONE = '\u{f2a0}',
    ICON_BRAILLE = '\u{f2a1}',
    ICON_ASSISTIVE_LISTENING_SYSTEMS = '\u{f2a2}',
    ICON_AMERICAN_SIGN_LANGUAGE_INTERPRETING = '\u{f2a3}',
    ICON_DEAF = '\u{f2a4}',
    ICON_GLIDE = '\u{f2a5}',
    ICON_GLIDE_G = '\u{f2a6}',
    ICON_SIGN_LANGUAGE = '\u{f2a7}',
    ICON_LOW_VISION = '\u{f2a8}',
    ICON_VIADEO = '\u{f2a9}',
    ICON_VIADEO_SQUARE = '\u{f2aa}',
    ICON_SNAPCHAT = '\u{f2ab}',
    ICON_SNAPCHAT_GHOST = '\u{f2ac}',
    ICON_SNAPCHAT_SQUARE = '\u{f2ad}',
    ICON_PIED_PIPER = '\u{f2ae}',
    ICON_FIRST_ORDER = '\u{f2b0}',
    ICON_YOAST = '\u{f2b1}',
    ICON_THEMEISLE = '\u{f2b2}',
    ICON_GOOGLE_PLUS_OFFICIAL = '\u{f2b3}',
    ICON_FONT_AWESOME = '\u{f2b4}',
    ICON_HANDSHAKE_O = '\u{f2b5}',
    ICON_ENVELOPE_OPEN = '\u{f2b6}',
    ICON_ENVELOPE_OPEN_O = '\u{f2b7}',
    ICON_LINODE = '\u{f2b8}',
    ICON_ADDRESS_BOOK = '\u{f2b9}',
    ICON_ADDRESS_BOOK_O = '\u{f2ba}',
    ICON_ADDRESS_CARD = '\u{f2bb}',
    ICON_ADDRESS_CARD_O = '\u{f2bc}',
    ICON_USER_CIRCLE = '\u{f2bd}',
    ICON_USER_CIRCLE_O = '\u{f2be}',
    ICON_USER_O = '\u{f2c0}',
    ICON_ID_BADGE = '\u{f2c1}',
    ICON_ID_CARD = '\u{f2c2}',
    ICON_ID_CARD_O = '\u{f2c3}',
    ICON_QUORA = '\u{f2c4}',
    ICON_FREE_CODE_CAMP = '\u{f2c5}',
    ICON_TELEGRAM = '\u{f2c6}',
    ICON_THERMOMETER_FULL = '\u{f2c7}',
    ICON_THERMOMETER_THREE_QUARTERS = '\u{f2c8}',
    ICON_THERMOMETER_HALF = '\u{f2c9}',
    ICON_THERMOMETER_QUARTER = '\u{f2ca}',
    ICON_THERMOMETER_EMPTY = '\u{f2cb}',
    ICON_SHOWER = '\u{f2cc}',
    ICON_BATH = '\u{f2cd}',
    ICON_PODCAST = '\u{f2ce}',
    ICON_WINDOW_MAXIMIZE = '\u{f2d0}',
    ICON_WINDOW_MINIMIZE = '\u{f2d1}',
    ICON_WINDOW_RESTORE = '\u{f2d2}',
    ICON_WINDOW_CLOSE = '\u{f2d3}',
    ICON_WINDOW_CLOSE_O = '\u{f2d4}',
    ICON_BANDCAMP = '\u{f2d5}',
    ICON_GRAV = '\u{f2d6}',
    ICON_ETSY = '\u{f2d7}',
    ICON_IMDB = '\u{f2d8}',
    ICON_RAVELRY = '\u{f2d9}',
    ICON_EERCAST = '\u{f2da}',
    ICON_MICROCHIP = '\u{f2db}',
    ICON_SNOWFLAKE_O = '\u{f2dc}',
    ICON_SUPERPOWERS = '\u{f2dd}',
    ICON_WPEXPLORER = '\u{f2de}',
    ICON_MEETUP = '\u{f2e0}',
}

return icons