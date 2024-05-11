-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS "user";
		
CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "age" INTEGER,
  "gender" VARCHAR(10),
  "level_of_education" VARCHAR(30),
  "housing_type" VARCHAR(20),
  "familiars_on_the_house" VARCHAR(30),
  "family_monthly_income" INTEGER,
  "how_many_people_on_the_house" INTEGER,
  "address" VARCHAR(50),
  "login" VARCHAR(40),
  "password" VARCHAR(30)
);

-- ---
-- Table 'contact_informations'
-- 
-- ---

DROP TABLE IF EXISTS contact_informations;
		
CREATE TABLE contact_informations (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(40),
  social_name VARCHAR(20),
  cellphone VARCHAR(15),
  email VARCHAR(30),
  id_has_a_dog INTEGER,
  id_had_a_dog INTEGER,
  FOREIGN KEY (id_has_a_dog) REFERENCES has_a_dog (id),
  FOREIGN KEY (id_had_a_dog) REFERENCES had_a_dog (id)
);

-- ---
-- Table 'has_a_dog'
-- 
-- ---

DROP TABLE IF EXISTS has_a_dog;
		
CREATE TABLE has_a_dog (
  id SERIAL PRIMARY KEY,
  dog_sex VARCHAR(10),
  dog_name VARCHAR(20),
  is_it_yours_or_is_it_from_another_person VARCHAR(30),
  castrated BOOLEAN,
  if_castrated_when VARCHAR(20),
  time_with_the_dog VARCHAR(20),
  first_dog BOOLEAN,
  how_many_dogs INTEGER,
  how_many_cats INTEGER,
  dog_age INTEGER,
  breed VARCHAR(30),
  where_dog_from VARCHAR(30),
  paid_to_acquire INTEGER,
  age_he_had_when_gotten INTEGER,
  dog_personality TEXT,
  why_a_dog INTEGER,
  dog_characteristics_you_like TEXT,
  who_decided TEXT,
  had_dog_that_you_couldnt_keep_why TEXT,
  went_to_vet_last_year BOOLEAN,
  if_yes_how_many_times INTEGER,
  describe_your_dog TEXT,
  id_user INTEGER,
  id_dog_age INTEGER,
  FOREIGN KEY (why_a_dog) REFERENCES why_a_dog (id),
  FOREIGN KEY (id_user) REFERENCES "user" (id)
);

-- ---
-- Table 'had_a_dog'
-- 
-- ---

DROP TABLE IF EXISTS had_a_dog;
		
CREATE TABLE had_a_dog (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR(30),
  was_it_yours_or_was_it_from_another_person VARCHAR(30),
  dog_personality VARCHAR(30),
  time_with_you VARCHAR(20),
  was_it_your_first_dog BOOLEAN,
  how_many_dogs_you_had INTEGER,
  how_many_cats_you_had INTEGER,
  age_of_pet_when_gotten INTEGER,
  was_castrated VARCHAR(3),
  if_castrated_when INTEGER,
  breed VARCHAR(30),
  where_dog_from VARCHAR(30),
  paid_to_acquire INTEGER,
  why_a_dog VARCHAR(30),
  dog_caractheristics_made_you_keep_or_acquire TEXT,
  who_gave_the_name_of_the_dog VARCHAR(30),
  at_first_what_you_liked_about_it TEXT,
  at_first_what_you_didint_like_about_it TEXT,
  how_many_times_it_went_to_vet INTEGER,
  why TEXT,
  when_you_stopped_living_with_the_dog VARCHAR(50),
  how_old_was_it INTEGER,
  why_you_stopped_living_with_it VARCHAR(100),
  id_user INTEGER,
  FOREIGN KEY (why_a_dog) REFERENCES why_a_dog (id),
  FOREIGN KEY (id_user) REFERENCES "user" (id)
);

-- ---
-- Table 'wants_to_have'
-- 
-- ---

DROP TABLE IF EXISTS wants_to_have;
		
