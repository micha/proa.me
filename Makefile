
commit:
	rm -rf wiki
	mkdir wiki
	(cd /var/www/domains/proa.me/wiki && tar cf - .) |(cd wiki && tar xf -)
	sed -i 's/^\([^:][^:]*\):[^:]*:/\1:REDACTED:/' wiki/conf/users.auth.php
	git add . || true
	git commit -m "scheduled commit" || true
	git push origin master || true
