import requests

urls = [
    f'https://www.cnblogs.com/#p{page}'
    for page in range(1, 11)
]

if __name__ == '__main__':
    for url in urls:
        response = requests.get(url)
        print(url, response.status_code)
