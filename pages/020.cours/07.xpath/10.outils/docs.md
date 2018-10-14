---
title: Outils de mise au point d'expressions XPath
taxonomy:
    category: docs
---
### Outils de mise au point d'expressions XPath

Certains éditeurs ou parseurs permettent de retourner la liste de noeuds
correspondant à une expression XPath, ce qui permet de mettre au point
des expressions XPath complexes :

-   xmllint possède un mode « shell » qui permet
    -   de se déplacer dans l’arborescence du fichier en utilisant des
        instructions “à la UNIX” (commandes
        cd, ls, pwd)
    -   de retourner la liste de noeuds correspondant à une expression
        XPath, avec la commande ls ou la commande xpath,.
-   En dehors du mode shell, l'option --xpath permet d'évaluer des
    expressions xpath absolues
-   xmlcopyeditor possède un « évaluateur » XPath (touche F9)
-   le module XMLTools de notepad++ a également un évaluateur XPath
-   l'éditeur (payant) Oxygen intègre un outil de mise au point des
    expressions XPath
