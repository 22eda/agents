# Görev Protokolü (ana-cati)

Sen yalnızca ana-cati ile konuşursun. ana-cati görevi bir **görev dosyasına** çevirip
`gorevler/kuyruk/` içine yazar; `gece_calistir.py` her görevi doğru departman klasöründe çalıştırır.

## Altın kural
**Bir görev = tek hedef + ölçülebilir kabul ölçütü + net sınır.**
Hafif bir modelle çalışıyorsan görevi küçük tut (30-45 dakikalık iş). "Ve ayrıca..." ile iki iş birleştirme;
iki görev yaz. Kabul ölçütü ölçülebilir olsun: "pytest geçer", "README 9 başlık içerir", "5 hata kodu etiketlenir".

## Akış
1. Gündüz ana-cati'ye doğal dille söyle: "Bu geceye şu işleri kuyruğa koy: ..."
2. ana-cati `sablonlar/gorev.md` şablonuyla `gorevler/kuyruk/NN-ajan-kisa-ad.md` dosyalarını yazar ve sana özetler.
3. Dosyalara göz at, gerekirse düzelt. (Kuyruktaki dosya = geceye girecek iş.)
4. Gece `gece_calistir.py` dosya adı sırasıyla çalıştırır; sabah mail gelir.
5. Raporlar `raporlar/<tarih>/` altında. "ONAY_BEKLEYEN" maddelerini sen yaparsın (push, yayın vb.).

Dosya adı: `NN-ajan-kisa-ad.md` (ör. `01-code-titanic-baseline.md`). Görev id'si dosya adıdır.

