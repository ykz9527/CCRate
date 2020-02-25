CREATE TABLE "public"."callinfo" (

"uuid" uuid NOT NULL,

"start_epoch" numeric,

"start_stamp" timestamp(6),

"answer_stamp" timestamp(6),

"answer_epoch" numeric,

"end_epoch" numeric,

"end_stamp" text COLLATE "default",

"network_addr" text COLLATE "default",

"hangup_cause" text COLLATE "default",

"sip_hangup_disposition" text COLLATE "default",

CONSTRAINT "callinfo_pkey" PRIMARY KEY ("uuid")

)

WITH (OIDS=FALSE)

;

ALTER TABLE "public"."callinfo" OWNER TO "postgres";



CREATE TABLE "public"."rate" (

"uuid" text NOT NULL,

"call_completion_rate" numeric(4,2) ,

CONSTRAINT "data_pkey" PRIMARY KEY ("uuid")

)

WITH (OIDS=FALSE)

;

ALTER TABLE "public"."rate" OWNER TO "postgres";

INSERT INTO "rate" VALUES ('17.0', 0.40);
INSERT INTO "rate" VALUES ('17.5', 0.35);
INSERT INTO "rate" VALUES ('18.0', 0.22);
INSERT INTO "rate" VALUES ('18.5', 0.28);
INSERT INTO "rate" VALUES ('19.0', 0.32);
INSERT INTO "rate" VALUES ('19.5', 0.34);
INSERT INTO "rate" VALUES ('20.0', 0.27);
INSERT INTO "rate" VALUES ('20.5', 0.25);
INSERT INTO "rate" VALUES ('21.0', 0.21);
INSERT INTO "rate" VALUES ('21.5', 0.00);
INSERT INTO "rate" VALUES ('call_completion_rate', 0.00);
INSERT INTO "rate" VALUES ('9.5', 0.20);
INSERT INTO "rate" VALUES ('10.5', 0.38);
INSERT INTO "rate" VALUES ('10.0', 0.25);
INSERT INTO "rate" VALUES ('11.0', 0.30);
INSERT INTO "rate" VALUES ('11.5', 0.32);
INSERT INTO "rate" VALUES ('12.0', 0.32);
INSERT INTO "rate" VALUES ('12.5', 0.32);
INSERT INTO "rate" VALUES ('13.0', 0.31);
INSERT INTO "rate" VALUES ('13.5', 0.37);
INSERT INTO "rate" VALUES ('14.0', 0.30);
INSERT INTO "rate" VALUES ('14.5', 0.25);
INSERT INTO "rate" VALUES ('15.0', 0.29);
INSERT INTO "rate" VALUES ('15.5', 0.35);
INSERT INTO "rate" VALUES ('16.0', 0.27);
INSERT INTO "rate" VALUES ('16.5', 0.39);
