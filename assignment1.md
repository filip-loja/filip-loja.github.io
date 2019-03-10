---
title: Zadanie 1
permalink: /documentation/assignment1
layout: layout_blank.liquid
active_id: 5
---

**Github:** [https://filip-loja.github.io/](https://filip-loja.github.io/)

## Podstránky
* **Domov** - domovská stránka so základnými údajmi
* **Skúsenosti** - stránka, ktorá obsahuje zoznam jazykov technológií, ktoré ovládam
* **Projekty** - stránka, ktorá obsahuje zoznam projektov, na ktorých som pracoval
* **Blog** - stránka, ktorá obsahuje zoznam všetkých blogových príspevkov
* **[blog page]** - stránky jednotlivých blogových príspevkov, všetky príspevky sú na tému *testovanie použteľnosti*
* **Dokumentácia** - stránka, ktorá obsahuje odkazy na dokumentácie k zadaniam z predmetu *Webové publikovanie*
* **[assignment]** - jednotlive stránky dokumentácií


## Rozloženia
V projekte som použil celkom 4 rozloženia stránok, ktoré sú uložené v priečinku `/_layouts/`. Každý súbor, v ktorom je definované rozloženie začína prefixom `layout_` a končí príponou `.liquid.html`.
* **index** - používa sa pre úvodnú stránku (homepage), okrem obsahu vkladaného cez `content` obsahuje aj hlavnú profilovú fotografiu a odkazy v podobe ikon, ktoré smerujú na ďalšie podstránky
* **page** - rozloženie pre bežné podstránky, obsahuje len základnú `HTML` štruktúru a väčšina obsahu sa doň vkladá cez `content`
* **blog** - používa sa pri zobrazovaní blogových príspevkov, okrem vloženého obsahu obsahuje ešte odkazy na najnovšie blogové príspevky a odkazy na nasledujúci a predchádzajúci príspevok
* **blank** - používa sa na zobrazovanie dokumentácií k zadaniam, nevzťahuje sa naň štýlovanie z osttaných podstránok

## Premenné
* `active_id` - nastavuje zvýraznenú položku v hlavnom menu, používa sa takmer v každom súbore
* `db` - v tejto premennej je uložená celá cesta k dátovému súboru, z ktorého sa na danú podstránku vyberá obsah; súbory: `skills.liquid.html` a `projects.liquid.html`
* `img_path` - absolútna cesta k obrázkom pre zadanú podstránku; súbory: `skills.liquid.html` a `projects.liquid.html`
* `my_age` - v tejto premennej je uložený vek autora, používa sa spoločne s filtrom `to_age`; súbor: `index.liquid.html`
* `current` - spolu s premennou active_id sa používa na zvýraznenie aktuálnej položky v navigácií; súbor: `/_includes/main_navbar.liquid.html`

Premenné taktiež používam ako vstupné parametre pre mnou definované znovupoužiteľné komponenty. Po vložení komponentu do stránky sa potom na miesto premenných vyrenderuje ich obsah. Komponenty sú uložené v priečinku `/includes/components`
* `c_progress_bar.liquid.html` => `img`, `name`, `progress`
* `c_skill_icon.liquid.html` => `title`, `permalink`, `img`
* `c_project.liquid.html` => `title`, `text`, `img`

## Filtre
* `date_to_string` - používa sa pri vykresľovaní náhľadov blogových príspevkov, hlavne na stránke blog; súbory: `/blog/index.html` a `/_layouts/layout_blog.liquid.html`
* `truncatewords` - používa sa na zobrazovanie náhľadu textu jednotlyvých blogových príspevkov; súbor: `/blog/index.html`
* `append` - používa sa na spojenie dvoch textových reťazcov pri zostavovaní url cesty a jej následnom poslaní ako parameter do funkcie `include`; súbor: `skills.liquid.html`
* `downcase` - používa sa na transformáciu textu len na malé písmená, hlavne pre potreby generovania `alt` atribútu pre obrázky; súbory: `/includes/components/c_progress_bar.liquid.html` a `/includes/components/c_skill_icon.liquid.html`
* `markdownify` - používa sa na transformáciu `md` značiek do `HTML`; súbor: `/includes/components/c_project.liquid.html`

### Vlastné filtre
* `to_age`
    * používa sa na automatické generovanie počtu rokov podľa aktuálneho dátumu a zadaného dátumu narodenia
    * v texte nahradí zadaný reťazec atomaticky vypočítaným vekom
    * príklad použitia" `' Mám [AGE] rokov.' | to_age: '[AGE]' , my_age `
    * použitý v súbore: `skills.liquid.html`
    * definovaný v súbore: `_plugins/to-age.rb`

## Tagy
* v zdrojových súboroch podstránok sa používajú najčastejšie: `if`, `for` a `assign`

## Kolekcie
* používam len vstavané kolekcie, vlastne som nevytváral
* `_data`, `_includes`, `_layouts`, `_plugins`, `_posts`

## Dátové súbory
* `/_data/navigation.yml` - obsahuje definíciu štrultúry hlavnej navigácie; podľa tejto definície potom generuje súbor `/_includes/main_navbar.liquid.html` hlavnú navigáciu
* `/_data/layouts/layout_index.yml` - obsahuje difiníciu odkazov, ktoré sa generujú na stránkách, ktoré používajú `layout_index.liquid.html` rozloženie
* `/_data/pages/projects.yml` - obsahuje definíciu zoznamu projektov
* `/_data/pages/skills.yml` - obsahuje definíciu zoznamov programovacích jazykov a technológií

## Pluginy
* `jekyll-paginate`
    * vstavaný plugin, ktorý umožňuje stránkovanie blogových príspevkov
* `jekyll-admin`
    * poskytuje GUI, pomocou ktorého je možné meniť obsah stránok
    * GUI je podobné tradičným CMS nástrojom ako Wordpress
    * stiahnuté z: [https://github.com/jekyll/jekyll-admin](https://github.com/jekyll/jekyll-admin)
    * dostupné na adrese: [http://localhost:4000/admin](http://localhost:4000/admin)
    * **Pozor!** Plugin obsahuje bug a nie je pomoocu neho možné meniť obsah dátových súborov pokiaľ je editor zapnutý v textovom režime.

## Štýly
* štýly stránky som napísal sám, bez použitia akéhokoľvek frameworku
* štýly sú písané v jazyku `sass`, ktorý je následne skompilovaný no natívneho `css`
* skript `compile_css.bat` spustí kompiláciu štýlov


