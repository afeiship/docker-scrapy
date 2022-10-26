import requests
import time

urls = [
    f'https://www.cnblogs.com/#p{page}'
    for page in range(1, 21)
]

if __name__ == '__main__':
    for url in urls:
        response = requests.get(url)
        time.sleep(1)
        print(url, response.status_code)
