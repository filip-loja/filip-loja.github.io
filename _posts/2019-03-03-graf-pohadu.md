---
title: Graf pohľadu
layout: layout_blog.liquid
date: '2019-03-03'
alias: gaze_plot
active_id: 4
---

Ďalší spôsob, ktorým sa dajú vizualizovať dáta namerané pre jedného používateľa je graf pohľadu (anglicky gaze plot), ktorý znázorňuje dráhu pohľadu očí používateľa (anglicky scanpath) tak, ako si prezeral vizuálnu scénu. Dráha pohľadu očí tak vyjadruje sled fixácií a sakád, ktoré používateľ vykonal počas toho, ako si danú vizuálnu scénu prezeral. Pre typický graf pohľadu platí, že fixácie sú zobrazované ako kruhy, pričom veľkosť polomeru daného kruhu záleží od dĺžky trvania príslušnej fixácie, ktorú reprezentuje. Jednotlivé kruhy sú medzi sebou pospájané tenkými čiarami, ktoré reprezentujú sakády, ktoré používateľ vykonal medzi jednotlivými fixáciami. Tieto čiary sú tenké, pretože počas sakád je používateľ prakticky slepý a nedokáže vnímať informácie, ponad ktoré jeho oči prešli.

![teplotna mapa](/public/img/gazeplot.png)

V závislosti od druhu grafu pohľadu môžu byť jednotlivé kruhy reprezentujúce fixácie očíslované podľa poradia, v akom daná fixácia nastala. Pri veľkom počte fixácií, ktoré sa nachádzajú blízko pri sebe sa ale môže tento typ vizualizácie stať rýchlo veľmi neprehľadným. Z toho dôvodu sa väčšinou nepoužíva na zobrazovanie nameraných dát od viacerých používateľov, aj keď čiastočným riešením tohto problému by bola rozdielna farba grafu pre jednotlivých používateľov a rôzne tvary reprezentujúce ich fixácie, nie len kruhy.