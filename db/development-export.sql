CREATE TABLE "mp3s" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "url" varchar(255), "title" varchar(255), "artist" varchar(255), "length" integer, "created_at" datetime, "updated_at" datetime, "average_rating" float);

CREATE TABLE "ratings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "mp3_id" integer, "score" integer, "created_at" datetime, "updated_at" datetime);

INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('2', 'http://media.freesound.org/data/117/previews/117953__pishpirika__radio_receive_noise_preview.mp3', 'Noise Sample', 'pishpirika', '230', '2011-04-12 03:15:52.573369', '2011-04-12 03:16:21.174051', '4.0');
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('3', 'http://www.archive.org/download/PTNS005_RavensAndCrows_ST_EP/01._walking_home.mp3', 'Walking Home', 'Ravens And Crows', '88', '2011-04-12 22:28:39.216120', '2011-04-12 22:28:39.216120', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('4', 'http://www.archive.org/download/PTNS005_RavensAndCrows_ST_EP/07._le_fin.mp3', 'Le Fin', 'Ravens And Crows', '170', '2011-04-12 22:29:24.350732', '2011-04-12 22:29:24.350732', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('5', 'http://www.archive.org/download/LaborExpressFor4-12-2010/LE4-12-10.mp3', 'Labor Express For 4-12-10 (April 12, 2010)', 'Jerry Mead-Lucero', '3621', '2011-04-12 22:31:46.726628', '2011-04-12 22:31:46.726628', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('6', 'http://www.archive.org/download/ca200_cjazz/101_Strings_Of_Consciousness__Asphodel.mp3', 'Asphodel', 'Strings Of Consciousness', '357', '2011-04-12 22:33:21.436701', '2011-04-12 22:33:21.436701', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('7', 'http://www.archive.org/download/ca200_cjazz/102_The_Black_Hakawati__There_s_a_Hole_at_the_End_of_the_Tunnel.mp3', ' There�s a Hole at the End of the Tunnel', 'The Black Hakawati', '323', '2011-04-12 22:33:52.407263', '2011-04-12 22:33:52.407263', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('8', 'http://www.archive.org/download/ca200_cjazz/103_Professor_Psygrooves_friends__Scales_Special_Version.mp3', 'Scales [Special Version]', 'Professor Psygrooves + friends', '932', '2011-04-12 22:34:37.536304', '2011-04-12 22:34:37.536304', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('9', 'http://www.archive.org/download/ca200_cjazz/104_Damo_Suzuki_and_NOW__Metro_Girl__unedited_20_min_version.mp3', 'Metro Girl (the unedited full 20 minute version)', 'Damo Suzuki & NOW', '1194', '2011-04-12 22:35:30.161535', '2011-04-12 22:35:30.161535', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('10', 'http://www.archive.org/download/ca200_cjazz/105_Morgan_Fisher__MO_30_1_CUT.mp3', 'MO 30-1 CUT', 'Morgan Fisher ', '952', '2011-04-12 22:36:12.532864', '2011-04-12 23:02:08.710106', '2.0');
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('11', 'http://www.archive.org/download/ca200_cjazz/106_Infinitus_Ensemble__The_Pink_Shoes_Of_Marie_Antoinette.mp3', 'The Pink Shoes Of Marie Antoinette are sailing on a Ship of Thoughts', 'Infinitus Ensemble', '369', '2011-04-12 22:37:03.489333', '2011-04-12 22:37:03.489333', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('12', 'http://www.archive.org/download/ca200_cjazz/107_Model_Of_The_Invisible__Bluffing_The_Archons.mp3', 'Bluffing The Archons', 'Model Of The Invisible', '420', '2011-04-12 22:38:05.368403', '2011-04-12 23:01:48.112675', '3.0');
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('13', 'http://www.archive.org/download/ca200_cjazz/108_Broken_Quartet__Popsong.mp3', 'Popsong', 'Broken Quartet', '280', '2011-04-12 22:38:30.137523', '2011-04-12 22:38:30.137523', null);
INSERT INTO mp3s(id, url, title, artist, length, created_at, updated_at, average_rating) VALUES ('14', 'http://www.archive.org/download/ca200_cjazz/501_Evgeny_Makarov__Wave_2.mp3', 'Wave 2', 'Evgeny Makarov', '130', '2011-04-12 22:42:40.848814', '2011-04-12 23:01:36.427521', '2.0');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('1', '1', '4', '2011-04-12 01:29:16.865804', '2011-04-12 01:29:16.865804');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('2', '1', '5', '2011-04-12 01:29:21.562017', '2011-04-12 01:29:21.562017');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('3', '1', '2', '2011-04-12 01:29:24.207959', '2011-04-12 01:29:24.207959');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('4', '1', '3', '2011-04-12 01:38:19.433036', '2011-04-12 01:38:19.433036');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('5', '1', '1', '2011-04-12 01:38:23.718850', '2011-04-12 01:38:23.718850');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('6', '1', '2', '2011-04-12 01:38:26.534224', '2011-04-12 01:38:26.534224');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('7', '1', '1', '2011-04-12 01:38:28.780798', '2011-04-12 01:38:28.780798');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('8', '1', '1', '2011-04-12 01:38:30.746785', '2011-04-12 01:38:30.746785');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('9', '1', '1', '2011-04-12 01:38:32.693607', '2011-04-12 01:38:32.693607');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('10', '1', '1', '2011-04-12 01:38:34.539925', '2011-04-12 01:38:34.539925');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('11', '1', '1', '2011-04-12 01:38:36.276551', '2011-04-12 01:38:36.276551');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('12', '1', '1', '2011-04-12 01:38:38.090663', '2011-04-12 01:38:38.090663');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('13', '1', '1', '2011-04-12 01:38:40.731884', '2011-04-12 01:38:40.731884');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('14', '1', '1', '2011-04-12 01:38:42.372349', '2011-04-12 01:38:42.372349');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('15', '1', '1', '2011-04-12 01:38:44.109310', '2011-04-12 01:38:44.109310');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('16', '1', '1', '2011-04-12 01:38:45.757017', '2011-04-12 01:38:45.757017');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('17', '1', '5', '2011-04-12 01:38:47.741210', '2011-04-12 01:38:47.741210');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('18', '1', '5', '2011-04-12 01:38:50.164374', '2011-04-12 01:38:50.164374');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('19', '1', '4', '2011-04-12 01:38:52.684967', '2011-04-12 01:38:52.684967');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('20', '1', '3', '2011-04-12 01:39:10.102630', '2011-04-12 01:39:10.102630');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('21', '1', '3', '2011-04-12 01:54:34.892087', '2011-04-12 01:54:34.892087');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('22', '2', '4', '2011-04-12 03:16:21.154893', '2011-04-12 03:16:21.154893');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('23', '14', '1', '2011-04-12 22:58:51.171672', '2011-04-12 22:58:51.171672');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('24', '14', '2', '2011-04-12 23:01:30.234180', '2011-04-12 23:01:30.234180');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('25', '14', '5', '2011-04-12 23:01:36.415111', '2011-04-12 23:01:36.415111');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('26', '12', '1', '2011-04-12 23:01:42.873671', '2011-04-12 23:01:42.873671');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('27', '12', '3', '2011-04-12 23:01:45.366074', '2011-04-12 23:01:45.366074');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('28', '12', '5', '2011-04-12 23:01:48.099403', '2011-04-12 23:01:48.099403');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('29', '10', '2', '2011-04-12 23:02:08.698350', '2011-04-12 23:02:08.698350');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('30', '15', '1', '2011-04-12 23:16:30.675959', '2011-04-12 23:16:30.675959');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('31', '15', '3', '2011-04-12 23:16:31.374182', '2011-04-12 23:16:31.374182');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('32', '18', '1', '2011-04-12 23:20:18.258043', '2011-04-12 23:20:18.258043');
INSERT INTO ratings(id, mp3_id, score, created_at, updated_at) VALUES ('33', '18', '3', '2011-04-12 23:20:36.570629', '2011-04-12 23:20:36.570629');