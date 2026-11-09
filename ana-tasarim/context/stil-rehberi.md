# Stil Rehberi (Dark Mode Oncelikli)

## Renk Tokenlari
| Token | Deger | Kullanim |
|---|---|---|
| `--bg` | `#0B0F17` | Sayfa arka plani |
| `--surface` | `#121826` | Kart / panel |
| `--surface-2` | `#1A2233` | Hover / ikincil yuzey |
| `--border` | `#263149` | Cizgi / ayirici |
| `--text` | `#E6EAF2` | Ana metin |
| `--muted` | `#9AA6BD` | Ikincil metin |
| `--accent` | `#7C9CFF` | Vurgu, link, birincil buton |
| `--accent-2` | `#5EEAD4` | Ikincil vurgu, rozet |
| `--danger` | `#F87171` | Hata |

Tailwind `tailwind.config.js` icinde `theme.extend.colors` ile bu tokenlar tanimlanir.
Metin/arka plan kontrasti en az **4.5:1** (WCAG AA).

## Tipografi
- Baslik: `Inter` veya `Space Grotesk`; govde: `Inter`; kod: `JetBrains Mono`.
- Olcek: 14 / 16 / 20 / 24 / 32 / 48. Satir yuksekligi govde 1.6, baslik 1.2.
- Maksimum satir uzunlugu ~70 karakter (`max-w-prose`).

## Bosluk ve Duzen
- 4 px taban (Tailwind varsayilani). Bolumler arasi `py-16` / `md:py-24`.
- Icerik genisligi `max-w-6xl`, yatay dolgu `px-4 md:px-6`.
- Grid: proje kartlari mobil 1, tablet 2, masaustu 3 sutun.

## Bilesenler
- **Proje karti:** baslik, 1-2 cumle ozet, teknoloji rozetleri, `Demo` ve `Code` butonlari, sonuc metrigi.
- **Buton:** birincil (`accent` dolgu), ikincil (cizgili). Odak halkasi `focus-visible:ring-2`.
- **Rozet:** `rounded-full`, kucuk metin, `surface-2` zemin.
- **Hareket:** 150-200 ms gecis; `prefers-reduced-motion` destegi zorunlu.

## Tailwind Dark Mode
```html
<html class="dark">
```
`tailwind.config.js`: `darkMode: 'class'`. Tema anahtari localStorage ile saklanir, ilk yuklemede sistem tercihi okunur.

## Streamlit Ozellestirme
`.streamlit/config.toml`:
```toml
[theme]
base = "dark"
primaryColor = "#7C9CFF"
backgroundColor = "#0B0F17"
secondaryBackgroundColor = "#121826"
textColor = "#E6EAF2"
font = "sans serif"
```
Ek CSS gerekirse `st.markdown("<style>...</style>", unsafe_allow_html=True)` ile minimal tutulur.

## Erisilebilirlik Kontrol Listesi
- Tum gorsellerde `alt`; linklerde anlasilir metin; baslik hiyerarsisi (h1 -> h2 -> h3).
- Klavye ile tum etkilesimler erisilebilir; odak gorunur.
- Renk tek basina anlam tasimaz.
