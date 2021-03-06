---
title: Teplotná mapa
layout: layout_blog.liquid
date: '2019-03-04'
active_id: 4
alias: heat_map
---

Posledným druhom vizualizácie nameraných dát, ktorý v tejto práci opíšeme je teplotná mapa (anglicky heat map). Jedná sa vôbec o jeden z najznámejších a najpoužívanejších spôsobov, ktorý sa používa na transformáciu surových dát o pohybe používateľových očí do grafickej podoby. Teplotnou mapou môžeme jednoducho vizualizovať namerané údaje nad celou skupinou testovaných používateľov. Teoreticky je možné vizualizovať aj údaje len od jedného používateľa, ale na to sa väčšinou používa vizualizácia pohybu očí. Hlavným cieľom vizualizácie prostredníctvom teplotnej mapy je získať prehľad o miestach na vizuálnej scéne, na ktoré sa používatelia najčastejšie pozerali, t.j. ktoré priťahovali najväčšiu pozornosť. Práve preto sa teplotné mapy často používajú aj pri špecifikácií oblastí záujmu.

![teplotna mapa](/public/img/heatmap.jpg)

Teplotnú mapu vytvoríme tak, že obrázok pôvodnej vizuálnej scény, prekryjeme polopriehľadnou vrstvou, ktorá obsahuje farebne zafarbené miesta, v závislosti od tých miest na vizuálnej scéne, kam sa používatelia pozerali. Farebná schéma teplotnej mapy je plne v réžií nástroja použitého na jej generovanie, no štandardne sa používa kombinácia červených, žltých a modrých farieb. Oblasti, kam sa používatelia pozerali najčastejšie sú znázornené silným odtieňom červenej farby, ktorá následne zoslabne cez žltú, modrú až na sivú resp. úplne priehľadnú. Z toho vyplýva, že miesta označené sivou resp. priehľadnou farbou priťahovali na seba najmenšiu pozornosť. Práve vďaka tomu, že oblasti s najväčším záujmom zo strany používateľov sú reprezentované silne červenou farbou a oblasti s malým záujmom modrou, dostali teplotné mapy aj svoj názov, keďže tieto miesta môžeme interpretovať ako horúce a studené zóny na stránke. Teplotnou mapou vieme spravidla reprezentovať buď počet fixácií nad nejakou oblasťou na vizuálnej scéne alebo celkovú dĺžku trvania všetkých fixácií nad danou scénou. V ďalších kapitolách tejto práce budeme pomocou teplotných máp reprezentovať celkovú dĺžku trvania všetkých fixácií, pretože nás zaujímajú sumárne časy, ktoré používatelia nad danými oblasťami strávili.