## Mod seçimi
| mod | Ne yapar | Ne zaman |
|---|---|---|
| `auto_edit` (varsayılan) | Dosya oluşturur/düzenler; kabuk komutlarını onaysız çalıştırmaz | İçerik, tasarım, akademi, çoğu kod işi |
| `yolo` | Tüm araçları onaysız çalıştırır (kabuk dahil) | Yalnızca `ana-code` ve testin çalışması şart olan işler |
| `plan` | Salt okunur (Gemini CLI'nin yardım metninde listelenir; ben denemedim) | İnceleme / planlama |

`yolo` bilgisayarında komut çalıştırabilir. Kurallar prompt'ta yazılıdır, teknik olarak zorlanmaz; bu yüzden
`yolo` görevlerini dar tut ve sabah `git diff` ile kontrol et.

## Zincir (departmanlar arası devir)
`girdi:` alanına önceki görevin id'sini yaz. Çalıştırıcı önceki raporu hedef departmanın `girdi/` klasörüne
kopyalar (ajanlar yalnızca kendi klasörlerinde yazar kuralı bozulmaz).
Tipik zincir: `01-code-...` -> `02-icerik-...` (girdi: 01) -> `03-reklam-...` (girdi: 02).

## Her ajana görev örneği

**ana-code**
```
---
ajan: code
mod: yolo
sure_dk: 40
---
## Hedef
ml-proje-sablonu becerisiyle Titanic için baseline sınıflandırma projesi kur: titanic-baseline/
## Kaynaklar
data/titanic.csv (yoksa seaborn.load_dataset ile indir)
## Kabul Ölçütleri
- pytest geçer
- İngilizce README, 9 başlık
- Baseline ve model sonuçları tabloda, seed sabit
## Sınırlar
- Yalnızca ana-code/titanic-baseline/ altında; push yok
## Teslim
Rapor: dosya listesi + çalıştırma komutu + 3 anahtar bulgu
```

**ana-icerik** (`girdi: 01-code-titanic-baseline`, `mod: auto_edit`)
- Hedef: girdideki sonuçlardan İngilizce Medium taslağı yaz: `cikti/titanic-medium/draft.md`
- Kabul: 3 başlık alternatifi, 1200-1800 kelime, yalnızca raporda ölçülen metrikler, 5 etiket

**ana-reklam** (`girdi: 02-icerik-titanic-medium`, `mod: auto_edit`)
- Hedef: LinkedIn lansman postu: `cikti/titanic-linkedin/post.md`
- Kabul: 120-220 kelime, ana post + 2 alternatif hook, 3-5 hashtag, tek CTA, uydurma metrik yok

**ana-tasarim** (`mod: auto_edit`)
- Hedef: portföy "Projects" bölümü (Tailwind, dark mode): `cikti/projects-section/index.html`
- Kabul: mobilde 1, masaüstünde 3 sütun; kontrast >= 4.5:1; tüm görsellerde alt metin; metinler İngilizce

**ana-akademi** (`mod: auto_edit`)
- Hedef: `girdi/essay-01.txt` dosyasını toefl-writing-kocu becerisiyle puanla: `cikti/essay-01-geri-bildirim.md`
- Kabul: puan aralığı + güven düzeyi, hata kodlu 5-8 cümle düzeltmesi, 1 haftalık görev, 5-8 ifadelik liste
- Not: essay'i görevden önce sen `ana-akademi/girdi/` içine koyarsın.

## Yapmaması gerekenler
- Gece görevine yayın, push, e-posta, silme, API anahtarı işi yazma.
- "Projeyi bitir" gibi belirsiz hedef yazma; çıktı yolu ve kabul ölçütü yoksa görev eksiktir.
- Aynı klasörde birbirine bağımlı iki görevi `girdi:` olmadan sıralama.

## Sabah kontrol listesi
1. Mail: sorunlu görev var mı? "SENDEN BEKLENENLER" bölümünü oku.
2. `raporlar/<tarih>/OZET.md` ve ilgili görev raporları.
3. Kod işlerinde `git diff` / testleri çalıştır.
4. Sorunlu görevler `gorevler/hatali/` altında; düzeltip tekrar `kuyruk/` içine koyabilirsin.

## Ek Ajanlar icin Gorev Ornekleri

`ajan:` degerleri: `basvuru`, `arastirma`, `kalite`, `kariyer`, `ogrenme` (onceki bes ajanla birlikte toplam on).

**basvuru** (internet gerektirir; arama araci yoksa ajan bunu raporlar)
```
---
ajan: basvuru
mod: auto_edit
sure_dk: 40
---
## Hedef
Avrupa'da Data Science / AI yuksek lisans programlari icin 8 programlik kisa liste: cikti/programlar/kisa-liste.md
## Kabul Olcutleri
- Her satirda kaynak URL ve kontrol tarihi var; dogrulanamayan bilgi DOGRULANMADI
- 3 hedef, 3 gercekci, 2 guvenli program; karar matrisi
## Sinirlar
- Tahmin yazma; kriterler eksikse ACIK_SORULAR'a yaz
```

**arastirma**
```
---
ajan: arastirma
mod: auto_edit
sure_dk: 30
---
## Hedef
Son 7 gunun haftalik brief'i: cikti/brief-<tarih>.md
## Kabul Olcutleri
- En fazla 10 madde; her maddede kaynak URL, tarih, kanit duzeyi ve "Eda icin anlami"
- RAG/LLM, uygulamali ML, programlar/burslar ve 2 proje fikri
```

**kalite** (diger ajanin ciktisini denetler; `kopya:` ile dosyalar kopyalanir)
```
---
ajan: kalite
mod: auto_edit
sure_dk: 25
girdi: 02-tasarim-portfoy-sitesi
kopya: ana-tasarim/cikti/portfoy
---
## Hedef
Portfoy sitesini web-erisilebilirlik-denetimi ve gizli-bilgi-taramasi becerileriyle denetle: cikti/portfoy-denetimi/denetim.md
## Kabul Olcutleri
- KARAR satiri (GECTI / KOSULLU / KALDI); her bulgu dosya:satir ve kanitla
- Calistirilamayan veya dogrulanamayan maddeler ayri listelenir
```

**kariyer** (ilan metnini sen `ana-kariyer/girdi/ilan-01.txt` olarak koyarsin)
```
---
ajan: kariyer
mod: auto_edit
sure_dk: 30
---
## Hedef
girdi/ilan-01.txt ilanini ilan-analizi becerisiyle analiz et: cikti/ilan-01-analiz.md
## Kabul Olcutleri
- Gereksinim tablosu (karsiliyor / kismen / bosluk) ve her karsiliyor icin kanit
- CV'de olmayan beceri eklenmez; bosluklar dogru yazilir
```

**ogrenme**
```
---
ajan: ogrenme
mod: auto_edit
sure_dk: 30
---
## Hedef
"Hipotez testleri ve p-degeri" konusu icin 15 tekrar karti ve 8 dereceli alistirma
## Kabul Olcutleri
- cikti/kartlar/hipotez-testleri.csv ve cikti/alistirmalar/hipotez-testleri.md (+ ayri cozum dosyasi)
- Emin olunmayan kart dogrulanmali etiketli
```

## kopya: alani
`kopya:` degerleri masaustune gore yollardir ve virgulle ayrilir (`ana-tasarim/cikti/portfoy`, `ana-code/titanic-baseline`).
Yalnizca departman klasorleri altindaki yollar kopyalanir; `.env*` (`.example` haric), anahtar dosyalari, `.git`, `node_modules` ve 1 MB ustu dosyalar kopyalanmaz.
Kopyalar anlik goruntudur; ajan orijinali goremez ve degistiremez.

## Zincir onerisi
Onemli her teslimden sonra bir `ana-kalite` gorevi ekle; kalite gorevinde `KARAR: KALDI` ise sabah mailinde "sorunlu" olarak gorursun.
