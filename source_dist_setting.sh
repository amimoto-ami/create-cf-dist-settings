#!/bin/sh
source_dist_setting=$(curl -l -s https://raw.githubusercontent.com/amimoto-ami/create-cf-dist-settings/master/cloudfront-input.json \
 | sed "s/%origin-id%/${origin_domain}/g" \
 | sed "s/%caller-reference%/$(date +%s)/g" \
 | sed "s/origin.example.com/${origin_url}/g" \
 | sed "s/example.com/${origin_domain}/g")
echo ${source_dist_setting}
