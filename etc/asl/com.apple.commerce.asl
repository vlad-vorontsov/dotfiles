# Facility com.apple.appstore gets saved only in /var/log/appstore.log
? [= Facility com.apple.commerce] claim only
* file /var/log/commerce.log mode=0644 format=bsd rotate=seq compress file_max=5M all_max=50M
