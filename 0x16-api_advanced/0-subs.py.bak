#!/usr/bin/python3
"""define module total subs"""
import requests


def number_of_subscribers(subreddit):
    """number of subscribers"""
    if subreddit is None or type(subreddit) is not str:
        return (0)
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'AmynApp/1.0 by Amyn092'}
    response = requests.get(url, headers=headers)
    response_json = response.json()
    subs = response_json.get("data", {}).get("subscribers", 0)
    return subs
