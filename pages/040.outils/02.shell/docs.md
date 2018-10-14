---
title: Console, shell, arborescence de fichiers
taxonomy:
    category: docs
---
### Console, shell, arborescence de fichiers
#### Console (interface en ligne de commande) ####
La plupart des systèmes d'exploitation (Windows, Mac OS X, Linux, ...) permettent d'interagir avec l'ordinateur sans cliquer dans une interface graphique, mais en « lançant » des commandes comprises par le système d'exploitation, ou plus exactement par un programme particulier qu'on appelle souvent un __shell__.
Au première abord, cela ne parait pas très convivial... Mais utiliser une console de commande présente de nombreux avantages, parmi lesquels :

* de mieux comprendre comment fonctionne le système d'exploitation ;
* de faire certaines choses plus rapidement  (recherches, copies de fichier, ...) ;
* de lancer des programmes, sans s'embêter à programmer des interfaces graphiques ;
* ça fait très « geek » !

#### Système de fichiers ####
Quel que soit le système d'exploitation, les programmes et les fichiers sont stockés sur le "disque dur" de l'ordinateur (cela peut-être de la mémoire non volatile, dans votre smartphone par exemple). Le "système de fichier" permet d'associer une __structure arborescente__ au stockage physique : les fichiers sont situés dans des __répertoires__ (les « dossiers »), qui peuvent aussi contenir des répertoires (on parle de « sous-répertoires » d'un « répertoire »). Un répertoire unique (le __répertoire racine__)  contient l'ensemble de l'arborescence.

La position d'un fichier ou un répertoire dans l'arborescence est décrite par un __chemin__ ( « path »), où les différents niveaux hiérarchiques sont séparés par des '__/__' :
 <code>/home/jpjorda/Public/document.pdf</code>, par exemple. Ici, le chemin est décrit à partir de la racine (__/__) de l'arborescence : on parle de __chemin absolu__. On peut également décrire le chemin d'un fichier à partir d'une autre position dans l'arborescence (le __répertoire courant__, ou __répertoire de travail__) : par exemple, du répertoire <code>/home/jpjorda</code>, le chemin du fichier <code>document.pdf</code> est <code>Public/document.pdf</code>. On parle alors de __chemin relatif__.

Dans un chemin, il est possible de noter de façon simplifiée le répertoire courant en utilisant un point (__.__). Le __répertoire parent__ du répertoire courant est noté  __..__.  Par exemple, du répertoire  <code>/home/jpjorda/Public/</code>, le chemin du répertoire <code>/home</code> est <code>../..</code>.

Les noms de fichiers sont sensible à la casse :  <code>/home/jpjorda/Toto.pdf</code> est un fichier différent de <code>/home/jpjorda/toto.pdf</code>.

#### Commandes  sous UNIX

###### Noms de commande, arguments et options

Les « commandes » sont des programmes permettant d'agir ou d'obtenir des informations sur le système et de manipuler des fichiers et des répertoires. L'exécution des commandes dans le sheel se fait en entrant leur nom, suvi éventuellement d'__options__ et d'__arguments__, puis en appuyant sur la touche « entrée ».  Les différents parties de la ligne de commande sont _séparées par des espaces_.

__Exemples :__

    ls -l -a mon_repertoire

* nom de la commande : __ls__
* options : __-l -a__
* argument : __nom_repertoire__


* Les __options__ commencent par __un ou deux tirets__, ce qui les distinguent des arguments.
*
__NOTE:__ les programmes ne faisant pas partie du shell (comme `xmllint` ou `xsltproc`) suivent généralement des conventions identiques.

###### Quelques commandes du shell UNIX####

Action | commande UNIX | Remarque
---------|----------|-----------------|
Lister les fichiers du répertoire courant | ls | _list_
Lister les fichiers du répertoire 'toto' | ls toto |
Lister les fichiers du répertoire 'toto' en incluant les fichiers « cachés »| ls -a toto |
Afficher une vue de l'arborescence du répertoire courant | tree | sous linux, tree n'est pas une commande du shell, mais c'est un programme généralement installé par défaut
Afficher le répertoire de travail | pwd |  _print working directory_
Changer de répertoire courant, pour se placer dans toto/ | cd toto |  _change directory_
Revenir au répertoire "maison" | cd | _current directory_
Créer un répertoire `toto` | mkdir toto |  _make directory_
Copier le fichier `monfichier` dans le répertoire `toto`  | cp monfichier toto/ |
Dupliquer le fichier `monfichier` dans `monfichier2` | cp monfichier monfichier2|
Déplacer le fichier `monfichier` dans le répertoire `toto`  | mv monfichier toto/ | _move_
Renommer `monfichier` en `monfichier2` | mv monfichier monfichier2|
Créer un fichier vide nommé `monfichier` | touch monfichier |
Copier  récursivement le répertoire  `titi` dans le répertoire `toto` | cp -r titi toto|
Supprimer le fichier `monfichier` | rm monfichier | _remove_. Attention ! la suppression est définitive
Supprimer le répertoire vide  `toto` | rmdir toto|
Voir le contenu du fichier `monfichier` sur la console | cat monfichier |
Voir le contenu du fichier `monfichier` sur la console de façon paginée | more monfichier _ou_ less monfichier|
Afficher l'aide sur la  commande `ls` | man ls|
