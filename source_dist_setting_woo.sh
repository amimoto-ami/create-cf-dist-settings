#!/bin/sh
#read -p "Set your origin webserver: " origin_url
if [ "${origin_url}" = "" ]; then
    echo "webserver is required"
    exit 1
fi
#read -p "Set your website domain: " domain
if [ "${domain}" = "" ]; then
  echo "non-origin is not support now"
  exit 1
  #domain="${origin_url}"
fi

if [ "${slug-product}" = "" ]; then
  slug-product="shop"
fi
if [ "${slug-cart}" = "" ]; then
  slug-cart="cart"
fi
if [ "${slug-category}" = "" ]; then
  slug-category="product-category"
fi
if [ "${slug-tag}" = "" ]; then
  slug-tag="product-tag"
fi
if [ "${slug-account}" = "" ]; then
  slug-account="my-account"
fi
if [ "${slug-checkout}" = "" ]; then
  slug-checkout="checkout"
fi

json_template='cloudfront-input-woo.json'
if [ "${domain}" = "" ]; then
  json_template='cloudfront-input-no-aliases.json'
fi

source_dist_setting=$(curl -l -s https://raw.githubusercontent.com/amimoto-ami/create-cf-dist-settings/feature/woo/${json_template} \
 | sed "s/%origin-id%/${domain}/g" \
 | sed "s/%caller-reference%/$(date +%s)/g" \
 | sed "s/origin.example.com/${origin_url}/g" \
 | sed "s/%slug-product%/${slug-product}/g" \
 | sed "s/%slug-cart%/${slug-cart}/g" \
 | sed "s/%slug-category%/${slug-category}/g" \
 | sed "s/%slug-tag%/${slug-tag}/g" \
 | sed "s/%slug-account%/${slug-account}/g" \
 | sed "s/%slug-checkout%/${slug-checkout}/g" \
 | sed "s/example.com/${domain}/g")
echo ${source_dist_setting}
