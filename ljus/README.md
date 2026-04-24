# Ljus - Daslight 4 och Cameo DVC Pro

## Filer i denna mapp
- `KG show.dvc` - färdig Daslight-show med patchade armaturer.
- `Estrad.ev2` - Easy View 2 visualizer-fil.
- `Cameo ljus.png` - referensbild över lampplacering.
- `Stand Alone.png` - vy för överföring av scener till interface.
- `Hardware Manager.png` - vy för hårdvarukonfiguration.

## Lampor och DMX-konfiguration
Följande ordning, lägen och adresser ska användas:

1. Q-Spot 40 RGBW, Mode 5 (9 channels), DMX-kanal 1, plats: vänster nere
2. Thunderwash 600 RGBW, Mode 8 (7 channels), DMX-kanal 10, plats: mitten bak
3. Nanospot 300, Mode 3 (11 channels), DMX-kanal 17, plats: vänster nere
4. Nanobeam 600, Mode 1 (14 channels), DMX-kanal 28, plats: vänster nere
5. Nanobeam 600, Mode 1 (14 channels), DMX-kanal 42, plats: höger nere
6. Nanospot 300, Mode 3 (11 channels), DMX-kanal 56, plats: höger nere
7. Q-Spot 40 RGBW, Mode 5 (9 channels), DMX-kanal 67, plats: höger nere
8. Q-Spot 40 RGBW, Mode 5 (9 channels), DMX-kanal 76, plats: höger uppe
9. Hydrabeam 400 RGBW, Mode 5 (56 channels), DMX-kanal 85, plats: mitten uppe
10. Q-Spot 40 RGBW, Mode 5 (9 channels), DMX-kanal 141, plats: vänster uppe

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

## Konfigurera DVC Pro-interface
1. I Daslight 4: klicka `Tools -> Hardware Manager`.
2. Kontrollera/enhetsinställningar för DVC Pro.

DVC Pro är inställd för att ansluta till Wi-Fi SSID:
- `KGWLAN-5Ghz`

## Arcolis-appar (snabbkopiering)
```text
https://play.google.com/store/apps/details?id=com.lightingsoft.arcolisremote&hl=fi
```

```text
https://play.google.com/store/apps/details?id=com.lightinsoft.easyremotepro
```

## Bilder (liten förhandsvisning)
<img src="./Cameo%20ljus.png" alt="Cameo ljus" width="360" />
<img src="./Stand%20Alone.png" alt="Stand Alone" width="360" />
<img src="./Hardware%20Manager.png" alt="Hardware Manager" width="360" />

## Referenslänkar
- [Arcolis Remote på Google Play](https://play.google.com/store/apps/details?id=com.lightingsoft.arcolisremote&hl=fi)
- [Arcolis Remote Pro på Google Play](https://play.google.com/store/apps/details?id=com.lightinsoft.easyremotepro)
