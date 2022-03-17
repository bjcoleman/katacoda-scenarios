import requests
import json


print('Creating a conflict...')
url = 'https://lfvvlgcpn8.execute-api.us-east-1.amazonaws.com/prod/create_conflict'

with open('/root/repo_name') as f:
    repo_name = f.read().strip()

data = {'repo_name': repo_name}

result = requests.post(url, data=data)

print('\n\nSuccess!!\n\n')

