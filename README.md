# Create CloudFront distribution

## What's AMIMOTO

[AMIMOTO is a High Performance WordPress Cloud Hosting on Amazon Web Services.](http://amimoto-ami.com/)

You should just run following:

```
origin_url='{ORIGIN URL HERE}' origin_domain='{ORIGIN DOMAIN NAME HERE}' aws cloudfront create-distribution --cli-input-json "$(https://raw.githubusercontent.com/amimoto-ami/create-cf-dist-settings/master/source_dist_setting.sh | sh)"
```

