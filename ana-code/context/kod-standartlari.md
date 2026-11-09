# Kod Standartlari

## Genel
- Python 3.10+; PEP 8; satir uzunlugu 100.
- Tip ipuclari (type hints) zorunlu; public fonksiyonlarda Google tarzi docstring.
- Bicimlendirme ve lint: `ruff` + `black`. Tip kontrolu: `mypy` (mumkunse).
- Test: `pytest`; kritik mantik icin birim test, API icin entegrasyon testi.

## Repo Yapisi
```
project-name/
  README.md
  LICENSE
  pyproject.toml | requirements.txt
  .env.example
  .gitignore
  data/            # kucuk ornekler; buyuk veri repoya girmez
  notebooks/       # kesif
  src/project_name/
    __init__.py
    config.py
    data.py
    features.py
    models.py
    train.py
    evaluate.py
    api.py         # FastAPI
  app/streamlit_app.py
  tests/
  reports/figures/
```

## Veri Bilimi / ML Kurallari
- **Seed:** tum rastgelelik icin sabit seed (`random`, `numpy`, `torch`, `tf`).
- **Bolme:** train/val/test ayrimi veri sizintisini onleyecek sekilde (zaman serisinde zamansal bolme, gruplu veride gruplu bolme).
- **Pipeline:** Scikit-learn `Pipeline` / `ColumnTransformer` ile on isleme egitim verisine fit edilir.
- **Baseline:** her zaman basit bir baseline (dummy / lojistik regresyon / ortalama) ile kiyasla.
- **Metrik:** problem turune uygun secim; dengesiz sinifta accuracy tek basina raporlanmaz.
- **Belirsizlik:** mumkunse capraz dogrulama ortalamasi + standart sapma veya guven araligi ver.
- **Hata analizi:** en az bir hata dilimi (segment) analizi yap.
- **Deney kaydi:** parametre, metrik ve veri surumunu kaydet (MLflow veya basit CSV/JSON log).

## FastAPI
- Pydantic modelleriyle girdi/cikti dogrulama.
- `/health` ve `/predict` uc noktalari; surumlu model yukleme.
- Hata yonetimi: anlamli HTTP kodlari ve mesajlar.

## Streamlit
- `st.cache_data` / `st.cache_resource` ile onbellekleme.
- Girdi dogrulama, yukleme gostergesi, hata mesajlari.
- Tema ve gorunum icin `../ana-tasarim` stil rehberine bak.

## RAG / LLM
- Parcalama (chunking) stratejisini ve gomme modelini dokumante et.
- Geri getirme kalitesi (recall@k, MRR) ve cevap dogrulugunu ayri degerlendir.
- Prompt'lar `prompts/` altinda surumlenir; halusinasyona karsi kaynak atfi iste.

## Git
- Conventional Commits: `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`.
- Kucuk ve anlamli commit'ler; `main` dalina dogrudan buyuk degisiklik itme.
- `.env`, veri dosyalari ve model agirliklari `.gitignore`'a eklenir.

## README Kontrol Listesi (Ingilizce)
1. One-line summary  2. Problem and motivation  3. Data  4. Approach
5. Results (baseline vs final)  6. How to run  7. Project structure
8. Limitations and next steps  9. License
