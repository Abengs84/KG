# Daslight 4 - Skriven tutorial

Denna guide är en praktisk introduktion till Daslight 4. Den är skriven för er setup men fungerar också som generell arbetsmetod.

> Versioner av Daslight 4 kan skilja lite i UI. Kontrollera knappnamn och placering i er installation.

## 1. Patch - bibliotek, universe och DMX-kanaler

Patch-steget handlar om att tala om för Daslight:
- vilka armaturer ni har
- vilken mode/profil varje armatur kör
- vilken DMX-startkanal varje armatur har
- vilket universe armaturen ligger i

### 1.1 Öppna Patch-läget
1. Starta Daslight 4 och öppna showfilen (eller ett nytt projekt).
2. Gå till `PATCH`-delen i vänsterpanelen/toppmenyn.
3. Öppna biblioteket med armaturer (`ScanLibrary`/fixture library).

### 1.2 Välj armatur i biblioteket
1. Sök upp tillverkare (t.ex. `Cameo`).
2. Välj exakt modell.
3. Välj rätt mode (exempel: `Mode 5`, `Mode 8`, osv.).
4. Bekräfta antal kanaler i mode mot manualen.

Viktigt: Samma mode måste också vara inställt på den fysiska armaturen. Daslight-mode och armaturens mode ska matcha 1:1.

Obs: Om fel mode väljs blir vissa funktioner fel (pan/tilt, dimmer, färger, gobos, osv.).

### 1.3 Universe
- Ett universe innehåller upp till 512 DMX-kanaler.
- I Daslight väljer du normalt `Universe 1` för mindre riggar.
- Om ni passerar kanal 512 måste armaturer läggas i nästa universe (`Universe 2` osv.).

För er rigg ligger patchen inom samma universe om inget annat anges.

### 1.4 DMX-kanaler (adresser)
1. Ange varje armaturs `Start Address` (DMX-kanal).
2. Daslight räknar automatiskt vidare kanalomfång utifrån valt mode.
3. Kontrollera att inga armaturer överlappar varandra i kanaler.

Exempel:
- Armatur A: start 1, mode 9 kanaler -> använder 1-9
- Armatur B: start 10, mode 7 kanaler -> använder 10-16

### 1.5 Snabb kontroll efter patch
Checklista:
- Rätt modell vald i biblioteket
- Rätt mode vald
- Rätt DMX-startkanal satt
- Rätt universe valt
- Ingen kanal-överlapp

När detta stämmer blir resten (Edit/Live) mycket enklare.

---

## 2. Edit - Scenes, Group, Steps och Palettes

`Edit` är programmeringsläget där ni bygger showen.

## 2.1 Grundbegrepp

### Scene
En `Scene` är ett programmerat tillstånd eller en cue, till exempel:
- "Blue wash"
- "Beam sweep"
- "Blackout"

En scene kan vara statisk eller innehålla flera steg (steps).

### Group
`Group` är mappar/kategorier för att organisera scener, till exempel:
- Intro
- Sånger
- Effekter
- BPM/Speed
- Service/Test

Bra struktur gör Live-körning snabbare.

### Step
`Step` är ett delsteg inne i en scene:
- Step 1: lampor upp i vitt
- Step 2: fading till blå
- Step 3: strobo + beam movement

Varje step har normalt timing:
- `Fade` (övergångstid)
- `Hold`/`Wait` (hur länge steget ligger kvar)

Flera steps i följd = en chase.

## 2.2 Vanligt arbetsflöde i Edit
1. Välj armaturer du vill programmera.
2. Sätt värden (dimmer, color, pan/tilt, gobos, osv.).
3. Spara som ny scene.
4. Lägg till fler steps om scenen ska röra sig över tid.
5. Lägg scenen i rätt group.

Tips:
- Namnge scener tydligt (`001 Blackout`, `020 Intro Blue`, osv.).
- Håll samma namnsystem i hela showen.

