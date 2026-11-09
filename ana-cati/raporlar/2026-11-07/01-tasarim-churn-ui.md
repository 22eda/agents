# 01-tasarim-churn-ui

- Ajan: tasarim
- Mod: auto_edit
- Durum: HATA
- Sure: 8 sn

---

Cikis kodu 429
gemini-cli/bundle/chunk-NGQU3QTQ.js:335403:24)
    at async GeminiClient.processTurn (file:///C:/Users/asus/AppData/Roaming/npm/node_modules/@google/gemini-cli/bundle/chunk-NGQU3QTQ.js:349394:22)
    at async GeminiClient.sendMessageStream (file:///C:/Users/asus/AppData/Roaming/npm/node_modules/@google/gemini-cli/bundle/chunk-NGQU3QTQ.js:349491:14)
    at async file:///C:/Users/asus/AppData/Roaming/npm/node_modules/@google/gemini-cli/bundle/gemini-VF5FS3OM.js:13658:26
    at async main (file:///C:/Users/asus/AppData/Roaming/npm/node_modules/@google/gemini-cli/bundle/gemini-VF5FS3OM.js:19036:5) {
  cause: {
    code: 429,
    message: 'You exceeded your current quota, please check your plan and billing details. For more information on this error, head to: https://aistudio.google.com/docs/rate-limits. To monitor your current usage, head to: https://ai.dev/rate-limit. \n' +
      '* Quota exceeded for metric: generativelanguage.googleapis.com/generate_content_free_tier_requests, limit: 20, model: gemini-3.8-flash, description: Generate content requests per day limit exceeded on Free Tier. See https://aistudio.google.com/docs/rate-limits.\n' +
      'Please retry in 6h34m39.30693981s.',
    details: [ [Object], [Object], [Object] ]
  },
  retryDelayMs: undefined,
  reason: undefined,
  status: 429
}
{
  "session_id": "d8edc771-702a-4f17-9f66-d8c1c8d778b1",
  "error": {
    "type": "Error",
    "message": "You have exhausted your daily quota on this model.",
    "code": 429
  }
}


