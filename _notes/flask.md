---
layout: page
title: Flask web application
description: Instructions gathered while using Flask
date: 2021-05-25

authors:
  - name: givasile
    url: "https:givasile.github.io"
    affiliations:
    name: ATHENA Research Center

---

#### [HTTP Requests](https://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340)

REST is a protocol for making good-use of HTTP requests.



-------------------------------------------------------------------------------
HTTP request format:

`<HTTP VERB>` `<path to resource>`

`header elements`

`body elements`

-------------------------------------------------------------------------------

* `<HTTP VERB>`: GET, PUT, POST, DELETE etc.
* `<path to resource>`: path to the resource at the host machine e.g. `/about.html`
* `header elements`: information about the request e.g. `Host: ...` with information about the host or `Accept: ...` defining which types of files are acceptable as a repsonse
* `body elements`: the main body of the request sent to the server. Normally, PUT requests contain this part

-------------------------------------------------------------------------------

HTTP response format:

`<HTTP RESPONSE STATUS>`

`header elements`

`body elements`

-------------------------------------------------------------------------------

* `HTTP RESPONSE STATUS`: status of request e.g. 200 = OK
* `header elements`: information about the respnse e.g. `Content-Type: ...` with types of the returned file
* `body elements`: main body of the resonse i.e. the html file 


-------------------------------------------------------------------------------

[`curl`](https://flaviocopes.com/http-curl/) is a well-known command-line tool for making HTTP requests

e.g. `curl -v https://www.google.com` 

-------------------------------------------------------------------------------

### [Flask](https://flask.palletsprojects.com/en/2.0.x/)

In the front-part of flask, we define which urls we want our service to respond to.

``` Python
def create_app():
	app = Flask(__name__)
	
	@app.route("/execute_experiment")
	def execute_experiment():
		# do whatever
		return <html with experiment result>
	
```

In this tiny example, we set our service resposive to `GET` requests at the relative url `/execute_experiment`. The function is executed after the `GET` request is sent, and creates the html file that will be returned.


The request is handled by the [`flask.request`](https://flask.palletsprojects.com/en/latest/quickstart/#the-request-object) object. `request.args` is a special dictionary `ImmutableMultiDict()` with all the arguments passed at the HTTP request. You can iterate over them with `for k,v in request.args.items()`

-------------------------------------------------------------------------------

Some environmental variables:

* `FLASK_APP=<path to the directory of flask>`
* `FLASK_ENV={development|}`
