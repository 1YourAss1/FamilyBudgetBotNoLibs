create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table expense(
    id integer primary key,
    user_id integer,
    amount integer,
    created datetime,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

insert into category(codename, name, is_base_expense, aliases)
values
    ('products', 'продукты', true, 'магазин, магаз'),
    ('health', 'здоровье', true, 'больница, аптека, лекарства, таблетки'),
    ('bills', 'платежи', true, 'квитанция, квитанции, камуналка, сад, садик, налог, налоги, страховка, общага'),
    ('food', 'еда', true, 'вкусвилл, вкусвил, шаурма, шава, шавуха, фастфут, мак, бургеркинг, булочка, kfc, кфс, кафе, кофе'),
    ('telecom', 'связь', true, 'телефон, йота, yota, инет, интернет, inet'),
    ('transport', 'транспорт', false, 'мара, метро, автобус, такси'),
    ('sport', 'спорт', false, 'теннис, пинпонг, пин-понг, зал, тренажер, спортинвентарь'),
    ('subscriptions', 'подписки', false, 'подписка'),
    ('car', 'машина', false, 'бензин, бенз, запчасти'),
    ('shopping', 'шоппинг', false, 'вб, одежда, маркет, озон, али, мегамаркет'),
    ('beauty', 'красота', false, 'ногти, брови, ресницы, волосы прическа, парикмахерская, салоны, салон'),
    ('harmful', 'вредное', false, 'пиво, коньяк, виски, водка, алкоголь, сигареты, сиги, сижки, стики'),
    ('entertainment', 'развлечения', false, 'детская комната, игрушка, игры, кино, кинотеатр, развлечение'),
    ('gift', 'подарки', false, 'цветы'),
    ('relax', 'отдых', false, 'поездка, море, путешествия, отпуск'),
    ('other', 'прочее', false, '');

insert into budget(codename, daily_limit) values ('base', 500);
