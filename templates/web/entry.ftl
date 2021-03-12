<#import "/templates/system/common/ice.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Pizza - free responsive website template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!--
    Pizza Template
    http://www.templatemo.com/preview/templatemo_459_pizza
    -->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- normalize -->
    <link rel="stylesheet" href="static-assets/css/normalize.css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="static-assets/css/bootstrap.min.css">
    <!-- animate-->
    <link rel="stylesheet" href="static-assets/css/animate.min.css">
    <!-- font-awesome -->
    <link rel="stylesheet" href="static-assets/css/font-awesome.min.css">
    <!-- Simple lightbox-->
    <link rel="stylesheet" href="static-assets/css/simplelightbox.min.css">
    <!-- custom -->
    <link rel="stylesheet" href="static-assets/css/templatemo-style.css">
    <!-- alertify -->
    <link rel="stylesheet" href="static-assets/css/alertify.min.css">
    <!-- google font -->
    <link href='//fonts.googleapis.com/css?family=Signika:400,300,600,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Chewy' rel='stylesheet' type='text/css'>

  </head>
  <body id="home" data-spy="scroll" data-target=".navbar-collapse">

    <!-- start navigation -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon icon-bar"></span>
            <span class="icon icon-bar"></span>
            <span class="icon icon-bar"></span>
          </button>
          <a href="/" class="navbar-brand smoothScroll"><strong>${contentModel.siteName_t}</strong></a>
        </div>

        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#home" class="smoothScroll">HOME</a></li>
            <li><a href="#about" class="smoothScroll">ABOUT</a></li>
            <li><a href="#gallery" class="smoothScroll">GALLERY</a></li>
            <li><a href="#contact" class="smoothScroll">CONTACT</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- end navigation -->

    <#list contentModel.sections_o.item as section>
      <@renderComponent parent=contentModel component=section />
    </#list>

    <script src="/static-assets/js/jquery.js"></script>
    <script src="/static-assets/js/plugins.js"></script>
    <script src="/static-assets/js/bootstrap.min.js"></script>
    <script src="/static-assets/js/jquery.parallax.js"></script>
    <script src="/static-assets/js/alertify.min.js"></script>
    <script src="/static-assets/js/smoothscroll.js"></script>
    <script src="/static-assets/js/wow.min.js"></script>
    <script src="/static-assets/js/simple-lightbox.min.js"></script>
    <script src="/static-assets/js/custom.js"></script>
    <@studio.initPageBuilder/>
  </body>
</html>