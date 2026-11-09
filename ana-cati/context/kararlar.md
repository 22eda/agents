# Mimari Kararlar (ADR Ozeti)

## K1 | Bagimsiz klasor yapisi
- **Karar:** Tek monolitik proje yerine 6 bagimsiz klasor.
- **Gerekce:** Dusuk token tuketimi, odakli baglam, her ajanin tek basina calisabilmesi.
- **Sonuc:** Her klasorde kendi `CLAUDE.md`, `context/` ve `.claude/skills/` bulunur.

## K2 | Codex'in elenmesi
- **Karar:** Sistemde Codex kullanilmaz.
- **Gerekce:** Arac sayisini azaltmak, tek bir ajan konvansiyonu (`CLAUDE.md` + `.claude/`) ile
  tutarlilik saglamak, bakim yukunu dusurmek.
- **Sonuc:** Kod uretimi ve inceleme `ana-code` ajani uzerinden yurutulur.

## K3 | Relative path (`../`) kullanimi
- **Karar:** Klasorler arasi tum referanslar `../ana-xxx` bicimindedir.
- **Gerekce:** Klasor tasinsa / baska makineye kopyalansa da sistem calismaya devam eder.
- **Kosul:** Alti klasor daima ayni ust dizinde kardes olarak durmalidir.
- **Sonuc:** Mutlak yol yasaktir (bkz. `kurallar-ve-sinirlar.md`).

## K4 | Dil politikasi
- **Karar:** Eda ile Turkce, yayin ciktilari Ingilizce.
- **Gerekce:** Uluslararasi gorunurluk + TOEFL/PTE icin ek pratik.

## Karar Ekleme Sablonu
```
## K<n> | <Baslik>
- Karar:
- Gerekce:
- Sonuc:
```

## K5 | Kisisel asistan ajanlari eklendi
- **Karar:** `ana-basvuru`, `ana-arastirma`, `ana-kalite`, `ana-kariyer`, `ana-ogrenme` eklendi (toplam 10 departman).
- **Gerekce:** Hedeflerin basvuru, surekli bilgi takibi, denetim, kariyer ve ogrenme boyutlari ilk 5 ajanla kapsanmiyordu.
- **Sonuc:** Calistirici departmanlari `ana-*` klasorlerinden otomatik bulur; yeni ajan eklemek icin klasor yeterlidir.

## K6 | ana-kalite salt okunur ve kopya uzerinden calisir
- **Karar:** Denetlenecek dosyalar `kopya:` alani ile calistirici tarafindan `ana-kalite/girdi/kopya/` altina kopyalanir; `ana-kalite` orijinallere dokunmaz.
- **Gerekce:** Ajan izolasyonu (her ajan yalniz kendi klasorune yazar) ve denetimin tarafsizligi.
- **Sonuc:** `.env*` (`.example` haric), anahtar dosyalari, 1 MB ustu dosyalar ve `.git`, `node_modules` kopyalanmaz.
