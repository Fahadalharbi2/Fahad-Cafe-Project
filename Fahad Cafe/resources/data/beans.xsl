<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
  <html>
    <head>
	     <meta charset="utf-8"></meta>
	 <link rel="stylesheet" type="text/css" href="style.css"></link>
	 </head>
<body>


<div class="menu-body">
   <!-- Section starts: beans menu -->
   <div class="menu-section">
      <h2  style="  color:black;"  class="menu-section-title">Coffee Beans Menu</h2>
      <!-- Item starts -->
      <div class="menu-item">
         <div class="menu-item-description">
    <xsl:apply-templates select="Coffee_beans/beans">
            <xsl:sort select="name" data-type="string" />
          </xsl:apply-templates>
         </div>
      </div>
   
      <!-- Item ends -->
   </div>
   <!-- Section ends: beans menu -->
   <!-- Section starts: Drinks -->

   <!-- Section ends: Drinks -->


<div id="share-buttons">

    


    

    <!-- Digg -->

    <a href="http://www.digg.com/submit?url=beans.xml" target="_blank">

        <img src="https://simplesharebuttons.com/images/somacro/diggit.png" alt="Digg" />

    </a>

    

    <!-- Email -->

    <a href="mailto:?Subject=Beans Menu&amp;Body=I%20saw%20this%20and%20thought%20of%20you!%20 beans.xml">

        <img src="https://simplesharebuttons.com/images/somacro/email.png" alt="Email" />

    </a>

 

    <!-- Facebook -->

    <a href="http://www.facebook.com/sharer.php?u=beans.xml" target="_blank">

        <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />

    </a>

    

    <!-- Google+ -->

    <a href="https://plus.google.com/share?url=beans.xml" target="_blank">

        <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />

    </a>

    

    <!-- LinkedIn -->

    <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=beans.xml" target="_blank">

        <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />

    </a>

    

    <!-- Pinterest -->

    <a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());">

        <img src="https://simplesharebuttons.com/images/somacro/pinterest.png" alt="Pinterest" />

    </a>

    

    <!-- Print -->

    <a href="javascript:;" onclick="window.print()">

        <img src="https://simplesharebuttons.com/images/somacro/print.png" alt="Print" />

    </a>

    

    

     

    <!-- Twitter -->

    <a href="https://twitter.com/share?url=beans.xml&amp;text=Beans%20Menu&amp;hashtags=Fahad Cafe Menu" target="_blank">

        <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />

    </a>




</div>

</div>
</body>
</html>
</xsl:template>

<xsl:template match="beans">
  <div>
    <xsl:apply-templates select="name"/>
	
  </div>
  <div>
    <xsl:apply-templates select="images"/>
	</div>
</xsl:template>


<xsl:template match="name">
  <div style="background-color:#D3D3D3;color:black;" class="menu-item-name" >
    <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="images">

    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="image[@type='png']/@url"/>
      </xsl:attribute>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="image[@type='png' ]/@url"/>
        </xsl:attribute>
      </img>
    </a>

</xsl:template>


</xsl:stylesheet>
