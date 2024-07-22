jqueryvalidation-content
========================

## Building

### Requirements

* <a href="http://www.xmlsoft.org/">libxml2</a>
* <a href="http://xmlsoft.org/XSLT/">libxslt</a>

The `xmllint` and `xsltproc` utilities need to be in your path. If you are on Windows, you can get libxml2 and libxslt from <a href="http://www.zlatkovic.com/libxml.en.html">GnuWin32</a>.

* Install [WordPress](http://wordpress.org/download/)
* Install [jqueryvalidation-theme](https://github.com/jzaefferer/validation-theme) - clone that repo, then symlink it into your `wp-content/themes` folder
* Install [gilded-wordpress plugin](https://raw.githubusercontent.com/scottgonzalez/gilded-wordpress/v1.0.0/gilded-wordpress.php)
* Install [jquery-static-index plugin](https://raw.githubusercontent.com/jquery/jquery-wp-content/v4.0.1/plugins/jquery-static-index.php)

### Installation

In this repo:
* Make sure nodejs (with npm) is installed, otherwise install from nodejs.org
* `cp config-sample.json config.json`, edit config.json to match login for local WordPress
* run `npm install -g grunt-cli`
* run `npm install`

### Hacks

* Make sure your local `wordpress` nodejs module contains [this commit](https://github.com/scottgonzalez/node-wordpress/commit/2b19238cf8064dafb66b9db09d0adcc9eac7f724)
* Make sure your local config contains
  * rpc-auth and basic-auth credentials
  * a https jqueryvalidation url

### Deploy

`grunt deploy`

## Building with Dev Containers
The Dev Container is a DIND (docker-in-docker) which comes with all the requirements pre-installed. Start the WordPress instance with: 

`docker-compose up` and visit `http://localhost:8080`

### Requirements
* Open this repository in Visual Studio Code with Dev Containers extension installed (https://code.visualstudio.com/docs/devcontainers/containers)
  
### Installation
* Setup WordPress with:
  * **Site Title**: Form validation with jQuery
  * **Username**: admin
  * **Password**: secret
  * *tick the checkbox 'Confirm use of weak password'*
  * **Your Email**: &lt;enter a valid email address&gt;
* Activate theme 'jQuery Validation Plugin WordPress Theme' (Appeareance)
* Activate plugin 'Gilded WordPress XML-RPC extensions' (Plugins)
* Activate plugin 'jQuery Static Index' (Plugins)


### Deploy

`grunt deploy`