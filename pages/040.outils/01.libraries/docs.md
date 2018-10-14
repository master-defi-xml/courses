---
title: Bibliothèques XML et XSLT
taxonomy:
    category: docs
---
## Bibliothèques XML et XSLT 
### Utilisation de xmllint (de la bibliothèque libxml2) et xsltproc (libxslt)

-   Pour vérifier qu’un document est **bien formé** :
    xmllint -noout document.xml

-   Pour vérifier qu’un document est **valide** :
    xmllint -noout -valid document.xml

-   Pour tester une expression XPath :
    xmllint -shell document.xml

    puis, dans l'interface :
    xpath //\*

-   Pour transformer un document xml avec une feuille de style xslt :

    xsltproc mon\_fichier.xslt mon\_fichier.xml &gt;
    mon\_fichier\_transforme.xml

### Installation de libxml2 et libxslt sous linux et MacOS X

Ces deux bibliothèques sont installés par défaut. Il suffit de lancer
une console de commandes pour lancer xmllint et xsltproc.

### Installation de libxml2 et libxslt sous windows

#### Avec cygwin

La façon la plus simple d’utiliser libxml2 et libxslt sous windows est
d’installer [cygwin](http://www.cygwin.com/). Cygwin permet d’avoir une
environnement similaire à linux sous Windows.
Pour installer libxml2 et libxslt, il suffit alors de les sélectionner
lors de l’installation.

#### Sans cygwin

##### En téléchargeant les fichiers sur le site officiel

Pour ceux qui ne souhaitent pas installer cygwin et qui veulent utiliser
directement ces bibliothèques sous windows, il faut les télécharger et
les installer “à la main”.

Les instructions d’installation sont accessibles à partir de [cette
url](http://www.zlatkovic.com/libxml.en.html). Les binaires sont
téléchargeables à partir de [ce site
ftp](ftp://ftp.zlatkovic.com/libxml/).

Attention à bien suivre les instructions, et notamment à installer les
dépendances.

##### En téléchargeant le zip sur ce site

Le fichier zip [libxml2\_win.zip](libxml2_win.zip) contient les
binaires nécessaires au lancement des applications **xmllint** et
**xsltproc**. Il n'est pas mis à jour régulièrement, et les versions des
programmes ne sont pas nécessairement les dernières disponibles.

Pour installer les fichiers et faire marcher les application, les étapes
suivantes sont nécessaires :

1.  Télécharger le fichier et le décompresser dans le répertoire
    utilisateur
2.  Ajouter ou modifier la variable d'environnement utilisateur **PATH**
    pour qu'elle contienne le chemin vers les fichiers

Ouvrir une fenêtre de commande Windows (programme “cmd”) :
et lancer la commande xmllint.exe

Si l’aide de la commande xmllint apparait, c’est gagné !
Sinon, reprendre les points ci-dessus en vérifiant bien les chemins.
