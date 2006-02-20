alter table hosts add	templateid	int4 DEFAULT '0' NOT NULL;
alter table items add	templateid	int4 DEFAULT '0' NOT NULL;
alter table triggers add	templateid	int4 DEFAULT '0' NOT NULL;
alter table graphs add	templateid	int4 DEFAULT '0' NOT NULL;

--
-- Table structure for table 'valuemaps'
--

CREATE TABLE valuemaps (
  valuemapid		serial,
  name			varchar(64)	DEFAULT '' NOT NULL,
  PRIMARY KEY (valuemapid)
);

--
-- Table structure for table 'mapping'
--

CREATE TABLE mappings (
  mappingid		serial,
  valuemapid		int4		DEFAULT '0' NOT NULL,
  value			varchar(64)	DEFAULT '' NOT NULL,
  newvalue		varchar(64)	DEFAULT '' NOT NULL,
  PRIMARY KEY (mappingid),
);

CREATE INDEX mappings_valuemapid on mappings (valuemapid);
