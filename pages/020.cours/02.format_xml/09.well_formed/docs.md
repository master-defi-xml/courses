---
title: Document bien formé
taxonomy:
    category: docs
---

### Document bien formé

Les règles à respecter :

-   les noms des éléments, attributs et entités doivent être conformes ;
-   à chaque balise de début doit correspondre une balise de fin ;
-   les éléments peuvent être imbriqués, mais ils ne doivent pas se
    recouvrir ;
-   il ne doit y avoir qu’un seul élément racine ;
-   les valeurs des attributs doivent être entre guillemets ;
-   un élément ne doit pas avoir deux attributs avec le même nom ;
-   les commentaires et instructions de traitement ne doivent pas
    apparaître à l’intérieur de balises ;
-   aucun caractère &lt; ou & ne doit apparaître dans les données
    textuelles (hors CDATA !) d’un élément ou
    d’un attribut ;
- l'encodage doit être conforme à la déclaration.

Un document respectant ces règles est dit **bien formé**.

__Un document qui n'est pas bien formé n'est pas un document XML.__
