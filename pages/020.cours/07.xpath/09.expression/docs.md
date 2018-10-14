---
title: Expression XPath
taxonomy:
    category: docs
---

### Expression XPath

Une expression XPath peut être un chemin de localisation, ou une expression plus complexe combinant plusieurs chemins et des appels à des fonctions et opérateurs XPath :

* count(//par) + count(//chapter) (retournera un entier)
* //par | //chapter (retournera une liste d'éléments __par__ et __chapter__)
* substring-after(//par, ',') (retournera une chaîne de caractères)
