<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to Coldbox!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<!---Base URL --->
    <meta name="csrf-token" content="#csrfGenerateToken()#">

	<base href="#event.getHTMLBaseURL()#" />
	<!---css --->
	<link rel="stylesheet" type="text/css" href="#html.elixirPath( "css/app.css" )#" />
    <!--- If there are any extracted Vue styles, they will be in this file --->
	<cfscript>
        if ( getCache( "template" ).getOrSet( "vue-styles", function() {
            return fileExists( expandPath( html.elixirPath( "js/app.css" ) ) );
        } ) ) {
            writeOutput( '<link rel="stylesheet" type="text/css" href="#html.elixirPath( "js/app.css" )#" />' );
        }
    </cfscript>
</head>
<body>

	<!---Container And Views --->
	<div class="container" id="app">
		#renderView()#
	</div>

	<footer class="footer container">
		<p class="pull-right">
			<a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			<a href="https://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
			<a href="https://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="https://getbootstrap.com/">Twitter Bootstrap</a>
		</p>
	</footer>

	<script src="https://file-manager.webmai.ru/vendor/file-manager/js/file-manager.js"></script>
	<script type="application/javascript" src="#html.elixirPath( "js/runtime.js" )#"></script>
    <script type="application/javascript" src="#html.elixirPath( "js/vendor.js" )#"></script>
    <script type="application/javascript" src="#html.elixirPath( "../modules_app/smallBlog/includes/js/admin.js" )#"></script>
    <script type="application/javascript" src="#html.elixirPath( fileName="js/admin.js", useModuleRoot=true )#"></script>
</body>
</html>
</cfoutput>