---
title: 'XPath : chemin relatif'
taxonomy:
    category:
        - docs
---

### XPath : chemin relatif

Dans cet exercice, vous utiliserez le document `penda_mbaye.xml` pour déterminer les chemins de localisation de différents nœuds, en vous positionnant dans différents éléments du document (chemins "relatifs"). Dans certains cas, plusieurs expressions sont possibles : efforcez-vous de trouvez _le chemin le plus direct_. Vous testerez ces chemins en utilisant la commande `xmllint` en mode shell  (`xmllint --shell`).

Dans chaque cas, on précise le « contexte local », c.-à-d. le nœud constituant le début du chemin.

Déterminez les chemins relatifs pour les situations suivantes :

1.  _Contexte local_ : l'élément __liste\_ingrédients__ .
  1. l'attribut _nb\_convive_ de cet élément
  2. les éléments __ingrédient__
  3. les nœuds texte fils des éléments __ingrédient__
  4. les nœuds texte descendant des éléments __ingrédient__
  5. l'élément __titre__ (le titre de la recette)
2. _Contexte local_ : le 4ième élément __ingrédient__
  1. les attributs de cet élément
  1. les éléments __ingrédient__ à partir du 5ième élément __ingrédient__
  2. les nœuds texte descendant du premier, deuxième et troisième éléments  __ingrédient__
  3. les éléments __étape__ ayant un élément fils __important__
  4. l'attribut _type_ de l'élément __accord\_boisson__
