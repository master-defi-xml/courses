---
title: 'Le texte'
taxonomy:
    category:
        - docs
---

### Le texte

Un nœud texte peut comprendre :

-   des caractères [UNICODE](http://www.unicode.org)
-   les entités **&amp;lt;** (<), **&amp;amp;** (&), **&amp;gt;** (&gt;),
    **&amp;quot;** (”) et **&amp;apos;** (’)
-   **d’autres entités**, *si elles sont définies dans la DTD ou le schéma associé au document*
-   des **champs CDATA** permettant de «
    protéger » n’importe quels caractères :

```xml
<![CDATA[x + 2 < y si x = 5 & y = 8 ]]>
```

En dehors des champs CDATA, les caratères &lt;
et & **doivent** s‘écrire &amp;lt; et &amp;amp;
