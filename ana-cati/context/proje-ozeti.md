# Proje Ozeti | Eda AI Agent Company

## Tanim
Eda'nin Veri Bilimi / AI kariyerini hizlandirmak icin kurulmus, 6 bagimsiz klasorden olusan
modüler bir **Coklu Ajan Sirketi**dir. Her klasor, kendi anayasasi (`CLAUDE.md`), baglam
dosyalari (`context/`) ve becerileri (`.claude/skills/`) ile tek basina calisabilir.
Orkestrator (`ana-cati`) bunlari relative path ile yonlendirir.

## Neden Bu Sistem?
- Eda'nin hedefleri (portfoy, burs, dil sinavi, kisisel marka) birbirinden farkli uzmanlik gerektirir.
- Tek buyuk baglam yerine kucuk, odakli klasorler **token tuketimini** dusurur.
- Bagimsiz klasorler, ihtiyac halinde tek basina baska bir calisma ortaminda da kullanilabilir.

## Klasor Konumlari ve Roller

| Klasor | Rol | Ana Cikti |
|---|---|---|
| `ana-cati` | Orkestrator, sirket yonetimi | Yonlendirme, plan, teslim ozeti |
| `ana-code` | Yazilim, Veri Bilimi, ML/DL | Repo, notebook, FastAPI/Streamlit uygulamasi |
| `ana-icerik` | Teknik icerik | Medium makaleleri, YouTube senaryolari (Ingilizce) |
| `ana-reklam` | Kisisel marka | LinkedIn postlari, lansman metinleri |
| `ana-tasarim` | Gorsel kimlik, web | Portfoy sitesi, Tailwind UI, Streamlit temasi |
| `ana-akademi` | Dil ve akademik hazirlik | TOEFL iBT / PTE plani, writing geri bildirimi |

## Calisma Modeli: "Uretereek Ogrenme"
Her proje: **kodla -> dokumante et (Ingilizce) -> yayinla -> geri bildirim al -> iyilestir**.
Yayin kanallari: GitHub, Medium, LinkedIn, YouTube.

## Ek Departmanlar (Kisisel Asistan Ajanlari)

| Klasor | Rol | Ana Cikti |
|---|---|---|
| `ana-basvuru` | Burs ve yuksek lisans basvurulari | Program tablosu, takip/takvim, SOP taslagi, referans brifi |
| `ana-arastirma` | Arastirma ve istihbarat | Haftalik brief, makale ozeti, proje fikirleri |
| `ana-kalite` | Bagimsiz denetim (salt okunur) | Denetim raporu ve `KARAR` (GECTI / KOSULLU / KALDI) |
| `ana-kariyer` | CV ve mulakat | CV taslagi, ilan analizi, soru seti |
| `ana-ogrenme` | Teori pekistirme | Tekrar kartlari, kavram aciklamasi, alistirmalar |

Toplam: orkestrator + 10 departman. Hepsi masaustunde kardes klasor olarak durur.
