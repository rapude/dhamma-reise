<script type="text/javascript" language="javascript">
<!--
// Email obfuscator script 2.1 by Tim Williams, University of Arizona
// Random encryption key feature by Andrew Moulden, Site Engineering Ltd
// This code is freeware provided these four comment lines remain intact
// A wizard to generate this code is at http://www.jottings.com/obfuscator/
{ coded = "2QSWnC@MCy.nC"
  key = "qL9m2X1BDzCV6TsjRlOYcP8hFgbHdixIJk7utawy5nK3pNoZWvQMfrAUES4eG0"
  shift=coded.length
  link=""
  for (i=0; i<coded.length; i++) {
    if (key.indexOf(coded.charAt(i))==-1) {
      ltr = coded.charAt(i)
      link += (ltr)
    }
    else {     
      ltr = (key.indexOf(coded.charAt(i))-shift+key.length) % key.length
      link += (key.charAt(ltr))
    }
  }
document.write("<a href='mailto:"+link+"?subject=Dhamma-Reise'>Ralf Rapude</a>")
}
//-->
</script><noscript>Sorry, you need Javascript on to email me.</noscript>
