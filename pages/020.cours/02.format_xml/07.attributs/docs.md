---
title: Les attributs
taxonomy:
    category: docs
---

### Les attributs
Les attributs :

-   permettent d'associer des paires « nom - valeur» à un élément
-   sont de la forme `nom="valeur"`
-   règles de nommage : les mêmes que pour les éléments
-   la valeur de l’attribut est uniquement textuelle
-   `<points coordonnées = "12 34 12 34"/>` est une liste de valeur.
-   Les écritures suivantes sont équivalentes :

```xml
    <abs lang = "fr"/>
    <abs lang="fr"/>
    <abs lang='fr'/>
    <abs lang = 'fr'/>
    <abs
         lang = 'fr'/>
```

-   Il ne peut y avoir plusieurs attributs portant le même nom :
    `<abs lang="fr" lang="en"/>` **est incorrect**
-   Des recommandations (XML,XML Base et xml:id) définissent des attributs à
    la signification prédéfinie :
    -   **xml:lang** Code ISO de la langue
        (ex: fr)
    -   **xml:space** (default\|preserve)
    -   **xml:id** pour identifier de façon unique un élément
    -   **xml:base** pour définir l’URI de
        base d’un document
