# note: the installation script expects one query per line!

CREATE TABLE mlf2_banlists (name varchar(255) NOT NULL default '', list text NOT NULL) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_categories (id int(11) NOT NULL AUTO_INCREMENT, order_id int(11) NOT NULL default '0', category varchar(255) NOT NULL default '', description varchar(255) NOT NULL default '',accession tinyint(4) NOT NULL default '0', PRIMARY KEY (id)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_entries (id int(11) NOT NULL AUTO_INCREMENT, pid int(11) NOT NULL default '0', tid int(11) NOT NULL default '0', uniqid varchar(255) NOT NULL default '', time timestamp NOT NULL default CURRENT_TIMESTAMP, last_reply timestamp NULL DEFAULT NULL, edited timestamp NULL DEFAULT NULL, edited_by int(11) default NULL, user_id int(11) default '0', name varchar(255) NOT NULL default '', subject varchar(255) NOT NULL default '',category int(11) NOT NULL default '0', email varchar(255) NOT NULL default '', hp varchar(255) NOT NULL default '', location varchar(255) NOT NULL default '', ip varchar(128) NOT NULL default '', text text NOT NULL, show_signature tinyint(4) default '0', marked tinyint(4) default '0', locked tinyint(4) default '0', sticky tinyint(4) default '0', views int(11) default '0', edit_key varchar(255) NOT NULL default '', PRIMARY KEY (id), UNIQUE KEY id (id), KEY tid (tid),KEY category (category), KEY pid (pid), KEY sticky (sticky), KEY user_id (user_id), KEY time (time), KEY last_reply (last_reply)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_settings (name varchar(255) NOT NULL, value varchar(255) NOT NULL default '', PRIMARY KEY (name)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_smilies (id int(11) NOT NULL AUTO_INCREMENT, order_id int(11) NOT NULL default '0', file varchar(100) NOT NULL default '', code_1 varchar(50) NOT NULL default '', code_2 varchar(50) NOT NULL default '', code_3 varchar(50) NOT NULL default '', code_4 varchar(50) NOT NULL default '', code_5 varchar(50) NOT NULL default '', title varchar(255) NOT NULL default '', PRIMARY KEY (id)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_userdata (user_id int(11) NOT NULL AUTO_INCREMENT, user_type tinyint(4) NOT NULL default '0', user_name varchar(128) NOT NULL COLLATE utf8mb4_bin, user_real_name varchar(255) NOT NULL default '', gender tinyint(4) NOT NULL default '0', birthday date NULL default NULL, user_pw varchar(255) NOT NULL default '', user_email varchar(255) character set utf8 NOT NULL, email_contact tinyint(4) default '0', user_hp varchar(255) NOT NULL default '', user_location varchar(255) NOT NULL default '', signature varchar(255) NOT NULL default '', profile text NOT NULL, logins int(11) NOT NULL default '0', last_login timestamp NULL default CURRENT_TIMESTAMP, last_logout timestamp NULL DEFAULT NULL, user_ip varchar(128) NOT NULL default '', registered timestamp NULL DEFAULT NULL, category_selection varchar(255) DEFAULT NULL, thread_order tinyint(4) NOT NULL default '0', user_view tinyint(4) NOT NULL default '0', sidebar tinyint(4) NOT NULL default '1', fold_threads tinyint(4) NOT NULL default '0', thread_display tinyint(4) NOT NULL default '0', new_posting_notification tinyint(4) default '0', new_user_notification tinyint(4) default '0', user_lock tinyint(4) default '0', browser_window_target tinyint(4) NOT NULL default '0', auto_login_code varchar(50) NOT NULL default '', pwf_code varchar(50) NOT NULL, activate_code varchar(50) NOT NULL default '', language VARCHAR(255) NOT NULL DEFAULT '', time_zone VARCHAR(255) NOT NULL DEFAULT '', time_difference smallint(4) default '0', theme VARCHAR(255) NOT NULL DEFAULT '', tou_accepted DATETIME NULL DEFAULT NULL, dps_accepted DATETIME NULL DEFAULT NULL, inactivity_notification BOOLEAN NOT NULL DEFAULT FALSE, PRIMARY KEY (user_id), KEY key_user_type (user_type), UNIQUE KEY key_user_name (user_name), UNIQUE KEY key_user_email (user_email)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_pages (id int(11) NOT NULL AUTO_INCREMENT,order_id int(11) NOT NULL, title varchar(255) NOT NULL default '', content text NOT NULL, menu_linkname varchar(255) NOT NULL default '', access tinyint(4) NOT NULL default '0', PRIMARY KEY (id)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_useronline (ip char(15) NOT NULL default '',time int(14) NOT NULL default '0',user_id int(11) default '0') ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_logincontrol (time timestamp NOT NULL default CURRENT_TIMESTAMP, ip varchar(255) NOT NULL default '', logins int(11) NOT NULL default '0') ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_entries_cache (cache_id int(11) NOT NULL, cache_text mediumtext NOT NULL, PRIMARY KEY (cache_id)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_userdata_cache (cache_id int(11) NOT NULL, cache_signature text NOT NULL, cache_profile text NOT NULL, PRIMARY KEY (cache_id)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_bookmarks (id int(11) NOT NULL AUTO_INCREMENT, user_id int(11) NOT NULL, posting_id int(11) NOT NULL, time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, subject varchar(255) NOT NULL, order_id int(11) NOT NULL DEFAULT '0', PRIMARY KEY (id), UNIQUE KEY UNIQUE_uid_pid (user_id,posting_id)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_read_entries (user_id int(11) UNSIGNED NOT NULL, posting_id int(11) UNSIGNED NOT NULL, time timestamp NOT NULL, PRIMARY KEY (user_id, posting_id), KEY `user_id` (`user_id`), KEY `posting_id` (`posting_id`)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_temp_infos (name varchar(50) NOT NULL, value varchar(255) NOT NULL, time timestamp NULL DEFAULT NULL, PRIMARY KEY (name)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_entry_tags (`bid` int(11) NOT NULL, `tid` int(11) NOT NULL, PRIMARY KEY (`bid`,`tid`)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_bookmark_tags (`bid` int(11) NOT NULL, `tid` int(11) NOT NULL, PRIMARY KEY (`bid`,`tid`)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_tags (`id` int(11) NOT NULL AUTO_INCREMENT, `tag` varchar(128) NOT NULL, PRIMARY KEY (`id`), UNIQUE KEY `tag` (`tag`)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE mlf2_subscriptions (`user_id` int(12) UNSIGNED NULL, `eid` int(12) UNSIGNED NOT NULL, `unsubscribe_code` varchar(36) NOT NULL, `tstamp` datetime DEFAULT NULL, UNIQUE `user_thread` (`user_id`, `eid`) USING HASH, INDEX `hash` (`unsubscribe_code`)) ENGINE = InnoDB CHARSET=utf8;
CREATE TABLE mlf2_b8_rating (`eid` int(11) NOT NULL, `spam` tinyint(1) NOT NULL DEFAULT '0', `training_type` tinyint(1) NOT NULL DEFAULT '0', PRIMARY KEY (`eid`), KEY `b8_spam` (`spam`), KEY `B8_training_type` (`training_type`)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_akismet_rating (`eid` int(11) NOT NULL, `spam` tinyint(1) NOT NULL DEFAULT '0', `spam_check_status` tinyint(1) NOT NULL DEFAULT '0', PRIMARY KEY (`eid`), KEY `akismet_spam` (`spam`), KEY spam_check_status (spam_check_status)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE mlf2_b8_wordlist (`token` varchar(128) NOT NULL, `count_ham` int unsigned default NULL, `count_spam` int unsigned default NULL, PRIMARY KEY (`token`)) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
CREATE TABLE mlf2_uploads (`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, `uploader` int(10) UNSIGNED NULL, `filename` varchar(64) NULL, `tstamp` datetime NULL, PRIMARY KEY (id)) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO mlf2_banlists VALUES ('user_agents', '');
INSERT INTO mlf2_banlists VALUES ('ips', '');
INSERT INTO mlf2_banlists VALUES ('words', '');

INSERT INTO mlf2_settings VALUES ('forum_name', 'my little forum');
INSERT INTO mlf2_settings VALUES ('forum_description', 'yet another little forum');
INSERT INTO mlf2_settings VALUES ('forum_email', '@');
INSERT INTO mlf2_settings VALUES ('forum_address', '');
INSERT INTO mlf2_settings VALUES ('home_linkaddress', '../');
INSERT INTO mlf2_settings VALUES ('home_linkname', '');
INSERT INTO mlf2_settings VALUES ('language_file', 'english.lang');
INSERT INTO mlf2_settings VALUES ('theme', 'default');
INSERT INTO mlf2_settings VALUES ('access_for_users_only', '0');
INSERT INTO mlf2_settings VALUES ('entries_by_users_only', '0');
INSERT INTO mlf2_settings VALUES ('register_mode', '0');
INSERT INTO mlf2_settings VALUES ('default_email_contact', '0');
INSERT INTO mlf2_settings VALUES ('user_area_access', '1');
INSERT INTO mlf2_settings VALUES ('rss_feed', '1');
INSERT INTO mlf2_settings VALUES ('rss_feed_max_items', '20');
INSERT INTO mlf2_settings VALUES ('session_prefix', 'mlf2_');
INSERT INTO mlf2_settings VALUES ('default_view', '0');
INSERT INTO mlf2_settings VALUES ('remember_userdata', '1');
INSERT INTO mlf2_settings VALUES ('remember_last_visit', '1');
INSERT INTO mlf2_settings VALUES ('empty_postings_possible', '0');
INSERT INTO mlf2_settings VALUES ('email_notification_unregistered', '0');
INSERT INTO mlf2_settings VALUES ('user_edit', '1');
INSERT INTO mlf2_settings VALUES ('user_edit_if_no_replies', '0');
INSERT INTO mlf2_settings VALUES ('show_if_edited', '1');
INSERT INTO mlf2_settings VALUES ('dont_reg_edit_by_admin', '0');
INSERT INTO mlf2_settings VALUES ('dont_reg_edit_by_mod', '0');
INSERT INTO mlf2_settings VALUES ('edit_min_time_period', '5');
INSERT INTO mlf2_settings VALUES ('edit_max_time_period', '60');
INSERT INTO mlf2_settings VALUES ('edit_delay', '3');
INSERT INTO mlf2_settings VALUES ('bbcode', '1');
INSERT INTO mlf2_settings VALUES ('bbcode_img', '1');
INSERT INTO mlf2_settings VALUES ('bbcode_color', '1');
INSERT INTO mlf2_settings VALUES ('bbcode_size', '1');
INSERT INTO mlf2_settings VALUES ('bbcode_code', '0');
INSERT INTO mlf2_settings VALUES ('upload_images', '0');
INSERT INTO mlf2_settings VALUES ('smilies', '1');
INSERT INTO mlf2_settings VALUES ('autolink', '1');
INSERT INTO mlf2_settings VALUES ('count_views', '1');
INSERT INTO mlf2_settings VALUES ('autologin', '1');
INSERT INTO mlf2_settings VALUES ('threads_per_page', '30');
INSERT INTO mlf2_settings VALUES ('search_results_per_page', '20');
INSERT INTO mlf2_settings VALUES ('name_maxlength', '70');
INSERT INTO mlf2_settings VALUES ('name_word_maxlength', '30');
INSERT INTO mlf2_settings VALUES ('email_maxlength', '70');
INSERT INTO mlf2_settings VALUES ('hp_maxlength', '70');
INSERT INTO mlf2_settings VALUES ('location_maxlength', '40');
INSERT INTO mlf2_settings VALUES ('location_word_maxlength', '30');
INSERT INTO mlf2_settings VALUES ('subject_maxlength', '60');
INSERT INTO mlf2_settings VALUES ('subject_word_maxlength', '30');
INSERT INTO mlf2_settings VALUES ('text_maxlength', '5000');
INSERT INTO mlf2_settings VALUES ('profile_maxlength', '5000');
INSERT INTO mlf2_settings VALUES ('signature_maxlength', '255');
INSERT INTO mlf2_settings VALUES ('text_word_maxlength', '90');
INSERT INTO mlf2_settings VALUES ('email_subject_maxlength', '100');
INSERT INTO mlf2_settings VALUES ('email_text_maxlength', '10000');
INSERT INTO mlf2_settings VALUES ('quote_symbol', '>');
INSERT INTO mlf2_settings VALUES ('count_users_online', '10');
INSERT INTO mlf2_settings VALUES ('last_reply_link', '0');
INSERT INTO mlf2_settings VALUES ('time_difference', '0');
INSERT INTO mlf2_settings VALUES ('time_zone', '');
INSERT INTO mlf2_settings VALUES ('auto_lock_old_threads', '0');
INSERT INTO mlf2_settings VALUES ('upload_max_img_size', '60');
INSERT INTO mlf2_settings VALUES ('upload_max_img_width', '600');
INSERT INTO mlf2_settings VALUES ('upload_max_img_height', '600');
INSERT INTO mlf2_settings VALUES ('mail_parameter', '');
INSERT INTO mlf2_settings VALUES ('forum_enabled', '1');
INSERT INTO mlf2_settings VALUES ('forum_readonly', '0');
INSERT INTO mlf2_settings VALUES ('forum_disabled_message', '');
INSERT INTO mlf2_settings VALUES ('page_browse_range', '10');
INSERT INTO mlf2_settings VALUES ('page_browse_show_last', '0');
INSERT INTO mlf2_settings VALUES ('deep_reply', '15');
INSERT INTO mlf2_settings VALUES ('very_deep_reply', '30');
INSERT INTO mlf2_settings VALUES ('users_per_page', '20');
INSERT INTO mlf2_settings VALUES ('username_maxlength', '40');
INSERT INTO mlf2_settings VALUES ('akismet_entry_check', '0');
INSERT INTO mlf2_settings VALUES ('akismet_mail_check', '0');
INSERT INTO mlf2_settings VALUES ('akismet_key', '');
INSERT INTO mlf2_settings VALUES ('stop_forum_spam', '0');
INSERT INTO mlf2_settings VALUES ('tags', '1');
INSERT INTO mlf2_settings VALUES ('tag_cloud', '0');
INSERT INTO mlf2_settings VALUES ('tag_cloud_day_period', '30');
INSERT INTO mlf2_settings VALUES ('tag_cloud_scale_min', '0');
INSERT INTO mlf2_settings VALUES ('tag_cloud_scale_max', '6');
INSERT INTO mlf2_settings VALUES ('latest_postings', '0');
INSERT INTO mlf2_settings VALUES ('terms_of_use_agreement', '0');
INSERT INTO mlf2_settings VALUES ('terms_of_use_url', '');
INSERT INTO mlf2_settings VALUES ('syntax_highlighter', '0');
INSERT INTO mlf2_settings VALUES ('save_spam', '1');
INSERT INTO mlf2_settings VALUES ('auto_delete_spam', '168');
INSERT INTO mlf2_settings VALUES ('auto_lock', '0');
INSERT INTO mlf2_settings VALUES ('temp_block_ip_after_repeated_failed_logins', '10');
INSERT INTO mlf2_settings VALUES ('flood_prevention_minutes', '2');
INSERT INTO mlf2_settings VALUES ('fold_threads', '0');
INSERT INTO mlf2_settings VALUES ('avatars', '0');
INSERT INTO mlf2_settings VALUES ('avatar_max_filesize','20');
INSERT INTO mlf2_settings VALUES ('avatar_max_width','80');
INSERT INTO mlf2_settings VALUES ('avatar_max_height','80');
INSERT INTO mlf2_settings VALUES ('captcha_posting', '0');
INSERT INTO mlf2_settings VALUES ('captcha_email', '0');
INSERT INTO mlf2_settings VALUES ('captcha_register', '0');
INSERT INTO mlf2_settings VALUES ('min_pw_length', '8');
INSERT INTO mlf2_settings VALUES ('cookie_validity_days', '30');
INSERT INTO mlf2_settings VALUES ('daily_actions_time', '3:30');
INSERT INTO mlf2_settings VALUES ('delete_ips', '0');
INSERT INTO mlf2_settings VALUES ('ajax_preview', '1');
INSERT INTO mlf2_settings VALUES ('read_state_expiration_value', '500');
INSERT INTO mlf2_settings VALUES ('read_state_expiration_method', '0');
INSERT INTO mlf2_settings VALUES ('uploads_per_page', '20');
INSERT INTO mlf2_settings VALUES ('data_privacy_agreement', '0');
INSERT INTO mlf2_settings VALUES ('data_privacy_statement_url', '');
INSERT INTO mlf2_settings VALUES ('bbcode_latex', '0');
INSERT INTO mlf2_settings VALUES ('bbcode_latex_uri', 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js');
INSERT INTO mlf2_settings VALUES ('min_posting_time', '5'); 
INSERT INTO mlf2_settings VALUES ('min_register_time', '5');
INSERT INTO mlf2_settings VALUES ('min_email_time', '5');
INSERT INTO mlf2_settings VALUES ('max_posting_time', '10800'); 
INSERT INTO mlf2_settings VALUES ('max_register_time', '10800');
INSERT INTO mlf2_settings VALUES ('max_email_time', '10800');
INSERT INTO mlf2_settings VALUES ('b8_entry_check', '1');
INSERT INTO mlf2_settings VALUES ('b8_auto_training', '1');
INSERT INTO mlf2_settings VALUES ('b8_mail_check', '0');
INSERT INTO mlf2_settings VALUES ('b8_spam_probability_threshold', '80');
INSERT INTO mlf2_settings VALUES ('spam_check_registered', '0');
INSERT INTO mlf2_settings VALUES ('min_pw_digits', '0');
INSERT INTO mlf2_settings VALUES ('min_pw_lowercase_letters', '0');
INSERT INTO mlf2_settings VALUES ('min_pw_uppercase_letters', '0');
INSERT INTO mlf2_settings VALUES ('min_pw_special_characters', '0');
INSERT INTO mlf2_settings VALUES ('php_mailer', '0');
INSERT INTO mlf2_settings VALUES ('delete_inactive_users', '30');
INSERT INTO mlf2_settings VALUES ('notify_inactive_users', '3');
INSERT INTO mlf2_settings VALUES ('link_open_target', '');

INSERT INTO mlf2_temp_infos (`name`, `value`) VALUES ('access_permission_checks', '0'), ('last_changes', '0'), ('next_daily_actions', '0');

INSERT INTO mlf2_smilies VALUES (1, 1, 'smile.png', ':-)', '', '', '', '', '');
INSERT INTO mlf2_smilies VALUES (2, 2, 'wink.png', ';-)', '', '', '', '', '');
INSERT INTO mlf2_smilies VALUES (3, 3, 'tongue.png', ':-P', '', '', '', '', '');
INSERT INTO mlf2_smilies VALUES (4, 4, 'biggrin.png', ':-D', '', '', '', '', '');
INSERT INTO mlf2_smilies VALUES (5, 5, 'neutral.png', ':-|', '', '', '', '', '');
INSERT INTO mlf2_smilies VALUES (6, 6, 'frown.png', ':-(', '', '', '', '', '');

INSERT INTO mlf2_b8_wordlist (`token`, `count_ham`, `count_spam`) VALUES ('b8*dbversion', '3', NULL), ('b8*texts', '0', '0');

INSERT INTO mlf2_userdata (user_type, user_name, user_pw, user_email, email_contact, profile, logins, last_login, last_logout, registered, pwf_code, theme) VALUES (2, 'admin', 'c3ccb88dc0a985b9b5da20bb9333854194dfbc7767d91c6936', 'admin@example.com', 1, '', 0, NULL, NULL, NOW(), '', '');


