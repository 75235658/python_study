import requests,time
from lxml import etree
data = '12174895,12505366,12568226,12174897,1028140681,12866232,68454132432,11597196,12633733,11660913,11660918,12882556,54816170278,11213467,11660916,11660924,11800264,10162899,11121313099,12174923,12619303,12182317,11673849,1027723859,68454348489,16269149520,12880196,68750302212,1462760667,12548088'
cat = '1713%2c3258%2c3297'
a = time.time()*1000

url = f'https://list.jd.com/listNew.php?cat={cat}&page=2&s=27&scrolling=y&log_id={a}&tpl=2_M&isList=1&show_items=12174895,12505366,12568226,12174897,1028140681,12866232,52359934836,11597196,12633733,11660913,11660918,12882556,68620043657,11213467,11660916,11660924,11800264,10162899,44063115183,12174923,12619303,12182317,11673849,1027723859,68454132432,16269149520,12880196,68750302212,1462760667,12548088'
headers = {
    "referer": "https://list.jd.com/list.html?cat=1713,3258,3297",
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36"
}
response = requests.get(url,headers=headers).text
html = etree.HTML(response)
v = html.xpath('//li[@class="gl-item"]//div[@class="p-name"]/a/em/text()')
print(response)
print(len(v))
print(v)
