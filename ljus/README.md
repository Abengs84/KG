# Ljus - Daslight 4 och Cameo DVC Pro

## Filer i denna mapp
- `KG show.dvc` - färdig Daslight-show med patchade armaturer.
- `Estrad.ev2` - Easy View 2 visualizer-fil.
- `Cameo ljus.png` - referensbild över lampplacering.
- `Stand Alone.png` - vy för överföring av scener till interface.
- `Hardware Manager.png` - vy för hårdvarukonfiguration.

## Lampor och DMX-konfiguration
Följande ordning, lägen och adresser ska användas:

| # | Armatur | Mode | Kanaler | DMX-kanal | Plats |
|---|---|---|---|---|---|
| 1 | Q-Spot 40 RGBW | Mode 5 | 9 | 1 | Vänster nere |
| 2 | Thunderwash 600 RGBW | Mode 8 | 7 | 10 | Mitten bak |
| 3 | Nanospot 300 | Mode 3 | 11 | 17 | Vänster nere |
| 4 | Nanobeam 600 | Mode 1 | 14 | 28 | Vänster nere |
| 5 | Nanobeam 600 | Mode 1 | 14 | 42 | Höger nere |
| 6 | Nanospot 300 | Mode 3 | 11 | 56 | Höger nere |
| 7 | Q-Spot 40 RGBW | Mode 5 | 9 | 67 | Höger nere |
| 8 | Q-Spot 40 RGBW | Mode 5 | 9 | 76 | Höger uppe |
| 9 | Hydrabeam 400 RGBW | Mode 5 | 56 | 85 | Mitten uppe |
| 10 | Q-Spot 40 RGBW | Mode 5 | 9 | 141 | Vänster uppe |

<img src="./Cameo%20ljus.png" alt="Cameo ljus" width="360" />

## Öppna färdig show i Daslight 4
1. Starta Daslight 4.
2. Ladda `.dvc`-filen (`KG show.dvc`).
3. Alla lampor är redan konfigurerade i filen och kan vidareutvecklas vid behov.

## Easy View 2 (3D Visualizer)
1. I Daslight 4: klicka `Tools -> 3D Visualizer`.
2. Easy View 2 öppnas.
3. Öppna `Estrad.ev2` för att se hur showen kommer att se ut.

## Ladda upp ny show till DVC Pro (Stand Alone)
1. Öppna Daslight 4.
2. Gå till `Tools -> Stand Alone`.
3. Markera scenerna du vill flytta.
4. Dra dem till höger under `Device -> Page 1`.
5. Klicka `Write` för att skriva till interface.

<img src="./Stand%20Alone.png" alt="Stand Alone" width="360" />

## Konfigurera DVC Pro-interface
1. I Daslight 4: klicka `Tools -> Hardware Manager`.
2. Kontrollera/enhetsinställningar för DVC Pro.

<img src="./Hardware%20Manager.png" alt="Hardware Manager" width="360" />

DVC Pro är inställd för att ansluta till Wi-Fi SSID:
- `KGWLAN-5Ghz`

## Arcolis-appar
- [Arcolis Remote på Google Play](https://play.google.com/store/apps/details?id=com.lightingsoft.arcolisremote&hl=fi)
- [Arcolis Remote Pro på Google Play](https://play.google.com/store/apps/details?id=com.lightinsoft.easyremotepro)

## Ladda ner Daslight 4
[Daslight 4 (nedladdning)](https://eu-software.n-g.co/Release/Daslight4.exe)

## Tutorial (YouTube)
[Daslight DVC 4 Tutorials English](https://www.youtube.com/playlist?list=PLHZD33csOYTS1T7xxDuG8sIMniJtK8Isz)
