rem aws s3 cp . s3://berige.com.au --region ap-southeast-2 --recursive --exclude .git/* --exclude *.bat --exclude *.md

aws s3 sync _site s3://patrickberry.name --region ap-southeast-2 --exclude .git/* --exclude *.bat --exclude *.md --acl public-read