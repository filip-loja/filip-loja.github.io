---
title: Analýza nameraných dát
layout: layout_blog.liquid
date: '2019-03-05'
active_id: 4
---

Cieľom zaznamenávania používateľovho pohľadu a následnej analýzy nameraných dát je, aby sme hlbšie pochopili, aký vplyv mala testovaná vizuálna scéna na používateľove správanie. Aj keď sa môže zdať, že určité závery by sa dali vyvodiť zo surových dát aj bez ich spracovania a analýzy, poväčšine by to boli len o nepresné odhady a dáta samotné by mali len malú výpovednú hodnotu. Preto je potrebné mať metriky, ktorými namerané dáta analyzujeme a pomocou ktorých z nich môžeme vyvodiť určité kvantitatívne závery. V nasledujúcej časti preto v krátkosti popíšeme metriky, ktoré sa najčastejšie používajú v súvislosti so zaznamenávaním pohľadu. Tieto metriky sme rozdelili do dvoch častí: výkonnostné metriky a metriky správania.

## Výkonnostné metriky

* **Správnosť splnenia zadanej úlohy** – táto metrika sa môže vyhodnocovať buď binárne, kedy platí, že používateľ zadanú úlohu buď splnil alebo nie, alebo sa určí viacero úrovní úspechu založených na percentuálnej miere správnosti vyriešenia zadanej úlohy.
* **Čas strávený riešením úlohy** – používa sa na meranie efektívnosti práce s navrhnutým používateľským rozhraním testovaného produktu. Väčšinou platí, že čím je tento čas nižší, tým ma testovaný produkt lepšiu použiteľnosť.

## Metriky správania
* **Doba zotrvania v oblasti záujmu** – vypočíta sa ako súčet všetkých časov, ktoré používateľ strávil pozeraním sa do určitej oblasti záujmu. Táto metrika zahŕňa všetky typy pohybov očí (fixácií aj sakád) a je silným ukazovateľom úrovne zaujímavosti konkrétnej oblasti záujmu pre používateľa.
* **Počet fixácií** – vypočíta sa ako celkový počet fixácií, ktoré používateľ vykonal buď v rámci jednej oblasti záujmu alebo v rámci celej testovanej vizuálnej scény.
* **Dĺžka trvania fixácie** – táto metrika predstavuje priemerný čas trvania jednej fixácie a väčšinou sa pohybuje v rozpätí od 150 do 300 milisekúnd.
* **Čas do prvej fixácie** – vyjadruje ako dlho používateľovi trvalo, kým vykonal na vizuálnej scéne svoju prvú fixáciu v rámci nejakej oblasti záujmu.