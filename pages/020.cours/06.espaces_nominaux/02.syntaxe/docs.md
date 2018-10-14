---
title: Syntaxe des espaces nominaux
taxonomy:
    category: docs
----

### Syntaxe des espaces nominaux
On peut définir un espace nominal par défaut en utilisant l’attribut
    xmlns.
    Exemple :
```xml
<?xml version="1.0" encoding="utf-8"?>
<html xmlns = "http://www.w3.org/1999/xhtml">
  <head>
    <title>Espaces nominaux</title>
  </head>
  <body>
    <h2>Les espaces nominaux (<i>namespaces</i>)</h2>
    […]
  </body>
</html>
```
<!-- -->

-   L’espace nominal d’un élément s’applique à tous ses descendants
    éléments et attributs (c’est la *portée* de l’espace nominal).
-   Quand plusieurs espaces nominaux sont utilisés, on doit leur
    associer des préfixes, comme dans le document RSS.
-   On peut utiliser n’importe quel préfixe, mais il vaut mieux utiliser
    les préfixes usuels (xsl pour XSLT, par exemple).
