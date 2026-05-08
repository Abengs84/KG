# Ljud - Soundcraft Ui16

## Översikt
Soundcraft Ui16 används via nätverk med fast IP-adress:
- IP:n är statisk så länge enheten inte stängs av.
- QR-kod finns fysiskt på enheten och leder till samma IP.

```text
http://10.203.16.54/
```

## Nätverkskonfiguration
- **Hotspot: AV**
- **Wi-Fi: AV**
- Enheten är ansluten med **nätverkskabel**.

Detta är medvetet valt för stabilitet eftersom hotspot/Wi-Fi ibland kan orsaka att enheten fryser.

## Användning
1. Anslut dator/surfplatta till samma nätverk som mixer och kabelanslutning.
2. Öppna webbläsare och gå till:
   [Soundcraft Ui16](http://10.203.16.54/)

3. Kontrollera kanallistan och nivåer enligt aktuell setup.

## Hitta IP-adressen om den har ändrats
Om Soundcraft Ui16 inte svarar på den vanliga adressen kan du använda PowerShell-skriptet `hitta-ui16.ps1`.

Kör från mappen `ljud/`:

```powershell
.\hitta-ui16.ps1
```

Skriptet skannar nätverket `10.203.0.0/20`, prioriterar `10.203.16.x` och `10.203.17.x`, och letar efter Soundcrafts `mixer.html`.

När mixern hittas skriver skriptet ut adressen och öppnar den automatiskt i webbläsaren.

