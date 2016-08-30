-- MySQL-reset for x2Ident
-- version: 1.0.2
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `auth`
--
DROP TABLE `auth`;
CREATE TABLE IF NOT EXISTS `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `secret` text NOT NULL,
  `not_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `config`
--
DROP TABLE `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conf_key` text NOT NULL,
  `conf_value` text NOT NULL,
  `conf_default` text NOT NULL,
  `conf_info` text NOT NULL,
  `only_admin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `history`
--
DROP TABLE `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwid` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=327 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `onetimekeys`
--
DROP TABLE `onetimekeys`;
CREATE TABLE IF NOT EXISTS `onetimekeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwid` int(11) NOT NULL,
  `onetime` text NOT NULL,
  `real_pw` text NOT NULL,
  `pw_active` int(11) NOT NULL,
  `url` text NOT NULL,
  `pw_global` int(11) NOT NULL,
  `user` text NOT NULL,
  `sess_id` text NOT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=351 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `session_proxy`
--
DROP TABLE `session_proxy`;
CREATE TABLE IF NOT EXISTS `session_proxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` text NOT NULL,
  `user_agent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `session_user`
--
DROP TABLE `session_user`;
CREATE TABLE IF NOT EXISTS `session_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `ip` text NOT NULL,
  `user_agent` text NOT NULL,
  `sess_id` text NOT NULL,
  `js_id` text NOT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

-- --------------------------------------------------------
