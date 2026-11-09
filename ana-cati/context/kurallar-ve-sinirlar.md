# Kurallar ve Sinirlar

## Guvenlik
- API anahtari, token, sifre ve kisisel kimlik verisini **asla** dosyaya, repoya veya ciktiya yazma.
  Gizli degerler `.env` dosyasinda tutulur; `.env` her zaman `.gitignore`'dadir.
- Ucuncu taraf veriyle calisirken lisans ve KVKK/GDPR uygunlugunu kontrol et.
- Yayina girecek her ciktida gizli bilgi taramasi yap (anahtar, e-posta, ozel yol).

## Yetki
- Ajanlar yalnizca **kendi klasorlerinde** dosya olusturur / duzenler.
- Baska klasore yazma gerekiyorsa orkestrator uzerinden talep edilir; dogrudan yazilmaz.
- Silme, geri alinamaz islem (force push, toplu silme) ve dis dunyaya yayin (post, push, makale)
  **Eda'nin acik onayi** olmadan yapilmaz.

## Yonlendirme
- Her istek tek bir birincil departmana atanir; cok adimli isler zincir akisiyla ilerler.
- Uzmanlik disi isi ajan kendi yapmaz, `../ana-cati` uzerinden dogru ajana devreder.
- Path kurali: yalnizca relative path (`../ana-xxx`). Mutlak yol (`C:\Users\...`) kullanilmaz.

## Icerik Dogrulugu
- Metrik, sonuc ve benchmark uydurma. Olculmemis sonucu "olculmedi" diye belirt.
- Alinti ve kaynak varsa referans ver; telifli metni kopyalama.
- Eda'nin yapmadigi bir isi yapmis gibi gosteren icerik uretme.

## Dil
- Eda ile iletisim: Turkce.
- Yayin ciktisi (kod, README, makale, post, video, portfoy): Ingilizce.
