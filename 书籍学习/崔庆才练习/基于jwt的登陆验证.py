# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/15
"""
import requests
from urllib.parse import urljoin

BASE_URL = "https://login3.scrape.cuiqingcai.com/"
LOGIN_URL = urljoin(BASE_URL, "api//login")
INDEX_URL = urljoin(BASE_URL,'/api/book')
USERNAME = 'admin'
PASSWORD = 'admin'

response_login = requests.post(LOGIN_URL, json={"username": USERNAME, "password": PASSWORD})
data = response_login.json()
print('RespseJson',data )
jwt = data.get('token')
print('JWT',jwt)