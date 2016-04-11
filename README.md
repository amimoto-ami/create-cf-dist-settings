# Create CloudFront distribution

## What's AMIMOTO

[AMIMOTO is a High Performance WordPress Cloud Hosting on Amazon Web Services.](http://amimoto-ami.com/)

You should just run following:

```
export origin_url='{ORIGIN URL HERE}'; export domain='{ORIGIN DOMAIN NAME HERE}'; aws cloudfront create-distribution --cli-input-json "$(curl -l -s https://raw.githubusercontent.com/amimoto-ami/create-cf-dist-settings/master/source_dist_setting.sh | sh)"
```

