---
title: 'XSLT : &lt;xsl:template> et &lt;xsl:apply-templates>'
taxonomy:
    category:
        - docs
---

### XSLT : <xsl:template> et <xsl:apply-templates>
-   Le parcours de l’arbre d’entrée commence par la racine du document
-   La règle modèle (*template*) correspondante à la racine du document
    est appliquée (cela peut-être [la règle modèle
    interne](/xslt/68/regles-modele-internes-_built-in-templates_))
-   Si l’application de cette règle comporte des
    &lt;xsl:apply-templates&gt; contenant des motifs valables (ou des
    &lt;xsl:call-template&gt;), alors les règles modèles correspondantes
    sont appliqués.
-   Le traitement se poursuit *récursivement* par l’application des
    différentes règles modèle (qui peuvent être des [règles modèle
    internes](/xslt/68/regles-modele-internes-_built-in-templates_))
-   L’arbre de sortie est construit par l’application des
    [instructions](/xslt/65/construction-de-l-arbre-de-sortie) ou par
    des *élément littéraux*.

Extraits de l’introduction de la recommandation (trad. française) :

-   La transformation est obtenue en associant des motifs à des modèles
-   Un modèle est instancié pour un élément source particulier afin de
    créer une partie de l’arbre résultat.
-   Un modèle peut contenir des éléments permettant de spécifier
    littéralement les éléments de la structure résultante
-   Un modèle peut aussi contenir des éléments de l’espace de noms XSLT
    représentant des instructions pour la création de fragments de
    l’arbre résultat.
-   Lorsqu’un modèle est instancié, chaque instruction est exécutée et
    remplacée par le fragment d’arbre résultat qu’elle aura crée.
-   La création d’un fragment de l’arbre résultat par le traitement des
    éléments descendants se fait en trouvant la règle modèle applicable
    et en instanciant son modèle. Il faut noter que les éléments ne sont
    traités que lorsqu’ils sont sélectionnés par l’exécution d’une
    instruction.
-   Les instructions peuvent sélectionner et traiter les descendants des
    éléments source.
-   L’arbre résultat est construit en prenant la règle modèle (template
    rule) du noeud racine et en instanciant son modèle.
