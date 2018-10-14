---
title: DTD : Déclaration d'éléments
taxonomy:
    category: docs
---
### DTD : Déclaration d'éléments

<table xmlns="http://www.w3.org/1999/xhtml" border="1">
<tr><th rowspan="2">Type d&#8217;&#xE9;l&#xE9;ment</th><th rowspan="2">Description</th><th colspan="2">Exemple</th></tr>
<tr><th><span class="caps">DTD</span></th><th><span class="caps">XML</span></th></tr>
<tr><td><b><span class="caps">EMPTY</span></b></td>

    <p><td><br />
&#xC9;l&#xE9;ment vide<br />
</td></p>

    <p><td></p>

<div class="exemple">
<span class="ex_text">Salut ! </span><span class="ex_elem">&lt;br/&gt;</span><span class="ex_text"> Ça va ?</span>
</div>

    <p></td></p>

    <p></tr>
<tr><td><b><span class="caps">ANY</span></b></td><td>N&#8217;importe quel élément déclaré</td><td></p>

    <p>&lt;!ELEMENT foure_tout <span class="caps">ANY</span>&gt;</td></p>

    <p><td></p>

<div class="exemple">
<span class="ex_elem">&lt;foure_tout&gt;</span><span class="ex_text">
<br/>   bing
<br/>     </span><span class="ex_elem">&lt;ouf&gt;</span><span class="ex_text">
<br/>       </span><span class="ex_elem">&lt;vroum&gt;</span><span class="ex_elem">&lt;/vroum&gt;</span><span class="ex_text">
<br/>       </span><span class="ex_elem">&lt;arggg&gt;</span><span class="ex_text">bof</span><span class="ex_elem">&lt;/arggg&gt;</span><span class="ex_text">
<br/>    </span><span class="ex_elem">&lt;/ouf&gt;</span><span class="ex_text">
<br/></span><span class="ex_elem">&lt;/foure_tout&gt;</span>
</div>

    <p></td></p>

    <p></tr>
<tr><td><b>#PCDATA</b></td><td>texte</td><td>&lt;!ELEMENT resum&#xE9; (#PCDATA)&gt;</td><td>&lt;resum&#xE9;&gt; En r&amp;eacute;sum&#xE9;&#8230; &lt;/r&#xE9;sum&#xE9;&gt;</td></tr>
<tr><td><i><b>S&#xE9;quences</b></i></td><td>Liste d&#8217;&#xE9;l&#xE9;ments, ordonn&#xE9;e ou non</td><td colspan="2">&lt;!ELEMENT article (metadonn&#xE9;es, corp, bibliographie)&gt;<hr/>
&lt;!ELEMENT auteur (nom, institut, note?)&gt;<hr/>
&lt;!ELEMENT auteurs (auteur)+&gt;<hr/>
<i><b>?</b> : 0 ou 1 ; <b>*</b> : 0 ou plus ; <b>+</b> : 1 ou plus </i>
</td></tr>
<tr><td><i><b>Mixte</b></i></td><td>M&#xE9;lange de texte et d&#8217;&#xE9;l&#xE9;ments</td><td colspan="2">&lt;!ELEMENT bibitem (#PCDATA | bauteur | brevue | bserie | btome | btitre | bannee | bediteur | bpagedeb | blieued)*&gt;</td></tr>
</table> </p>
