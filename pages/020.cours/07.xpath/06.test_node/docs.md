---
title: Test de noeud
taxonomy:
    category: docs
---
### Test de noeud 
Il peut s’agir :

-   du nom de l'élément
-   des éléments d’un espace de nommage (ex : `//dc:*`)
-   d'un attribut : `@cout` représente l'attribut "cout"
-   d’une expression plus générale :
    -   `*` : représente n'importe quel élément
    -   `@*` : représente n'importe quel attribut
    -   `text()` : sélectionne tous les noeuds de type « texte »
    -   `comment()` : sélectionne tous les noeuds de type « commentaire
        »
    -   `process-instruction()` : sélectionne tous les noeuds « PI »
    -   `node()` sélectionne tous les noeuds, de n’importe quel type.
