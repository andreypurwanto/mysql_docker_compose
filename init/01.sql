CREATE TABLE `client_auth` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_secret` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `public_key` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `access_token_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_auth_id` int unsigned NOT NULL,
  `access_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
  -- KEY `access_token_history_FK` (`client_auth_id`),
  -- CONSTRAINT `access_token_history_FK` FOREIGN KEY (`client_auth_id`) REFERENCES `client_auth` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;