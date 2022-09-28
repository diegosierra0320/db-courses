CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "level" varchar(20) NOT NULL,
  "teacher" varchar(20) NOT NULL,
  "users_id" uuid NOT NULL,
  "category_id" uuid NOT NULL,
  "course_videos_id" uuid NOT NULL,
  "roles_id" uuid NOT NULL
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("course_videos_id") REFERENCES "course_videos" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");


insert into users (
	id,
	name,
	email,
	password,
	age
) values (
	'6079c07a-6b11-456d-bf01-c732067c244b',
	'Diego Sierra',
	'diegosierra@gmail.com',
	'123456',
	35
), (
	'5e27c3cb-5ea3-4985-bc46-42082b149397',
	'Camila Bonilla',
	'camilabonilla@gmail.com',
	'654321',
	26
);

insert into categories (
	id,
	name
) values (
	'316174f3-6b7b-4895-8ccb-610aeb5e98de',
	'frontend'
), (
	'10c389a9-53ac-490e-b7d7-1f7bec432ca3',
	'backend'
);


insert into course_videos (
	id,
	title,
	url
) values (
	'0dc82de3-18f0-4451-ba44-896831be8413',
	'tutorial react',
	'https://video-react'
), (
	'dc15d6f5-0ed1-4961-a27e-3a9ae0a8f124',
	'turotial Javascript',
	'https://javascript'
);

insert into roles (
	id,
	name
) values (
	'407cc808-35e0-49b3-b4bc-e564e104d2ad',
	'student'
), (
	'00a45755-ab34-4c03-b4b9-2ac03584420d',
	'teacher'
);

insert into courses (
	id,
  	title,
  	description,
  	level,
  	teacher,
  	users_id,
  	category_id,
  	course_videos_id,
  	roles_id
) values (
	'41291a00-d8f7-4447-b3b1-5815446497d1',
	'React',
	'React course',
	'medium',
	'Benjamin',
	'6079c07a-6b11-456d-bf01-c732067c244b',
	'316174f3-6b7b-4895-8ccb-610aeb5e98de',
	'0dc82de3-18f0-4451-ba44-896831be8413',
	'407cc808-35e0-49b3-b4bc-e564e104d2ad'
), (
	'e507d6b3-1f9d-46ff-94f8-af472c2ff4c5',
	'Javascript',
	'Javascript course',
	'Senior',
	'Sahid',
	'5e27c3cb-5ea3-4985-bc46-42082b149397',
	'10c389a9-53ac-490e-b7d7-1f7bec432ca3',
	'dc15d6f5-0ed1-4961-a27e-3a9ae0a8f124',
	'00a45755-ab34-4c03-b4b9-2ac03584420d'
);