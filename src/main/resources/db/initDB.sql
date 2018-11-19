DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users cascade ;
DROP TABLE IF EXISTS meals cascade ;
DROP TABLE IF EXISTS emaildb;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100;

CREATE TABLE users
(
  id               INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  name             VARCHAR                 NOT NULL,
  email            VARCHAR                 NOT NULL,
  password         VARCHAR                 NOT NULL,
  registered       TIMESTAMP DEFAULT now() NOT NULL,
  enabled          BOOL DEFAULT TRUE       NOT NULL
);
CREATE UNIQUE INDEX users_unique_email_idx ON users (email);

CREATE TABLE user_roles
(
  user_id INTEGER NOT NULL,
  role    VARCHAR,
  CONSTRAINT user_roles_idx UNIQUE (user_id, role),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE emaildb
(
  id               INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  subject          VARCHAR                 NOT NULL,
  sender           VARCHAR                 NOT NULL,
  message          VARCHAR                 NOT NULL,
  registered       TIMESTAMP DEFAULT now() NOT NULL
);
CREATE INDEX emaildb_idx ON emaildb (sender);