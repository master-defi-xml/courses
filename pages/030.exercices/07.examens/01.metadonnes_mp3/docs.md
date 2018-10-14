---
title: Métadonnées inclus dans les MP3
taxonomy:
    category: docs
---

## Métadonnées inclus dans les MP3
Les fichiers audio de type MP3 peuvent inclure une zone réservée au
stockage de méta-données au format [ID3](http://www.id3.org/). Ces
méta-données sont utilisées par les programmes (de lecture, de
gestionnaire multimédia, ...) pour afficher les titres des albums, les
auteurs, etc. Les formats id3 sont disponibles dans deux formats :
[id3v1](http://www.id3.org/ID3v1), que vous utiliserez dans cet examen,
et [id3v2](http://www.id3.org/id3v2.3.0), plus complexe.

Les champs disponibles pour la version id3v1 sont présentés dans le
tableau 1, sous forme synthétique, avec trois exemples.

<center>
<table style="text-align: left;">
<thead>
  <tr><td colspan="2"><b>Table 1 : Champs dans la norme id3v1</b></td>
  <td class="tbl_exemple"><b>Exemple 1</b> </td>
  <td class="tbl_exemple"><b>Exemple 2</b> </td>
  <td class="tbl_exemple"><b>Exemple 3</b> </td>
  </tr>
</thead>
<tbody>
<tr>  <td>Titre du morceau </td>
  <td>30 caractères </td>
  <td class="tbl_exemple">Europa</td>
  <td class="tbl_exemple">Let me</td>
  <td class="tbl_exemple">Urvertira</td>
</tr>
<tr>  <td><span class="anchor" id="line-8"></span>Artiste </td>
  <td>30 caractères </td>
  <td class="tbl_exemple">Santana</td>
  <td class="tbl_exemple">Santana</td>
  <td class="tbl_exemple">Goran Bregovic</td>
</tr>
<tr>  <td><span class="anchor" id="line-9"></span>Album </td>
  <td>30 caractères </td>
  <td class="tbl_exemple">Amigos</td>
  <td class="tbl_exemple">Amigos</td>
  <td class="tbl_exemple">Karmen (with Happy End)</td>
</tr>
<tr>  <td><span class="anchor" id="line-10"></span>Année </td>
  <td>4 caractères </td>
  <td class="tbl_exemple">1976</td>
  <td class="tbl_exemple">1976</td>
  <td class="tbl_exemple">2007</td>
</tr>
<tr>  <td><span class="anchor" id="line-11"></span>Commentaire </td>

  <td>30 caractères </td>
  <td class="tbl_exemple"> - </td>
  <td class="tbl_exemple"> - </td>
  <td class="tbl_exemple"> - </td>
</tr>
<tr>
    <td>Numéro de la piste</td>
    <td>chiffre de 0 à 255</td>
    <td class="tbl_exemple">6</td>
    <td class="tbl_exemple">3</td>
    <td class="tbl_exemple">1</td>
</tr>
<tr>  <td><span class="anchor" id="line-12"></span>Genre (<a href="http://www.multimediasoft.com/amp3dj/help/index.html?amp3dj_00003e.htm">liste</a>)</td>
  <td>chiffre de 0 à 147</td>
  <td class="tbl_exemple">17 [Rock]</td>
  <td class="tbl_exemple">17 [Rock]</td>
  <td class="tbl_exemple">12 [Other]</td>
</tr>
</tbody>
</table>
</center>

1.  Inventez un format XML permettant de structurer les informations du
    format id3v1. Un document XML doit décrire le contenu d'un *album* :
    -   il doit donc pouvoir contenir un ou plusieurs morceaux;
    -   l'identifiant numérique du *genre* doit être introduit sous la
        forme d'un attribut ;
    -   Vous considérerez que deux informations sont obligatoires : le
        titre de l'album et le titre du morceau.
    -   Les autres informations sont optionnelles, mais uniques.
    -   vous composerez deux documents XML correspondant aux exemples du
        tableau 1 : un premier document pour les exemples 1 et 2,
        appartenant au même album, et un autre document pour le
        troisième exemple.
2.  Formalisez votre modèle sous la forme d'une DTD. Vérifiez la
    validité de vos XML.
3.  Écrivez une feuille de style XSLT permettant de transformer vos
    documents XML en documents XHTML.
