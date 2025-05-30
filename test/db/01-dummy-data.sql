INSERT INTO
    public.users (username, status, age_range, catchphrase, data)
VALUES
    ('powerbot', 'ONLINE', '[1,2)'::int4range, 'fat cat'::tsvector, NULL),
    ('kiwicopple', 'OFFLINE', '[25,35)'::int4range, 'cat bat'::tsvector, NUlL),
    ('awailas', 'ONLINE', '[25,35)'::int4range, 'bat rat'::tsvector, NULL),
    ('dragarcia', 'ONLINE', '[20,30)'::int4range, 'rat fat'::tsvector, NULL),
    ('jsonuser', 'ONLINE', '[20,30)'::int4range, 'json test'::tsvector, '{"foo": {"bar": {"nested": "value"}, "baz": "string value"}}'::jsonb);

INSERT INTO
    public.channels (slug)
VALUES
    ('public'),
    ('random'),
    ('other');

INSERT INTO
    public.messages (message, channel_id, username)
VALUES
    ('Hello World 👋', 1, 'powerbot'),
    ('Perfection is attained, not when there is nothing more to add, but when there is nothing left to take away.', 2, 'powerbot'),
    ('Some message on channel wihtout details', 3, 'powerbot'),
    ('Some message on channel wihtout details', 3, 'powerbot');

INSERT INTO
    personal.users (username, status, age_range)
VALUES
    ('powerbot', 'ONLINE', '[1,2)'::int4range),
    ('kiwicopple', 'OFFLINE', '[25,35)'::int4range),
    ('awailas', 'ONLINE', '[25,35)'::int4range),
    ('dragarcia', 'ONLINE', '[20,30)'::int4range),
    ('leroyjenkins', 'ONLINE', '[20,40)'::int4range);

INSERT INTO shops(id, address, shop_geom)
VALUES
  (1, '1369 Cambridge St', 'SRID=4326;POINT(-71.10044 42.373695)');

INSERT INTO public.channel_details (id, details)
VALUES
    (1, 'Details for public channel'),
    (2, 'Details for random channel');

INSERT INTO user_profiles (id, username)
VALUES
  (1, 'powerbot'),
  (2, NULL);

INSERT INTO best_friends(id, first_user, second_user, third_wheel)
VALUES
  (1, 'powerbot', 'kiwicopple', 'awailas'),
  (2, 'powerbot', 'awailas', NULL);

INSERT INTO public.collections (id, description, parent_id)
VALUES
  (1, 'Root Collection', NULL),
  (2, 'Child of Root', 1),
  (3, 'Another Child of Root', 1),
  (4, 'Grandchild', 2),
  (5, 'Sibling of Grandchild', 2),
  (6, 'Child of Another Root', 3);

-- Insert sample products
INSERT INTO public.products (id, name, description, price)
VALUES
  (1, 'Laptop', 'High-performance laptop', 999.99),
  (2, 'Smartphone', 'Latest model smartphone', 699.99),
  (3, 'Headphones', 'Noise-cancelling headphones', 199.99);

-- Insert sample categories
INSERT INTO public.categories (id, name, description)
VALUES
  (1, 'Electronics', 'Electronic devices and gadgets'),
  (2, 'Computers', 'Computer and computer accessories'),
  (3, 'Audio', 'Audio equipment');

-- Insert product-category relationships
INSERT INTO public.product_categories (product_id, category_id)
VALUES
  (1, 1), -- Laptop is in Electronics
  (1, 2), -- Laptop is also in Computers
  (2, 1), -- Smartphone is in Electronics
  (3, 1), -- Headphones are in Electronics
  (3, 3); -- Headphones are also in Audio

INSERT INTO public.cornercase (id, array_column)
VALUES
  (1, ARRAY['test', 'one']),
  (2, ARRAY['another']),
  (3, ARRAY['test2']);