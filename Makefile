
commit:
	(cd /var/www/domains/proa.me && tar cf - .) |tar xf -
	sed -i 's/^\([^:][^:]*\):[^:]*:/\1:REDACTED:/' wiki/conf/users.auth.php
	git add .
	git commit -m "scheduled commit"
	git push origin master