CREATE TABLE wants_to_have (
  id SERIAL PRIMARY KEY,
  size VARCHAR(30),
  fur VARCHAR(30),
  color VARCHAR(30),
  sex VARCHAR(30),
  age INTEGER,
  breed VARCHAR(30),
  why_a_dog INTEGER,
  future_name VARCHAR(30),
  why_the_name TEXT,
  buy_or_adopt VARCHAR(10),
  when VARCHAR(30),
  dog_personality TEXT,
  you_know_the_monthly_spending BOOLEAN,
  if_yes_how_much INTEGER,
  id_user INTEGER,
  FOREIGN KEY (why_a_dog) REFERENCES why_a_dog (id),
  FOREIGN KEY (id_user) REFERENCES "user" (id)
);

-- ---
-- Table 'dont_want'
-- 
-- ---

DROP TABLE IF EXISTS dont_want;
		
CREATE TABLE dont_want (
  id SERIAL PRIMARY KEY,
  why_not TEXT,
  id_user INTEGER,
  FOREIGN KEY (id_user) REFERENCES "user" (id)
);

-- ---
-- Table 'why_a_dog'
-- 
-- ---

DROP TABLE IF EXISTS why_a_dog;
		
CREATE TABLE why_a_dog (
  id SERIAL PRIMARY KEY,
  companion_for_childreen BOOLEAN,
  companion_for_adults BOOLEAN,
  looks BOOLEAN,
  companion_for_another_dog BOOLEAN,
  teach_responsibility_for_childreen BOOLEAN,
  my_friends_had BOOLEAN,
  protection BOOLEAN,
  help_a_friend_that_couldnt_take_care BOOLEAN,
  save_its_life BOOLEAN,
  it_was_cute BOOLEAN,
  he_chose_me BOOLEAN,
  it_was_a_gift BOOLEAN
);

-- ---
-- Test Data
-- ---

-- INSERT INTO "user" ("age","gender","level_of_education","housing_type","familiars_on_the_house","family_monthly_income","how_many_people_on_the_house","address","login","password") VALUES
-- ('','','','','','','','','','');
-- INSERT INTO contact_informations ("full_name","social_name","cellphone","email","id_has_a_dog","id_had_a_dog") VALUES
-- ('','','','','','');
-- INSERT INTO has_a_dog ("dog_sex","dog_name","is_it_yours_or_is_it_from_another_person","castrated","if_castrated_when","time_with_the_dog","first_dog","how_many_dogs","how_many_cats","dog_age","breed","where_dog_from","paid_to_acquire","age_he_had_when_gotten","dog_personality","why_a_dog","dog_characteristics_you_like","who_decided","had_dog_that_you_couldnt_keep_why","went_to_vet_last_year","if_yes_how_many_times","describe_your_dog","id_user","id_dog_age") VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO had_a_dog ("dog_name","was_it_yours_or_was_it_from_another_person","dog_personality","time_with_you","was_it_your_first_dog","how_many_dogs_you_had","how_many_cats_you_had","age_of_pet_when_gotten","was_castrated","if_castrated_when","breed","where_dog_from","paid_to_acquire","why_a_dog","dog_caractheristics_made_you_keep_or_acquire","who_gave_the_name_of_the_dog","at_first_what_you_liked_about_it","at_first_what_you_didint_like_about_it","how_many_times_it_went_to_vet","why","when_you_stopped_living_with_the_dog","how_old_was_it","why_you_stopped_living_with_it","id_user") VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO wants_to_have ("size","fur","color","sex","age","breed","why_a_dog","future_name","why_the_name","buy_or_adopt","when","dog_personality","you_know_the_monthly_spending","if_yes_how_much","id_user") VALUES
-- ('','','','','','','','','','','','','','','','');
-- INSERT INTO dont_want ("why_not","id_user") VALUES
-- ('','');
-- INSERT INTO why_a_dog ("companion_for_childreen","companion_for_adults","looks","companion_for_another_dog","teach_responsibility_for_childreen","my_friends_had","protection","help_a_friend_that_couldnt_take_care","save_its_life","it_was_cute","he_chose_me","it_was_a_gift") VALUES
-- ('','','','','','','','','','','','');
