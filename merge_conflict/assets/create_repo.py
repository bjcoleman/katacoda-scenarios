import requests
import json


print('Creating a repo for us to use in the scenario...')
url = 'https://lfvvlgcpn8.execute-api.us-east-1.amazonaws.com/prod/create_repo'
result = requests.get(url)


print('\n\nSuccess!!\n\n')

body = result.json()['body']
data = json.loads(body)

print('Your repo is named {}.'.format(data['repo_name']))
print('You can access your repo at {}'.format(data['repo_url']))
