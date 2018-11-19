DELETE FROM user_roles;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100;

INSERT INTO users (name, email, password) VALUES
  ('admin', 'grslavisa@gmail.com', '{noop}julka111$$$'),
  ('user', 'user@gmail.com', '{noop}password');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_ADMIN', 100),
  ('ROLE_USER', 100),
  ('ROLE_USER', 101);

INSERT INTO emaildb (subject, sender, message) VALUES
  ('Pera', 'grslavisa@gmail.com', 'proba1'),
  ('Mika', 'user@gmail.com', 'proba2');