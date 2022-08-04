#!/usr/bin/env python3

# Stolen from David: https://raw.githubusercontent.com/dmsimard/ansible-sandbox/master/get-galaxy-platforms/get-galaxy-platforms.py

# Copyright 2019 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

# Queries the Galaxy API to get all the platforms while handling server-side pagination
import json
import requests

GALAXY = "https://galaxy.ansible.com"
PLATFORMS_ENDPOINT = GALAXY + "/api/v1/platforms"

session = requests.Session()

def get_platforms():
    page = session.get(PLATFORMS_ENDPOINT).json()
    yield page["results"]

    while page["next_link"] is not None:
        next_url = GALAXY + page['next_link']
        page = session.get(next_url).json()
        yield page["results"]

def main():
    platforms = {}
    for results in get_platforms():
        for result in results:
            name = result["name"]
            version = result["release"]
            if name not in platforms:
                platforms[name] = {
                    "name": name,
                    "versions": []
                }
            if version not in platforms[name]["versions"]:
                platforms[name]["versions"].append(version)

    print(json.dumps(platforms, indent=2))

if __name__ == "__main__":
    main()