## 2.3 Bygga med Effects Generator
Effects Generator används för att snabbt skapa rörelser och dynamiska effekter över flera armaturer samtidigt.

Vanligt arbetsflöde:
1. Markera alla armaturer som ska ingå i effekten.
2. Öppna `Effects Generator` i Edit-läget.
3. Välj typ av effekt (t.ex. position, dimmer, color, beam beroende på armaturtyp).
4. Justera parametrar som speed, size/amplitude, phase/offset och riktning.
5. Förhandsgranska resultatet.
6. Bekräfta och spara i scenen/steget.

Effects Generator skapar vanligtvis flera `Steps` i scenen. Dessa steps spelas i följd och repeteras om och om (loop) tills du byter scen eller stoppar uppspelningen.

Viktigt i er setup:
- Efter att en effekt har genererats går det inte att "lägga till" fler armaturer på ett smidigt sätt i samma effekt.
- Därför behöver ni markera och generera effekten för alla armaturer som ska vara med direkt från början.
- Om du missar armaturer behöver effekten oftast göras om för hela gruppen.

Tips:
- Bestäm först exakt vilka lampor som ska ingå.
- Kör sedan Effects Generator en gång för hela urvalet.
- Döp scenen tydligt efter vilken grupp/effekt som skapats.

### 2.4 DVC Pro minne (120 KB) och antal Steps
DVC Pro har cirka `120 KB` flashminne för Stand Alone-data. Det betyder att antalet möjliga `Steps` inte är obegränsat.

Viktigt:
- Det finns ingen exakt "maxgräns i antal steps" som alltid gäller.
- Hur mycket som ryms beror på hur komplexa scenerna är (antal armaturer, antal kanaler, triggers, och metadata).

Praktisk riktlinje:
- Börja med att tänka i storleksordningen `150-300` steps totalt för en show som säker nivå.
- Vid enklare scener kan fler få plats, men kontrollera alltid minnesindikatorn i `Stand Alone` innan `Write`.
- Om `Write` misslyckas eller minnet blir fullt: minska antal steps och testa igen.

Så håller ni antalet steps lågt:
- Använd längre `Fade/Hold` i stället för många små micro-steps.
- Återanvänd samma scener i flera sammanhang i stället för att duplicera nästan identiska scener.
- Bygg variation med speed/BPM i Live i stället för separata step-tunga scener.
- Undvik att generera onödigt långa Effects Generator-sekvenser.
- Dela upp i "must have" och "nice to have" scener och prioritera de viktigaste till Stand Alone.

---

## 3. Live - körning av showen

`Live` är läget för drift under repetition/framförande.

## 3.1 Vad man gör i Live
- triggar scener manuellt
- byter mellan grupper snabbt
- kör speed/BPM-baserade effekter
- använder master-kontroller (dimmer, blackout, speed)

## 3.2 Rekommenderad struktur för trygg live-körning
- Ha alltid `Blackout` lätt åtkomlig
- Ha en grupp med "säkerhets-scener" (vita wash, statisk färg)

## 3.3 Om något inte fungerar i Live
Vanlig felsökning:
- Är patchen korrekt (modell/mode/adress)?
- Har armaturen rätt DMX-adress på fysisk enhet?
- Är DVC Pro online i Daslight?
- Är blackout/master på?
- Ligger scenen i fel grupp eller har fel step-timing?

---

## FAQ

### Måste armaturer kopplas i DMX-kanalordning?
Nej. Armaturer behöver inte sitta i fysisk kabelordning efter DMX-adress.

Det viktiga är:
- rätt DMX-startadress på varje armatur
- rätt mode på armaturen
- samma patch i Daslight

Praktiskt tips: håll ändå en logisk fysisk ordning och märk armaturerna, så blir felsökning snabbare.

### Fungerar grupper likadant i Arcolis Remote?
Nej. I `Arcolis Remote` visas alla scener i en rak ordning i stället för tydliga grupper.

`Arcolis Remote Pro` kan vara bättre om du vill arbeta med gruppstruktur.
