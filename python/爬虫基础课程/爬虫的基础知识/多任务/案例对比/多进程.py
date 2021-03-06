# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""

# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""
import time

import requests,multiprocessing
from lxml import etree
from multiprocessing import Queue


def list_page(q):
    # 1.将目标网站上的页面抓取下来
    headers = {
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
                'Referer': 'https://movie.douban.com/'
               }
    url = 'https://movie.douban.com/cinema/nowplaying/changsha/'
    response = requests.get(url,headers=headers)
    text = response.text
    html = etree.HTML(text)
    id = html.xpath('//*[@id="nowplaying"]/div[2]/ul/li/@id')
    for i in id:
        print("正在存入的是", i)
        q.put(i)

def get_page(q):
    while True:
        num = q.get()
        print("正在取出的是", num)
        url = f"https://movie.douban.com/subject/{num}/?from=playing_poster"
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
            'Referer': 'https://movie.douban.com/cinema/nowplaying/changsha/'
        }
        response = requests.get(url, headers=headers)
        text = response.text
        html = etree.HTML(text)
        movies = []
        title = html.xpath('//*[@id="content"]/h1/span[1]/text()')[0]
        score = html.xpath('//*[@id="interest_sectl"]/div[1]/div[2]/strong/text()')
        if len(score) == 0:
            score = "null"
        else:score = score[0]
        movie = {
            "title":title,
            "score":score,
            # "duration":duration,
            # "dircector":director,
            # "actors":actors,
            # "region":region,
            # "thumbnail":thumbnail
        }
        movies.append(movie)
        print(movie)
        # 如果为空就返回false
        if q.empty():
            break


def main():
    start = time.time()
    q = Queue()
    t1 = multiprocessing.Process(target=list_page, args=(q,))
    t1.start()
    mult = []
    for i in range(4):
        m = multiprocessing.Process(target=get_page,args=(q,))
        m.start()
        mult.append(m)

    for i in mult:
        i.join()
    finish = time.time()
    print("总耗时", finish - start)
    # 总耗时 9.661597728729248





if __name__ == '__main__':
    main()

