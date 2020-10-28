import requests
from lxml import etree


# 1.将目标网站上的页面抓取下来
headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
            'Referer': 'https://movie.douban.com/'
           }
url = 'https://movie.douban.com/cinema/nowplaying/changsha/'
response = requests.get(url,headers=headers)
text = response.text
# response.text   返回的是一个经过解码后的字符串，是str（unicode）类型
# response.content  返回的是一个原生的字符串，就是从网页上抓取下来的，没有经过处理的字符串，是bytes类型

# 2.将抓下来的数据根据一定的规则进行提取
html = etree.HTML(text)
ul = html.xpath("//*[@id='nowplaying']/div[2]/ul")[0]
lis = ul.xpath("./li")
movies = []
for li in lis:
    title = li.xpath("@data-title")[0]
    score = li.xpath("@data-score")[0]
    duration = li.xpath("@data-duration")[0]
    director = li.xpath("@data-director")[0]
    actors = li.xpath("@data-actors")[0]
    region = li.xpath("@data-region")[0]
    thumbnail = li.xpath(".//img/@src")[0]
    movie = {
        "title":title,
        "score":score,
        "duration":duration,
        "dircector":director,
        "actors":actors,
        "region":region,
        "thumbnail":thumbnail
    }
    movies.append(movie)

print(movies)