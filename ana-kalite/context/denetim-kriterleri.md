# Denetim Kriterleri

## Önem Dereceleri
| Derece | Tanım | Örnek |
|---|---|---|
| KRITIK | Yayını/teslimi engeller | Açığa çıkmış anahtar/şifre, uydurma sayı veya iddia, çalışmayan ana işlev, kabul ölçütü ihlali |
| YUKSEK | Ciddi kalite/güven sorunu | Veri sızıntısı, testsiz kritik kod, kırık bağlantı, erişilemeyen ana içerik |
| ORTA | Düzeltilmesi gereken | Eksik README bölümü, tutarsız terim, kontrast sınırda |
| DUSUK | İyileştirme | Biçim, kelime seçimi, küçük düzen |

## Karar Kuralı
- **KALDI:** en az bir KRITIK bulgu veya kabul ölçütlerinin çoğu sağlanmıyor.
- **KOSULLU:** KRITIK yok; en az bir YUKSEK bulgu veya sağlanamayan kabul ölçütü var; düzeltilince geçer.
- **GECTI:** KRITIK ve YUKSEK yok; kabul ölçütlerinin hepsi kanıtla sağlanıyor.
Kanıtlanamayan (çalıştırılamayan/erişilemeyen) ölçüt "sağlanmıyor" sayılır ve `doğrulanamadı` olarak not edilir.

## Bulgu Biçimi
```
[ID] DERECE | dosya:satır veya bölüm
Kanıt: <kısa alıntı veya gözlem; gizli değerler maskeli>
Neden önemli: <1 cümle>
Öneri: <somut düzeltme>
```

## Rapor İskeleti (`cikti/<gorev-id>/denetim.md`)
1. Özet: `KARAR: ...` + 3 cümle
2. Kabul ölçütü tablosu (ölçüt | kanıt | durum)
3. Bulgular (önem sırasıyla)
4. Doğrulanamayanlar ve neden
5. Düzeltme sırası önerisi
