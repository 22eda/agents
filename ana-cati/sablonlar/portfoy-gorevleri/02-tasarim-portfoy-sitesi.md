---
ajan: tasarim
mod: auto_edit
sure_dk: 40
girdi: 01-icerik-portfoy-metinleri
---
## Hedef
Portföy sitesinin ilk sürümünü tek dosya olarak yaz: `cikti/portfoy/index.html`

## Kaynaklar
- `girdi/01-icerik-portfoy-metinleri.md` raporundaki `site-copy.md` metinleri (rapora yazılmış metni kullan)
- `context/stil-rehberi.md` (renk tokenları, tipografi, bileşenler)
- Bağlantılar:
  - GitHub: https://github.com/22eda
  - Medium: https://medium.com/@edanurdemirel
  - LinkedIn: https://www.linkedin.com/in/edanur-demirel-b00644250
  - YouTube: https://www.youtube.com/@eda8751

## Kabul Ölçütleri
- Tek `index.html`; Tailwind için `https://cdn.tailwindcss.com` script'i (derleme adımı yok), `darkMode: 'class'`, dark mode varsayılan
- Bölüm id'leri: `hero`, `projects`, `writing`, `about`, `contact`; sabit üst gezinme çubuğu
- Renkler ve tipografi `stil-rehberi.md` tokenlarından; metin kontrastı >= 4.5:1
- Mobilde 1, masaüstünde 3 sütunlu proje kartları; kart yoksa "projects are being added" durum kartı
- Erişilebilirlik: skip link, `focus-visible` halkası, tek `h1`, doğru başlık hiyerarşisi, `prefers-reduced-motion`
- Dış linklerde `rel="noopener noreferrer"`; e-posta adresi ekleme; dış görsel kullanma
- `<title>`, meta description ve temel Open Graph etiketleri
- Ayrıca `cikti/portfoy/DEPLOY.md`: GitHub Pages ile yayın adımları (kullanıcı `22eda`, repo adı `22eda.github.io`) ve ileride alan adı bağlama notu; push'u Eda yapar

## Sınırlar
- Yalnızca bu klasörde çalış; yayın, push, deploy yok
- Metinde uydurma proje veya sayı yok

## Teslim
Rapor: dosya yolları, tarayıcıda açma talimatı, erişilebilirlik kontrol sonuçları, açık sorular
