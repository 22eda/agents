# Kontrol Listeleri

## Kod / Veri Bilimi
- README: çalıştırma adımları baştan sona izlenebilir mi? Bağımlılık dosyası var mı?
- Sabit seed; train/val/test ayrımı; ön işleme yalnızca eğitim verisine fit mi (sızıntı)?
- Baseline ile kıyas; metrik problem türüne uygun mu (dengesiz sınıfta accuracy tek başına yetmez)?
- Testler var mı, kritik mantığı kapsıyor mu? Hata yönetimi ve girdi doğrulama?
- Gizli bilgi, mutlak yol, büyük veri/model dosyası repoda mı?

## Metin (Makale, Post, SOP, README)
- Her sayı ve olgusal iddia bir kaynağa/rapora bağlı mı? Uydurma metrik, unvan, başarı var mı?
- Abartı ve garanti dili ("guaranteed", "best") var mı?
- Dil: tutarlı terim, pasif yığılma, kopya/aşırı yakın alıntı.
- Hedef kitle ve tek ana mesaj net mi? Kelime sınırı/format uyumu?

## Web (HTML)
- `lang`, `title`, meta description, tek `h1`, başlık hiyerarşisi.
- Görsellerde `alt`; bağlantılarda anlamlı metin; dış bağlantılarda `rel="noopener noreferrer"`.
- Klavye erişimi, `focus-visible`, skip link, form etiketleri.
- Kontrast (metin >= 4.5:1), `prefers-reduced-motion`, viewport meta, yatay taşma yok.
- Dış kaynak/CDN yalnızca amaçlananlar; e-posta adresi gibi istenmeyen kişisel veri yok.

## Gizli Bilgi Desenleri (tarama ipuçları)
`AIza` ile başlayan uzun dizeler (Google API anahtarı), `sk-` ile başlayanlar, `ghp_` / `github_pat_`,
`-----BEGIN ... PRIVATE KEY-----`, `password`, `passwd`, `secret`, `token`, `api_key`, `Authorization: Bearer`,
`.env`, `*.pem`, `*.key` dosyaları, mutlak kullanıcı yolları (`C:\Users\...`), kişisel e-posta/telefon.
Bulgular maskeli raporlanır.
