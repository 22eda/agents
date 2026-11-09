@echo off
rem ana-cati klasorunden Gemini CLI'yi baslatir ve 10 departman klasorunu calisma alanina ekler.
cd /d "%~dp0"
gemini --include-directories ..\ana-code,..\ana-icerik,..\ana-reklam,..\ana-tasarim,..\ana-akademi,..\ana-basvuru,..\ana-arastirma,..\ana-kalite,..\ana-kariyer,..\ana-ogrenme
