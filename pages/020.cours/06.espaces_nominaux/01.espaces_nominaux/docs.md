---
title: Les espaces nominaux (namespaces)
taxonomy:
    category: docs
---

### Les espaces nominaux (namespaces) 

-   Définis dans la recommandation Namespaces in XML 1.0
-   Les espaces de noms servent à « qualifier » des noms d‘éléments ou
    d’attributs, en les associant à des espaces nominaux identifiés par
    des références d’URI
-   Ils sont utilisés pour combiner, dans un même document, des éléments
    et des attributs provenant de recommandations, de « vocabulaires »,
    de DTD/Schema différents
-   Par exemple, [ce document RSS](aarss.xml) utilise les
    espaces de noms suivant :
    -   http://www.w3.org/1999/02/22-rdf-syntax-ns\#
    -   http://purl.org/rss/1.0/
    -   http://purl.org/rss/1.0/modules/syndication/
    -   http://prismstandard.org/namespaces/1.2/basic/
    -   http://purl.org/dc/elements/1.1/
        Ici, les URI sont des URL, mais les pages web correspondantes
        peuvent ne pas exister : ce sont juste des identifiants, qui
        sont censés être unique.
