#! /usr/bin/env python3
import subprocess
import json

cmd = 'lscpu -J'
result = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True).communicate()[0]
result = result.decode('utf-8')
json_cpu_info = json.loads(result)
print(json_cpu_info.get('lscpu')[13].get('data'))
