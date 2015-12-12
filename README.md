# Create CloudFront distribution

## What's AMIMOTO

[AMIMOTO is a High Performance WordPress Cloud Hosting on Amazon Web Services.](http://amimoto-ami.com/)

You should just run following:

```
origin_url='{ORIGIN URL HERE}' origin_domain='{ORIGIN DOMAIN NAME HERE}' aws cloudfront create-distribution --cli-input-json "$(curl -l -s https://gist.githubusercontent.com/wokamoto/08a58534592fead516f7/raw/4a385ce9d0b731b1474d764ce41e31fd2e980f92/source_dist_setting.sh | bash)"
```

