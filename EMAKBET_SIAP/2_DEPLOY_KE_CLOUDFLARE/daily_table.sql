-- Tabel statistik HARIAN (bar chart aktivitas harian)
CREATE TABLE IF NOT EXISTS daily_stats (
  day TEXT PRIMARY KEY,          -- YYYY-MM-DD (WIB)
  online_peak INTEGER DEFAULT 0, -- online tertinggi hari itu
  download_new INTEGER DEFAULT 0,-- download baru hari itu (selisih)
  install_new INTEGER DEFAULT 0, -- install baru hari itu (selisih)
  dl_start INTEGER DEFAULT 0,    -- total download di awal hari
  inst_start INTEGER DEFAULT 0,  -- total install di awal hari
  updated_at INTEGER DEFAULT 0
);
CREATE INDEX IF NOT EXISTS idx_daily_day ON daily_stats(day DESC);

-- Tabel statistik PER JAM (bar chart "jam ramai")
CREATE TABLE IF NOT EXISTS hourly_stats (
  hour_key TEXT PRIMARY KEY,     -- YYYY-MM-DD-HH (WIB)
  hour INTEGER DEFAULT 0,        -- 0-23
  activity INTEGER DEFAULT 0,    -- jumlah aktivitas (heartbeat) di jam itu
  updated_at INTEGER DEFAULT 0
);
CREATE INDEX IF NOT EXISTS idx_hourly ON hourly_stats(hour_key DESC);
CREATE INDEX IF NOT EXISTS idx_hourly_h ON hourly_stats(hour);
