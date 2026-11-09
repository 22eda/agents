# Gece Vardiyası Kurulumu

## 1. Mail (bir kez)
Gmail için hesapta 2 adımlı doğrulama açık olmalı ve bir **uygulama şifresi** üretmelisin.
`%USERPROFILE%\.ana-cati\mail.env` dosyasını oluştur (örnek: `sablonlar/mail.env.example`):
```
MAIL_HOST=smtp.gmail.com
MAIL_PORT=465
MAIL_USER=senin-adresin@gmail.com
MAIL_PASSWORD=16-haneli-uygulama-sifresi
MAIL_TO=senin-adresin@gmail.com
```
Bu dosya proje klasörlerinin dışındadır. Çalıştırıcı bunu yalnızca mail gönderirken okur ve
Gemini'ye giden ortamdan `MAIL_*` değişkenlerini çıkarır.

Test: `python gece_calistir.py --mail-test`

## 2. Deneme çalıştırması
1. `gorevler/kuyruk/` içine küçük bir görev koy (`sablonlar/gorev.md` şablonundan).
2. `python gece_calistir.py --kuru` -> ne çalışacağını listeler.
3. `python gece_calistir.py --mail-yok` -> gerçek çalıştırma, mail yok. `raporlar/<tarih>/` altına bak.

## 3. Zamanlayıcı
`python gece_calistir.py --zamanlayici-komutu` çıktısını PowerShell'e yapıştır (her gece 02:00,
bilgisayarı uyandırma ve kaçırılan çalıştırmayı sonradan başlatma açık). Bilgisayarın prize takılı olması gerekir.

## 4. Güvenlik ve limitler
- Varsayılan mod `auto_edit`; `yolo` yalnızca görev dosyasında açıkça yazılırsa.
- `--limit` (varsayılan 8 görev) ve `--max-saat` (varsayılan 6 saat) maliyeti ve süreyi sınırlar; süre dolunca
  kalan görevler kuyrukta bekler.
- Kurallar (yayın yok, silme yok, yalnızca kendi klasörü) prompt ile verilir; teknik olarak zorlanmaz.
  Kod işlerini git deposunda yap, sabah farkı incele.
- API kotanı / faturalandırma ayarlarını Google AI Studio'dan kontrol et.

## 5. Sorun giderme
- `raporlar/gece.log` çalıştırma günlüğüdür.
- "gemini komutu bulunamadı": Görev Zamanlayıcı PATH'i farklı görebilir; `gemini` yolunu PATH'e kullanıcı düzeyinde ekle.
- Mail gitmediyse rapor yine `raporlar/<tarih>/OZET.md` içindedir.
