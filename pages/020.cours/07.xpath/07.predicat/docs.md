---
title: Prédicats
taxonomy:
    category:
        - docs
---

### Prédicats
Les prédicats sont des expressions entre crochets permettant de filtrer
les noeuds sélectionnés.

Exemple :

`a[/html/@lang='en'][@href='help.php'][1]/@target `

-  Une expression entre crochets est un nombre ou une fonction
    retournant un nombre est interprété comme un test sur la position
    du noeud.
    Par exemple `p[3]` (équivalent à `p[position() = 3]`), ou
    `p[last()-1]` équivalent à `p[position() = last() -1]`).
-   Sinon c’est un test booléen. Par exemple `a[@href]` permet de
    sélectionner les noeuds `a` ayant un attribut `href`.
