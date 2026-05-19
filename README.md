# 香港即時天氣 V1.1 GitHub Pages 版

上載方法：
1. 把 `index.html` 放到 GitHub Pages repo 根目錄。
2. 建立 `icons/` 資料夾。
3. 執行 `download_hko_icons.sh`（Mac/Linux）或 `download_hko_icons.ps1`（Windows PowerShell），下載香港天文台警告圖示到 `icons/`。
4. 把 `icons/` 內的 GIF 圖檔一同 commit / upload 到 GitHub。

注意：香港天文台警告圖示現時官方頁面使用 GIF 檔，不是 PNG。HTML 已用本地 `icons/*.gif`，如本地圖檔未有上傳，會嘗試外部官方 URL 後備。

氣溫來源：
- 優先使用 `latest_1min_temperature_uc.csv` 的「天文台」最新一分鐘平均氣溫，這個數據有一位小數。
- 若 CSV 載入失敗，才 fallback 到 `rhrread` 的本港地區天氣報告氣溫；這個來源通常是整數，所以會顯示成 `XX.0°C`。
