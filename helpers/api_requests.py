import requests
import json
from requests.auth import HTTPBasicAuth


class BaseRequest(object):
    def __init__(self):
        self.API_AUTH_USERNAME = 'ml-devops-tools'
        self.API_AUTH_PASSWORD = 'AmLlI-SdEe2<>3'  # just a random password
        self.url = ""
        self.auth = HTTPBasicAuth(self.API_AUTH_USERNAME, self.API_AUTH_PASSWORD)
        self.headers = {'Content-Type': 'application/json'}

    def post(self, payload):
        response = requests.post(url=self.url,
                                 data=json.dumps(payload, allow_nan=True),
                                 headers=self.headers,
                                 auth=self.auth)
        result_json = response.json()
        return result_json

    def get(self):
        result = requests.get(url=self.url, headers=self.headers)
        return result.json()

