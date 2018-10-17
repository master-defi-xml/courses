---
title: Motifs (patterns)
taxonomy:
    category: docs
---
### Motifs (patterns)

Les **motifs** sont un sous-ensemble des expressions **XPath**. En XSLT,
lls sont utilisés comme valeurs .des attributs `match`.
Voici quelques exemples de motifs (extrait de la recommandation) :

-   `/` correspond à la racine du document (≠ élément racine)
-   `*` correspond à n’importe quel élément
-   `@*` correspond à n’importe quel attribut
-   `text()` correspond à n’importe quel noeud textuel
-   `.` correspond au noeud courant : cela peut-être un élément, un
    attribut ou du texte
-   `..` correspond à l'élément parent
-   `para` correspond à n’importe quel élément para fils du noeud
    courant
-   `chapter|appendix` trouve tous les éléments `chapter` et `appendix`
    fils du noeud courant
-   `olist/item` trouve tous les éléments `item` ayant `olist` comme
    `parent`
-   `appendix//para` correspond à n’importe quel élément `para` dont un
    ancêtre est un élément `appendix` fils du noeud courant
-   `processing-instruction()` correspond à n’importe quel instruction
    de traitement
-   `node()` correspond à n’importe quel noeud autre qu’un noeud
    attribut et que le noeud racine
-   `id("W11")` correspond à l‘élément ayant l’identifiant unique `W11`
-   `para[1]` correspond au premier des éléments `para` d’un parent
-   `*[position()=1 and self::para]` correspond à n’importe quel élément
    `para` qui est le premier élément fils de son parent
-   `para[last()=1]` correspond à n’importe quel élément `para` fils du
    noeud courant qui est l’unique élément `para` de son élément parent
-   `items/item[position()>1]` correspond à tous les éléments `item`
    fils du noeud courant, autres que le premier, et dont le parent est
    `items`
-   `item[position() mod 2 = 1]` serait vrai pour tous les fils `item`
    de numéro d’ordre impair par rapport à leur parent.
-   `div[@class="appendix"]//p` correspond à tous les éléments `p` ayant
    un ancêtre `div` pour lequel l’attribut `class` prend la valeur
    `appendix`
-   `@class` correspond à tous les attributs `class` (**pas** à tous les
    éléments ayant l’attribut `class`)
