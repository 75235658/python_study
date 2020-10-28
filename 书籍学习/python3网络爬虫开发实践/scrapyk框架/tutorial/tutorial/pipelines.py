# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
from scrapy.exceptions import DropItem
import pymongo


class TextPipeline(object):
    def __init__(self):
        self.limit = 50

    def process_item(self, item, spider):
        if item['text']:
            if len(item['text']) > self.limit:
                item['text'] = item['text'][0:self.limit].rstrip() + "..."
                return item
        else:
            return DropItem('Missing Text')

class MongoPipeline(object):
    def __init__(self, mongo_db):
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        """为了获取setting中的mong_url和mongo_db"""
        return cls(
            # mongo_url=crawler.settings.get('MONGO_URL'),
            mongo_db=crawler.settings.get('MONGO_DB')
        )

    def open_spider(self, spider):
        self.client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')
        self.db = self.client[self.mongo_db]

    def process_item(self, item, spider):
        # 设置数据库表名，此处为item文件的类名
        name = item.__class__.__name__
        self.db[name].insert(dict(item))
        return item

    def close_spider(self, spider):
        self.client.close()