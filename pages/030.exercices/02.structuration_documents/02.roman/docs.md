---
title: Structuration d'un roman
taxonomy:
    category: docs
---
### Structuration d'un roman
Proposez une structuration possible pour un *roman*, en insistant sur
les aspects "sémantiques" plutôt que sur la présentation. Présentez
votre travail sous la forme d'un arbre, en utilisant un outil de type
visio (en faisant un export de type jpg ou pdf),
[dia](http://projects.gnome.org/dia/) ou
[yED](http://www.yworks.com/en/products_yed_about.html) si vous êtes
familier de ce type d'outil. Sinon, utilisez du texte indenté. Vous
noterez les cardinalités des différents nœuds avec les symboles suivants
:

-   **+** : 1 ou plus
-   **\*** : 0 ou plus
-   **?** : 0 ou 1
-   Pas de symbole si 1 élément et 1 seul.

par exemple (pour un article de journal) :

    article -> auteur+ -> nom
                       -> prénom?
               -> date d'écriture?
               -> date de publication
               -> container de titre -> titre
                                     -> sous-titre?
     etc.

Vous composerez ensuite deux exemples en XML et vérifierez qu'ils sont
bien formés.
