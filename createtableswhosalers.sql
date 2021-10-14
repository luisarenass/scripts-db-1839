--Script para la creación de las tablas del proyecto I839
--Creación de Esquema
CREATE SCHEMA IF NOT EXISTS mexico;
ALTER DEFAULT PRIVILEGES IN SCHEMA mexico GRANT ALL PRIVILEGES ON TABLES TO wholesalers_bees;


CREATE TABLE IF NOT EXISTS mexico.accounts (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT account_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.accounts_credits (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 999999 CACHE 1
    ),
    vendor_id character varying(40) COLLATE pg_catalog."default",
    operation_time timestamp with time zone,
    operation character(20) COLLATE pg_catalog."default",
    result_code integer,
    payload json,
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT credits_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.combos (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT combos_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.combos_accounts (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT combos_accounts_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.deals (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT deals_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.delivery_windows (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT deliverywindow_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.empties_management (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 999999 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT empties_management_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.empties_register (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 999999 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(40) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT empties_register_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.inventory (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT inventory_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.invoices (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT invoices_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.items (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT items_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.orders (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT orders_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.prices (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT prices_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.process_phase (
    id smallint NOT NULL,
    phase character varying(40) COLLATE pg_catalog."default" NOT NULL,
    "order" smallint NOT NULL,
    CONSTRAINT process_phase_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.product_assortment_exclusion (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT product_assortment_exclusion_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.product_assortment_inclusion (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT product_assortment_inclusion_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.promotions_accounts (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    operation_time timestamp with time zone,
    result_code integer,
    payload json,
    operation character varying(20) COLLATE pg_catalog."default",
    vendor_id character varying(40) COLLATE pg_catalog."default",
    requesttraceid character varying(100) COLLATE pg_catalog."default",
    phase_id smallint,
    CONSTRAINT promotions_accounts_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.users (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 99999999 CACHE 1
    ),
    username character varying(200) COLLATE pg_catalog."default" NOT NULL,
    password character varying(200) COLLATE pg_catalog."default" NOT NULL,
    softdeleteflag boolean,
    lastmodifieddate timestamp with time zone,
    vendor_id character varying(40) COLLATE pg_catalog."default",
    environment character varying(4) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.wholesaler (
    wholesaler_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    name character(200) COLLATE pg_catalog."default",
    id_sap character(10) COLLATE pg_catalog."default",
    CONSTRAINT wholesaler_pmkey PRIMARY KEY (wholesaler_id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS mexico.wholesalers_auth (
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
        INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
    ),
    vendor_id character varying(40) COLLATE pg_catalog."default" NOT NULL,
    environment character varying(4) COLLATE pg_catalog."default" NOT NULL,
    url_token character varying(400) COLLATE pg_catalog."default" NOT NULL,
    client_id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    client_secret character varying(100) COLLATE pg_catalog."default" NOT NULL,
    url_service character varying(400) COLLATE pg_catalog."default",
    url_service_get_orders character varying(400) COLLATE pg_catalog."default",
    CONSTRAINT wholesalers_auth_pkey PRIMARY KEY (id)
) WITH (OIDS = FALSE) TABLESPACE pg_default;


--Otorgar permisos

GRANT ALL ON SCHEMA mexico to wholesalers_bees;
GRANT ALL ON ALL TABLES IN SCHEMA mexico TO wholesalers_bees;