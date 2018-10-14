---
title: Programmation XML en Perl
taxonomy:
    category: docs
---

### Programmation XML en Perl

#### Modules Perl existant

Voir [Perl-XML Frequently Asked
Questions](http://perl-xml.sourceforge.net/faq/)

Il existe de nombreux modules permettant de manipuler le XML en Perl.
Un des module les plus performant est
[XML::LibXML](http://search.cpan.org/perldoc?XML::LibXML), qui s’appuie
sur la bibliothèque [libxml2](http://xmlsoft.org).
On peut l’associer au module
[XML::LibXSLT](http://search.cpan.org/perldoc?XML::LibXSLT) qui permet
d’appliquer des feuilles de style XSLT.

#### Installation de XML::LibXML et XML::LibXSLT

-   Sous **linux** : XML::LibXML et XML::LibXSLT sont disponibles pour
    la plupart des distributions sous forme de paquetages.
    Sinon , installez libxml2 et libxslt puis utilisez la commande
    `cpan` (exemple : `cpan -i XML::LibXML`).

<!-- -->

-   Sous MacOS X : D’après le
    [README](http://kobesearch.cpan.org/htdocs/XML-LibXML/README.html) :
    *It is confirmed that XML::LibXML builds and runs without problems
    since Mac OS X 10.2.6.*. L’installation avec cpan doit marcher, mais
    je ne connais pas Mac OS X…

<!-- -->

-   Sous Windows :
    -   Avec **cygwin**, l’installation semble compliquée : je n’ai pas
        réussi
    -   Avec
        [ActivePerl](http://perl-xml.sourceforge.net/faq/#xml_parser),
        suivre les instructions
        [ici](http://perl-xml.sourceforge.net/faq/#win32_ppm)

#### Exemples
Un exemple de programme associant l’utilisation de XML::LibXML et
XML::LibXSLT : [xml\_perl.zip](xml_perl.zip)

Autres exemples:
[xml\_perl2.zip](xml_perl2.zip)
