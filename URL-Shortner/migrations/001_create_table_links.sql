-- Write your migrate up statements here


CREATE TABLE links (
  code        VARCHAR(16)   PRIMARY KEY,
  url         TEXT          NOT NULL,
  created_at  TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
  clicks      INTEGER       NOT NULL DEFAULT 0,
  alias       VARCHAR(64)   UNIQUE,
  expires_at  TIMESTAMPTZ               NULL
);

---- create above / drop below ----
DROP TABLE IF EXISTS links;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
