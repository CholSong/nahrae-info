CREATE TABLE schema_migrations (version varchar(255) NOT NULL);
CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name varchar(255), email varchar(255), created_at datetime NOT NULL, updated_at datetime NOT NULL, password_digest varchar(255), remember_token varchar(255));
CREATE UNIQUE INDEX index_users_on_email ON users (email);
CREATE INDEX index_users_on_remember_token ON users (remember_token);
CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations (version);
INSERT INTO schema_migrations (version) VALUES ('20120718045852');

INSERT INTO schema_migrations (version) VALUES ('20120718062505');

INSERT INTO schema_migrations (version) VALUES ('20120718063042');

INSERT INTO schema_migrations (version) VALUES ('20120719235630');