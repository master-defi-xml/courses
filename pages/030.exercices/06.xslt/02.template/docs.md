---
title: XSLT : xsl:template et xsl:apply-templates
taxonomy:
    category: docs
---
### XSLT : xsl:template et xsl:apply-templates
#### Points nouveaux abordés :
-   Règles modèle internes (*built in templates*)
-   Templates et appel de templates : `<xsl:template>` et
    `<xsl:apply-templates>`
-   Construction de l'arbre du document de sortie : `<xsl:copy>`,
    `<xsl:copy-of>`

#### Fichier XML à utiliser


Le fichiers XML `penda_mbaye_no_dtd.xml`

#### Exercices

**Exercice 1**

Appliquez la feuille de style « minimale » au fichier XML

**Exercice 2**

Faire une feuille de style XSLT permettant d'extraire de la recette les
données XML de la liste d'ingrédients. *sans utiliser d'instruction
xsl:for-each*

Vous devez obtenir en sortie le XML suivant :

````xml
<liste_ingrédients nb_convive="4 à 5">
       <ingrédient quantité="1,5" unité="kg">poisson maigre ou charnu</ingrédient>
       <ingrédient quantité="50" unité="g">fruits de mer (moules, coques, crevettes...) <important>bien frais</important></ingrédient>
       <ingrédient quantité="150" unité="g">tomate concentrée</ingrédient>
       <ingrédient quantité="150" unité="g">oignons</ingrédient>
       …………
</liste_ingrédients>
````

Plusieurs solutions, en utilisant ce fichier XML :

-   [Sans récupération des attributs](recette2liste_de_course.xsl)
-   [Avec récupération des
    attributs](recette2liste_de_course_avec_attribut.xsl)
-   [En utilisant `<xsl:copy>`](recette2liste_de_course_avec_copy.xsl)
-   [En utilisant
    `<xsl:copy-of>`](recette2liste_de_course_avec_copy-of.xsl) (la plus
    concise)
-   [En utilisant un modèle
    "identité"](recette2liste_de_course_par_elimination.xsl)

**Exercice 3**

Faire une feuille de style XSLT permettant d'extraire de la recette les
données XML de la liste d'ingrédients dans un format textuel. *sans
utiliser d'instruction xsl:for-each*

Vous devez obtenir en sortie le XML suivant :

Liste de course :

- 1,5kg poisson maigre ou charnu
- 50g fruits de mer (moules, coques, crevettes...) bien frais
- 150g tomate concentrée
- 150g oignons
- 500g riz
- 3 aubergines
- 3 carottes
- 3 navets
- piment
- 200g tomates fraîches
- poivron vert
- chou-fleur
- huile d'olive
-   1 gousse d'ail
-   sel
-   poivre
(Fin de la liste)
Boisson :         un bandol blanc

[Une solution possible](recette2liste_de_course_txt.xsl)
