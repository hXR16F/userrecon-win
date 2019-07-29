@echo off & color 0f
:: UserRecon v1.0
:: Author: @thelinuxchoice (Windows version: @hXR16F)
:: https://github.com/thelinuxchoice/userrecon
:: Give me the credits if you use any part of this code, read the License.

echo                                                    [92m.-""""-. [0m
echo                                                   [92m/        \ [0m
echo [97m  _   _               ____                       [0m[92m/_        _\ [0m
echo [97m ^| ^| ^| ^|___  ___ _ __^|  _ \ ___  ___ ___  _ __  [0m[92m// \      / \\ [0m
echo [97m ^| ^| ^| / __^|/ _ \ '__^| ^|_) / _ \/ __/ _ \^| '_ \ [0m[92m^|\__\    /__/^| [0m
echo [97m ^| ^|_^| \__ \  __/ ^|  ^|  _ ^<  __/ (_^| (_) ^| ^| ^| ^| [0m[92m\    ^|^|    / [0m
echo [97m  \___/^|___/\___^|_^|  ^|_^| \_\___^|\___\___/^|_^| ^|_^|  [0m[92m\        / [0m
echo                    [92mv1.0, Author: @thelinuxchoice  [0m [92m\  __  / [0m
echo                         [92mWindows Version: @hXR16F [0m   [92m'.__.' [0m
echo.

set /p "username=[92m[[0m[97m?[0m[92m] Input Username:[0m [97m"&echo [0m>nul
if exist "%username%.txt" (echo [92m[[0m[97m*[0m[92m] Removing previous file:[0m[97m %username%.txt&del /f /q "%username%.txt" >nul)

echo.&echo [92m[[0m[97m*[0m[92m] Checking username[0m[97m %username%[0m[92m on: [0m

:: Instagram
echo | set /p ".=[97m[[0m[92m+[0m[97m] Instagram: [0m"
curl -s -H "Accept-Language: en" "https://www.instagram.com/%username%" -L -o "_temp.html"
find "The link you followed may be broken" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.instagram.com/%username%
	echo https://www.instagram.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Facebook
echo | set /p ".=[97m[[0m[92m+[0m[97m] Facebook: [0m"
curl -s "https://www.facebook.com/%username%" -L -H "Accept-Language: en" -o "_temp.html"
find "not found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.facebook.com/%username%
	echo https://www.facebook.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Twitter
echo | set /p ".=[97m[[0m[92m+[0m[97m] Twitter: [0m"
curl -s "https://www.twitter.com/%username%" -L -H "Accept-Language: en" -o "_temp.html"
find "page doesn’t exist" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.twitter.com/%username%
	echo https://www.twitter.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: YouTube
echo | set /p ".=[97m[[0m[92m+[0m[97m] YouTube: [0m"
curl -s "https://www.youtube.com/%username%" -L -H "Accept-Language: en" -o "_temp.html"
find "Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.youtube.com/%username%
	echo https://www.youtube.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Blogger
echo | set /p ".=[97m[[0m[92m+[0m[97m] Blogger: [0m"
curl -s "https://%username%.blogspot.com" -L -H "Accept-Language: en" -i -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.blogspot.com
	echo https://%username%.blogspot.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: GooglePlus
echo | set /p ".=[97m[[0m[92m+[0m[97m] GooglePlus: [0m"
curl -s "https://plus.google.com/+%username%/posts" -L -H "Accept-Language: en" -i -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://plus.google.com/+%username%/posts
	echo https://plus.google.com/+%username%/posts> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Reddit
echo | set /p ".=[97m[[0m[92m+[0m[97m] Reddit: [0m"
curl -s -i "https://www.reddit.com/user/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.reddit.com/user/%username%
	echo https://www.reddit.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Wordpress
echo | set /p ".=[97m[[0m[92m+[0m[97m] Wordpress: [0m"
curl -s -i "https://%username%.wordpress.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "Do you want to register" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.wordpress.com
	echo https://%username%.wordpress.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Pinterest
echo | set /p ".=[97m[[0m[92m+[0m[97m] Pinterest: [0m"
curl -s -i "https://www.pinterest.com/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.pinterest.com/%username%
	echo https://www.pinterest.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: GitHub
echo | set /p ".=[97m[[0m[92m+[0m[97m] GitHub: [0m"
curl -s -i "https://www.github.com/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.github.com/%username%
	echo https://www.github.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Tumblr
echo | set /p ".=[97m[[0m[92m+[0m[97m] Tumblr: [0m"
curl -s -i "https://%username%.tumblr.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.tumblr.com
	echo https://%username%.tumblr.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Flickr
echo | set /p ".=[97m[[0m[92m+[0m[97m] Flickr: [0m"
curl -s -i "https://www.flickr.com/people/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.flickr.com/people/%username%
	echo https://www.flickr.com/people/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Steam
echo | set /p ".=[97m[[0m[92m+[0m[97m] Steam: [0m"
curl -s -i "https://steamcommunity.com/id/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "The specified profile could not be found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://steamcommunity.com/id/%username%
	echo https://steamcommunity.com/id/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Vimeo
echo | set /p ".=[97m[[0m[92m+[0m[97m] Vimeo: [0m"
curl -s -i "https://vimeo.com/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://vimeo.com/%username%
	echo https://vimeo.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: SoundCloud
echo | set /p ".=[97m[[0m[92m+[0m[97m] SoundCloud: [0m"
curl -s -i "https://soundcloud.com/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://soundcloud.com/%username%
	echo https://soundcloud.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Disqus
echo | set /p ".=[97m[[0m[92m+[0m[97m] Disqus: [0m"
curl -s -i "https://disqus.com/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "404 NOT FOUND" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://disqus.com/%username%
	echo https://disqus.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Medium
echo | set /p ".=[97m[[0m[92m+[0m[97m] Medium: [0m"
curl -s -i "https://medium.com/@%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "We couldn’t find this page." _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://medium.com/@%username%
	echo https://medium.com/@%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: DeviantArt
echo | set /p ".=[97m[[0m[92m+[0m[97m] DeviantArt: [0m"
curl -s -i "https://%username%.deviantart.com" -H "Accept-Language: en" -L -o "_temp.html"
find "The page you were looking for doesn't exist." _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.deviantart.com
	echo https://%username%.deviantart.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: VK
echo | set /p ".=[97m[[0m[92m+[0m[97m] VK: [0m"
curl -s -i "https://vk.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://vk.com/%username%
	echo https://vk.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: About.me
echo | set /p ".=[97m[[0m[92m+[0m[97m] About.me: [0m"
curl -s -i "https://about.me/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://about.me/%username%
	echo https://about.me/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Imgur
echo | set /p ".=[97m[[0m[92m+[0m[97m] Imgur: [0m"
curl -s -i "https://imgur.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://imgur.com/user/%username%
	echo https://imgur.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: FlipBoard
echo | set /p ".=[97m[[0m[92m+[0m[97m] FlipBoard: [0m"
curl -s -i "https://flipboard.com/@%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://flipboard.com/@%username%
	echo https://flipboard.com/@%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: SlideShare
echo | set /p ".=[97m[[0m[92m+[0m[97m] SlideShare: [0m"
curl -s -i "https://slideshare.net/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://slideshare.net/%username%
	echo https://slideshare.net/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Fotolog
echo | set /p ".=[97m[[0m[92m+[0m[97m] Fotolog: [0m"
curl -s -i "https://fotolog.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://fotolog.com/%username%
	echo https://fotolog.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Spotify
echo | set /p ".=[97m[[0m[92m+[0m[97m] Spotify: [0m"
curl -s -i "https://open.spotify.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://open.spotify.com/user/%username%
	echo https://open.spotify.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: MixCloud
echo | set /p ".=[97m[[0m[92m+[0m[97m] MixCloud: [0m"
curl -s -i "https://www.mixcloud.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "error-message" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.mixcloud.com/%username%
	echo https://www.mixcloud.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Scribd
echo | set /p ".=[97m[[0m[92m+[0m[97m] Scribd: [0m"
curl -s -i "https://www.scribd.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "show_404" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.scribd.com/%username%
	echo https://www.scribd.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Badoo
echo | set /p ".=[97m[[0m[92m+[0m[97m] Badoo: [0m"
curl -s -i "https://www.badoo.com/en/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.badoo.com/en/%username%
	echo https://www.badoo.com/en/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Patreon
echo | set /p ".=[97m[[0m[92m+[0m[97m] Patreon: [0m"
curl -s -i "https://www.patreon.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.patreon.com/%username%
	echo https://www.patreon.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: BitBucket
echo | set /p ".=[97m[[0m[92m+[0m[97m] BitBucket: [0m"
curl -s -i "https://bitbucket.org/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://bitbucket.org/%username%
	echo https://bitbucket.org/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: DailyMotion
echo | set /p ".=[97m[[0m[92m+[0m[97m] DailyMotion: [0m"
curl -s -i "https://www.dailymotion.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.dailymotion.com/%username%
	echo https://www.dailymotion.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Etsy
echo | set /p ".=[97m[[0m[92m+[0m[97m] Etsy: [0m"
curl -s -i "https://www.etsy.com/shop/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.etsy.com/shop/%username%
	echo https://www.etsy.com/shop/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: CashMe
echo | set /p ".=[97m[[0m[92m+[0m[97m] CashMe: [0m"
curl -s -i "https://cash.me/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://cash.me/%username%
	echo https://cash.me/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Behance
echo | set /p ".=[97m[[0m[92m+[0m[97m] Behance: [0m"
curl -s -i "https://www.behance.net/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.behance.net/%username%
	echo https://www.behance.net/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: GoodReads
echo | set /p ".=[97m[[0m[92m+[0m[97m] GoodReads: [0m"
curl -s -i "https://www.goodreads.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.goodreads.com/%username%
	echo https://www.goodreads.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Instructables
echo | set /p ".=[97m[[0m[92m+[0m[97m] Instructables: [0m"
curl -s -i "https://www.instructables.com/member/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.instructables.com/member/%username%
	echo https://www.instructables.com/member/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: KeyBase
echo | set /p ".=[97m[[0m[92m+[0m[97m] KeyBase: [0m"
curl -s -i "https://keybase.io/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://keybase.io/%username%
	echo https://keybase.io/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Kongregate
echo | set /p ".=[97m[[0m[92m+[0m[97m] Kongregate: [0m"
curl -s -i "https://kongregate.com/accounts/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://kongregate.com/accounts/%username%
	echo https://kongregate.com/accounts/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: LiveJournal
echo | set /p ".=[97m[[0m[92m+[0m[97m] LiveJournal: [0m"
curl -s -i "https://%username%.livejournal.com" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.livejournal.com
	echo https://%username%.livejournal.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: AngelList
echo | set /p ".=[97m[[0m[92m+[0m[97m] AngelList: [0m"
curl -s -i "https://angel.co/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://angel.co/%username%
	echo https://angel.co/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Last.fm
echo | set /p ".=[97m[[0m[92m+[0m[97m] Last.fm: [0m"
curl -s -i "https://last.fm/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://last.fm/user/%username%
	echo https://last.fm/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Dribbble
echo | set /p ".=[97m[[0m[92m+[0m[97m] Dribbble: [0m"
curl -s -i "https://dribbble.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://dribbble.com/%username%
	echo https://dribbble.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Codeacademy
echo | set /p ".=[97m[[0m[92m+[0m[97m] Codeacademy: [0m"
curl -s -i "https://www.codecademy.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.codecademy.com/%username%
	echo https://www.codecademy.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Gravatar
echo | set /p ".=[97m[[0m[92m+[0m[97m] Gravatar: [0m"
curl -s -i "https://en.gravatar.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://en.gravatar.com/%username%
	echo https://en.gravatar.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Pastebin
echo | set /p ".=[97m[[0m[92m+[0m[97m] Pastebin: [0m"
curl -s -i "https://pastebin.com/u/%username%" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' -o "_temp.html"
find "location: /index" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://pastebin.com/u/%username%
	echo https://pastebin.com/u/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Foursquare
echo | set /p ".=[97m[[0m[92m+[0m[97m] Foursquare: [0m"
curl -s -i "https://foursquare.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://foursquare.com/%username%
	echo https://foursquare.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Roblox
echo | set /p ".=[97m[[0m[92m+[0m[97m] Roblox: [0m"
curl -s -i "https://www.roblox.com/user.aspx?username=%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://bitbuckehttps://www.roblox.com/user.aspx?username=%username%t.org/%username%
	echo https://www.roblox.com/user.aspx?username=%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Gumroad
echo | set /p ".=[97m[[0m[92m+[0m[97m] Gumroad: [0m"
curl -s -i "https://www.gumroad.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.gumroad.com/%username%
	echo https://www.gumroad.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Newgrounds
echo | set /p ".=[97m[[0m[92m+[0m[97m] Newgrounds: [0m"
curl -s -i "https://%username%.newgrounds.com" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.newgrounds.com
	echo https://%username%.newgrounds.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Wattpad
echo | set /p ".=[97m[[0m[92m+[0m[97m] Wattpad: [0m"
curl -s -i "https://www.wattpad.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.wattpad.com/user/%username%
	echo https://www.wattpad.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Canva
echo | set /p ".=[97m[[0m[92m+[0m[97m] Canva: [0m"
curl -s -i "https://www.canva.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.canva.com/%username%
	echo https://www.canva.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: CreativeMarket
echo | set /p ".=[97m[[0m[92m+[0m[97m] CreativeMarket: [0m"
curl -s -i "https://creativemarket.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404eef72" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://creativemarket.com/%username%
	echo https://creativemarket.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Trakt
echo | set /p ".=[97m[[0m[92m+[0m[97m] Trakt: [0m"
curl -s -i "https://www.trakt.tv/users/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.trakt.tv/users/%username%
	echo https://www.trakt.tv/users/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: 500px
echo | set /p ".=[97m[[0m[92m+[0m[97m] 500px: [0m"
curl -s -i "https://500px.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://500px.com/%username%
	echo https://500px.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Buzzfeed
echo | set /p ".=[97m[[0m[92m+[0m[97m] Buzzfeed: [0m"
curl -s -i "https://buzzfeed.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://buzzfeed.com/%username%
	echo https://buzzfeed.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: TripAdvisor
echo | set /p ".=[97m[[0m[92m+[0m[97m] TripAdvisor: [0m"
curl -s -i "https://tripadvisor.com/members/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://tripadvisor.com/members/%username%
	echo https://tripadvisor.com/members/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: HubPages
echo | set /p ".=[97m[[0m[92m+[0m[97m] HubPages: [0m"
curl -s -i "https://%username%.hubpages.com" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.hubpages.com
	echo https://%username%.hubpages.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Contently
echo | set /p ".=[97m[[0m[92m+[0m[97m] Contently: [0m"
curl -s -i "https://%username%.contently.com" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.contently.com
	echo https://%username%.contently.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Houzz
echo | set /p ".=[97m[[0m[92m+[0m[97m] Houzz: [0m"
curl -s -i "https://houzz.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "an error has occurred" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://houzz.com/user/%username%
	echo https://houzz.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Blip.fm
echo | set /p ".=[97m[[0m[92m+[0m[97m] Blip.fm: [0m"
curl -s -i "https://blip.fm/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://blip.fm/%username%
	echo https://blip.fm/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Wikipedia
echo | set /p ".=[97m[[0m[92m+[0m[97m] Wikipedia: [0m"
curl -s -i "https://www.wikipedia.org/wiki/User:%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.wikipedia.org/wiki/User:%username%
	echo https://www.wikipedia.org/wiki/User:%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: HackerNews
echo | set /p ".=[97m[[0m[92m+[0m[97m] HackerNews: [0m"
curl -s -i "https://news.ycombinator.com/user?id=%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "No such user" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://news.ycombinator.com/user?id=%username%
	echo https://news.ycombinator.com/user?id=%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: CodeMentor
echo | set /p ".=[97m[[0m[92m+[0m[97m] CodeMentor: [0m"
curl -s -i "https://www.codementor.io/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.codementor.io/%username%
	echo https://www.codementor.io/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: ReverbNation
echo | set /p ".=[97m[[0m[92m+[0m[97m] ReverbNation: [0m"
curl -s -i "https://www.reverbnation.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.reverbnation.com/%username%
	echo https://www.reverbnation.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Designspiration
echo | set /p ".=[97m[[0m[92m+[0m[97m] Designspiration: [0m"
curl -s -i "https://www.designspiration.net/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.designspiration.net/%username%
	echo https://www.designspiration.net/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Bandcamp
echo | set /p ".=[97m[[0m[92m+[0m[97m] Bandcamp: [0m"
curl -s -i "https://www.bandcamp.com/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.bandcamp.com/%username%
	echo https://www.bandcamp.com/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: ColourLovers
echo | set /p ".=[97m[[0m[92m+[0m[97m] ColourLovers: [0m"
curl -s -i "https://www.colourlovers.com/love/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.colourlovers.com/love/%username%
	echo https://www.colourlovers.com/love/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: IFTTT
echo | set /p ".=[97m[[0m[92m+[0m[97m] IFTTT: [0m"
curl -s -i "https://www.ifttt.com/p/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.ifttt.com/p/%username%
	echo https://www.ifttt.com/p/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Ebay
echo | set /p ".=[97m[[0m[92m+[0m[97m] Ebay: [0m"
curl -s -i "https://www.ebay.com/usr/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "eBay Profile - error" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.ebay.com/usr/%username%
	echo https://www.ebay.com/usr/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Slack
echo | set /p ".=[97m[[0m[92m+[0m[97m] Slack: [0m"
curl -s -i "https://%username%.slack.com" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.slack.com
	echo https://%username%.slack.com> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: OkCupid
echo | set /p ".=[97m[[0m[92m+[0m[97m] OkCupid: [0m"
curl -s -i "https://www.okcupid.com/profile/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.okcupid.com/profile/%username%
	echo https://www.okcupid.com/profile/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Trip
echo | set /p ".=[97m[[0m[92m+[0m[97m] Trip: [0m"
curl -s -i "https://www.trip.skyscanner.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.trip.skyscanner.com/user/%username%
	echo https://www.trip.skyscanner.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Ello
echo | set /p ".=[97m[[0m[92m+[0m[97m] Ello: [0m"
curl -s -i "https://ello.co/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://ello.co/%username%
	echo https://ello.co/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Tracky
echo | set /p ".=[97m[[0m[92m+[0m[97m] Tracky: [0m"
curl -s -i "https://tracky.com/user/%username%" -H "Accept-Language: en" -L -o "_temp.html"
find "profile:username" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://tracky.com/user/%username%
	echo https://tracky.com/user/%username%> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Tripit
echo | set /p ".=[97m[[0m[92m+[0m[97m] Tripit: [0m"
curl -s -i "https://www.tripit.com/people/%username%#/profile/basic-info" -H "Accept-Language: en" -L -o "_temp.html"
find "location: https://www.tripit.com/home" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://www.tripit.com/people/%username%#/profile/basic-info
	echo https://www.tripit.com/people/%username%#/profile/basic-info> "%username%.txt"
)
del /f /q "_temp.html" >nul

:: Basecamp
echo | set /p ".=[97m[[0m[92m+[0m[97m] Basecamp: [0m"
curl -s -i "https://%username%.basecamphq.com/login" -H "Accept-Language: en" -L -o "_temp.html"
find "404 Not Found" _temp.html >nul && (
	echo [93mNot Found![0m
) || (
	echo [92mFound![0m https://%username%.basecamphq.com/login
	echo https://%username%.basecamphq.com/login> "%username%.txt"
)
del /f /q "_temp.html" >nul

if exist "%username%.txt" echo [92m[[0m\e[97m*[0m[92m] Saved:[0m[97m %username%.txt