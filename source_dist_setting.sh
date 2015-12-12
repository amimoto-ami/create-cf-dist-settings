#!/bin/sh
source_dist_setting=$(curl -l -s https://gist.githubusercontent.com/wokamoto/08a58534592fead516f7/raw/7c903242229054d5735f75e89709530df2386d5a/cloudfront-input.json \
 | sed "s/%origin-id%/${origin_domain}/g" \
 | sed "s/%caller-reference%/$(date +%s)/g" \
 | sed "s/origin.example.com/${origin_url}/g" \
 | sed "s/example.com/${origin_domain}/g")
echo ${source_dist_setting}
