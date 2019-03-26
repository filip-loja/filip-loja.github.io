---
title: Zadanie 2
permalink: /documentation/assignment2.html
layout: layout_blank.liquid
active_id: 5
---

**Github:** [https://filip-loja.github.io/](https://filip-loja.github.io/)

## Splenie požiadaviek
Zoznam požiadaviek k vypracovaniu zadania s vyjadrením sa k miere ich splnenia. V tomto zadaní som splnil všetky povinné požiadavky:
1. **štandardné členenie textu na kapitola, podkapitola, podpodkapitola, príloha, generovaný obsah**
    * dokument je rozdelený do kapitol
    * kapitola prvej úrovne je definovaná elementom `chapter`
    * väčšina kapitol má aj podkapitoly
    * kapitoly druhej, tretej, ...  úrovne (podkapitoly) sú definované príslušným vnorením elementu `section`
    * v dokumente sa nachádzajú kapitoly prvej, druhej a tretej úrovne
    * *obsah* dokumentu sa nachádza na strane 6 a je automaticky generovaný na základe kapitol a ich podkapitol
    * na konci práce sa nachádza *príloha* s názvom *Plán práce na projekte*, ktorá je definovaná v elemente `appendix`
1. **výraznenie slov, zvýraznenie členenia textu odrážkami alebo číslovaním**
    * na zvýrazňovanie slov sa používa element `emphasis`
    * štandardné správanie elementu `emphasis` je, že text, ktorý obsahuje sa vykreslí *kurzívou*
    * v dokumente sa používa aj vykreslenie pomocou *tučného písma*, ktoré sa dosiahneme tak, že elementu `emphasis` nastavíme atribút `role="bold"`
    * vykreslenie *kurzívou* je možné vidieť hlavne v častiach:
        * *Úvod*
        * *Výkonnostné metriky*
        * *Metriky správania*
    * vykreslenie *tučným písmom* je možné vidieť hlavne v častiach:
        * *Attensee*
        * *Plán práce na projekte* (ľavý sĺpec)
     * v častiach *Výkonnostné metriky* a *Metriky správania* sa používa zvýraznenie členenia textu pomocou *odrážok* - použili sa elementy `itemizedlist` a `listitem`
1. **odkazy na iné časti vlastného dokumentu, prípadne odkazy na URL**
    * v celom dokumente je veľa odkazov na jeho iné časti
        * referencovanie použitej literatúry
        * referencovanie pojmov z registra pojmov
        * referencovanie obrázkov a tabuliek
    * vyššie popísané referencovania sú dosiahnuté použitím elementu `xref`
    * v časti *Úvod* sa taktiež nachádzajú odkazy na nasledujúce kapitoly, tieto odkazy sú vytvorené pomocou elementu `<link linkend="...">`
    * v dokumente som tiež použil *odkazy na URL*, ktoré sa nachádzajú hlavne v poznámkach pod čiarou a sú vytvorené pomocou elementu `<ulink url="...">`
1. **poznámka pod čiarou**
    * poznámka pod čiarou je použitá v kapitolách *Attensee* (odkazy na internetové zdroje) a *Zaznamenávanie pohľadu* (zdroj dát z tabuľky)
    * poznámka pod čiarou je vytvorená pomocou elementu `footnote`
1. **zoznam použitej literatúry a zdrojov vrátane ich citácie v texte**
    * predposledná časť dokumentu predstavuje zoznam použitej literatúry
    * na každú jednu položku zo zonamu literatúry existuje v práci minimálne jeden odkaz
    * položka má definovaný atribút `id` a odkazujeme sa na ňu pomocou elementu `<xref linkend="..."/>`
    * všetky referencie na zdroje, ktoré sa v práci nachádzajú a sú zapísané zátvorkovou notáciou, napr. `[1]`, odkazú na práve jednu položku definovú v zozname použitej literatúry
1. **vloženie obrázku a tabuliek, odkazy na ne v texte; zoznam obrázkov a tabuliek v úvode alebo závere textu**
    * v originálnej verzií mojej bakalárskej práce sa nenachádzajú žiadne obrázky ani tabuľky, no za účel splnenia tohto kritéria som ich tam dodatočne vložil
    * celkovo sa v práci nachádzajú tri obrázky a dve tabuľky
    * na každý obrázok a tabuľky obsahuje atribút `id` a existuje naň minimálne jedna referencia použitím elementu `<xref linkend="..."/>`
    * obrázky som vkladal použitím nasledujúcich elementov: `figure`, `mediaobject`, `imageobject`, `imagedata`
    * tabuľky som vkladal použitím hlavne nasledujúcich elementov: `table`, `tgroup`, `colspec`, `thead`, `tbody`, `row`, `entry`
    * na začiatku práce, hneď za časťou *Obsah* sa nachádzajú *automaticky generované zoznamy obrázkov a tabuliek*
    * automatické generovanie spomenutých zoznamov som docielil vložením hodnoty `book      title,toc,figure,table` do elementy `<xsl:param name="generate.toc">` v súbore `thesis.xsl`
1. **vytvorenie registra pojmov (indexu) s pojmami hierarchicky usporiadanými do dvoch úrovni**
    * úplne poslednou časťou v mojom zadaní je register pojmov, ktorý je automaticky generovaný na základe pojmov definovaných v textoch
    * vytvorenie automatického registra pojmov som docielil pridaním elementu `index` na koniec zdrojového súboru
    * zoznam obsahuje celkovo *20 pojmov* a je hierarchicky usporiadaný do *troch úrovní*
    * definovanie pojmu, ktorý sa v zozname zobrazí som vykonal pomocou elemntu `indexterm`, do ktorého som vnáral nasledujúce elementy podľa požadovanej dĺžky vnorenia: `primary`, `secondary`, `tertiary`

## Validácia
Celý dokument je valídny a bol validovaný pomocou on-line validátora, ktorý je dostupný na stránke [freeformatter.com](https://www.freeformatter.com/xml-validator-xsd.html) aj pomocou programu [XMLmind Editor](http://www.xmlmind.com/xmleditor/_download/xxe-perso-8_3_0-setup.exe).

## Vizuálne zmeny
V šablóne, ktorú sme dostali som vykonal niekoľko vizuálnych zmien. Upravil som zobrazenie titulnej strany, z ktorej som odstránil zbytočné čiary a zmenšil písmo. Taktiež som upravil zobrazovanie odsekov, z ktorých som odstránil odsadenie prvého riadku a pridal medzeru medzi odseky. V názvoch kapitol som odstránil slovo "kapitola", ktoré sa zobrazovalo pred jednotlivými číslami. Nepodarilo sa mi však presunúť číslo na rovnaký riadok ako je nadpis kapitoly.
