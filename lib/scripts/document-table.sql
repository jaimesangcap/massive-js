CREATE TABLE ${schema~}.${table~}(
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  body jsonb NOT NULL,
  search tsvector,
  created_at timestamptz DEFAULT now()
);
CREATE INDEX idx_${index^} ON ${schema~}.${table~} USING GIN(body jsonb_path_ops);
CREATE INDEX idx_search_${index^} ON ${schema~}.${table~} USING GIN(search);
