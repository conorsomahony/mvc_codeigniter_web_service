-- Create the database
CREATE DATABASE adopt_an_animal; 
USE adopt_an_animal;
-- Create the animals table - 'id' is autoincrement primary key
CREATE TABLE animals(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `breed` VARCHAR(17) CHARACTER SET utf8,
    `avatar` VARCHAR(32) CHARACTER SET utf8,
    `name` VARCHAR(12) CHARACTER SET utf8,
    `country` VARCHAR(21) CHARACTER SET utf8,
    `catchphrase` VARCHAR(45) CHARACTER SET utf8,
    `slogan` VARCHAR(42) CHARACTER SET utf8,
    `description` VARCHAR(550) CHARACTER SET utf8,
    `colour` VARCHAR(10) CHARACTER SET utf8,
    `food` VARCHAR(31) CHARACTER SET utf8,
    `endangered` VARCHAR(5) CHARACTER SET utf8,
    `adopted` VARCHAR(5) CHARACTER SET utf8,
    `breeding_frequency` VARCHAR(7) CHARACTER SET utf8,
    `another_frequency` VARCHAR(7) CHARACTER SET utf8
); 
-- Insert 50 rows
INSERT INTO animals(
    breed,
    avatar,
    NAME,
    country,
    catchphrase,
    slogan,
    description,
    colour,
    food,
    endangered,
    adopted,
    breeding_frequency,
    another_frequency
)
VALUES(
    'Addax',
    './data/img/addax.jpg',
    'Eugine',
    'Brazil',
    'Customer-focused client-driven help-desk',
    'evolve proactive models',
    'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',
    'Mauv',
    'Bread - 10 Grain Parisian',
    'True',
    'False',
    'Often',
    'Seldom'
),(
    'Alpaca',
    './data/img/alpaca.jpg',
    'Eb',
    'Portugal',
    'Digitized human-resource protocol',
    'utilize sexy applications',
    'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',
    'Puce',
    'Tea - Herbal - 6 Asst',
    'False',
    'False',
    'Monthly',
    'Never'
),(
    'Anteater',
    './data/img/anteater.jpg',
    'Jabez',
    'Russia',
    'Right-sized neutral functionalities',
    'enable end-to-end functionalities',
    'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
    'Khaki',
    'Yogurt - Blueberry, 175 Gr',
    'False',
    'False',
    'Seldom',
    'Seldom'
),(
    'Argali',
    './data/img/argali.jpg',
    'Elise',
    'Mexico',
    'Realigned neutral database',
    'unleash robust partnerships',
    'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',
    'Khaki',
    'Cup - Paper 10oz 92959',
    'True',
    'False',
    'Seldom',
    'Yearly'
),(
    'Basilisk',
    './data/img/basilisk.jpg',
    'Justus',
    'China',
    'Distributed systemic task-force',
    'visualize value-added portals',
    'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',
    'Violet',
    'Pasta - Orzo, Dry',
    'True',
    'True',
    'Never',
    'Daily'
),(
    'Bighorn',
    './data/img/bighorn.jpg',
    'Lorin',
    'Ecuador',
    'Quality-focused intangible implementation',
    'harness proactive convergence',
    'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.',
    'Orange',
    'Appetizer - Mushroom Tart',
    'True',
    'True',
    'Daily',
    'Seldom'
),(
    'Budgerigar',
    './data/img/budgerigar.jpg',
    'Kendre',
    'Indonesia',
    'Ameliorated user-facing algorithm',
    'whiteboard mission-critical infomediaries',
    'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',
    'Maroon',
    'Tortillas - Flour, 8',
    'True',
    'False',
    'Never',
    'Weekly'
),(
    'Bumble bee',
    './data/img/bumble_bee.jpg',
    'Roxane',
    'France',
    'Customer-focused 24/7 encryption',
    'optimize one-to-one e-tailers',
    'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',
    'Mauv',
    'Energy Drink - Redbull 355ml',
    'True',
    'True',
    'Daily',
    'Yearly'
),(
    'Bunny',
    './data/img/bunny.jpg',
    'Lydon',
    'Russia',
    'Customizable foreground instruction set',
    'integrate sexy schemas',
    'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',
    'Pink',
    'Pasta - Linguini, Dry',
    'False',
    'True',
    'Once',
    'Seldom'
),(
    'Chimpanzee',
    './data/img/chimpanzee.jpg',
    'Vladimir',
    'Brazil',
    'Optional maximized service-desk',
    'grow sexy action-items',
    'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',
    'Pink',
    'Oil - Truffle, White',
    'True',
    'True',
    'Once',
    'Monthly'
),(
    'Civet',
    './data/img/civet.jpg',
    'Andrea',
    'France',
    'Networked secondary extranet',
    'empower plug-and-play mindshare',
    'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',
    'Pink',
    'Table Cloth 54x54 White',
    'False',
    'False',
    'Seldom',
    'Never'
),(
    'Deer',
    './data/img/deer.jpg',
    'Calida',
    'Greece',
    'Synergistic impactful hierarchy',
    'cultivate web-enabled architectures',
    'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',
    'Crimson',
    'Pepper - Red Chili',
    'False',
    'False',
    'Once',
    'Once'
),(
    'Dormouse',
    './data/img/dormouse.jpg',
    'Tisha',
    'Tajikistan',
    'Multi-channelled client-server throughput',
    'expedite sticky applications',
    'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    'Violet',
    'Pastry - Chocolate Marble Tea',
    'False',
    'True',
    'Never',
    'Monthly'
),(
    'Duckbill Platypus',
    './data/img/duckbill_platypus.jpg',
    'Felipe',
    'Kosovo',
    'Up-sized bottom-line circuit',
    'disintermediate robust convergence',
    'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',
    'Turquoise',
    'Pernod',
    'False',
    'True',
    'Daily',
    'Weekly'
),(
    'Eagle Owl',
    './data/img/eagle_owl.jpg',
    'Catrina',
    'Iran',
    'Mandatory fault-tolerant archive',
    'mesh 24/365 web-readiness',
    'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',
    'Red',
    'Appetizer - Shrimp Puff',
    'False',
    'False',
    'Never',
    'Often'
),(
    'Elephant',
    './data/img/elephant.jpg',
    'Merrielle',
    'Greece',
    'Networked disintermediate superstructure',
    'mesh interactive relationships',
    'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
    'Pink',
    'Sprouts - Onion',
    'False',
    'False',
    'Monthly',
    'Monthly'
),(
    'Finch',
    './data/img/finch.jpg',
    'Larine',
    'China',
    'Operative global productivity',
    'strategize granular niches',
    'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',
    'Aquamarine',
    'Seedlings - Buckwheat, Organic',
    'True',
    'True',
    'Weekly',
    'Yearly'
),(
    'Frog',
    './data/img/frog.jpg',
    'Hadleigh',
    'Japan',
    'Streamlined holistic capacity',
    'utilize rich bandwidth',
    'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',
    'Violet',
    'Hold Up Tool Storage Rack',
    'False',
    'False',
    'Daily',
    'Seldom'
),(
    'Gazelle',
    './data/img/gazelle.jpg',
    'Carmela',
    'China',
    'Grass-roots grid-enabled application',
    'harness mission-critical networks',
    'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',
    'Yellow',
    'Mayonnaise',
    'False',
    'True',
    'Once',
    'Often'
),(
    'Gila Monster',
    './data/img/gila_monster.jpg',
    'De',
    'Japan',
    'Monitored static process improvement',
    'grow real-time portals',
    'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
    'Fuscia',
    'Sandwich Wrap',
    'False',
    'False',
    'Seldom',
    'Once'
),(
    'Gnu',
    './data/img/gnu.jpg',
    'Desdemona',
    'Japan',
    'Reactive modular frame',
    'monetize open-source action-items',
    'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
    'Crimson',
    'Chicken - Bones',
    'True',
    'True',
    'Yearly',
    'Seldom'
),(
    'Gorilla',
    './data/img/gorilla.jpg',
    'Aube',
    'Philippines',
    'Visionary foreground secured line',
    'scale proactive methodologies',
    'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',
    'Mauv',
    'Bread Sour Rolls',
    'False',
    'False',
    'Weekly',
    'Yearly'
),(
    'Ground Hog',
    './data/img/ground_hog.jpg',
    'Sinclare',
    'Venezuela',
    'Cloned modular circuit',
    'seize efficient convergence',
    'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',
    'Indigo',
    'Pie Shell - 9',
    'False',
    'True',
    'Never',
    'Weekly'
),(
    'Hamster',
    './data/img/hamster.jpg',
    'Gideon',
    'China',
    'Secured web-enabled architecture',
    'brand sticky web services',
    'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',
    'Green',
    'Turkey - Ground. Lean',
    'False',
    'False',
    'Monthly',
    'Weekly'
),(
    'Hedgehog',
    './data/img/hedgehog.jpg',
    'Matteo',
    'Tajikistan',
    'Assimilated interactive parallelism',
    'expedite efficient functionalities',
    'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',
    'Indigo',
    'Sobe - Green Tea',
    'False',
    'True',
    'Yearly',
    'Once'
),(
    'Horse',
    './data/img/horse.jpg',
    'Aeriela',
    'Ireland',
    'Open-architected empowering Graphic Interface',
    'integrate granular technologies',
    'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
    'Blue',
    'Beef Tenderloin Aaa',
    'True',
    'False',
    'Yearly',
    'Yearly'
),(
    'Impala',
    './data/img/impala.jpg',
    'Joellyn',
    'Marshall Islands',
    'Ergonomic 5th generation challenge',
    'integrate turn-key metrics',
    'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
    'Red',
    'Jam - Marmalade, Orange',
    'False',
    'True',
    'Never',
    'Once'
),(
    'Jerboa',
    './data/img/jerboa.jpg',
    'Abbe',
    'Japan',
    'Realigned eco-centric initiative',
    'productize real-time architectures',
    'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',
    'Blue',
    'Soup - Base Broth Beef',
    'False',
    'True',
    'Once',
    'Seldom'
),(
    'Koala',
    './data/img/koala.jpg',
    'Julissa',
    'Dominican Republic',
    'Multi-layered motivating access',
    'streamline revolutionary initiatives',
    'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',
    'Maroon',
    'Flour - Cake',
    'True',
    'True',
    'Often',
    'Yearly'
),(
    'Lion',
    './data/img/lion.jpg',
    'Merl',
    'Norway',
    'Cross-group 3rd generation methodology',
    'maximize vertical e-commerce',
    'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.',
    'Khaki',
    'Veal - Provimi Inside',
    'True',
    'False',
    'Weekly',
    'Seldom'
),(
    'Lizard',
    './data/img/lizard.jpg',
    'Francklyn',
    'Indonesia',
    'Grass-roots systematic hierarchy',
    'integrate B2C supply-chains',
    'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',
    'Crimson',
    'Artichoke - Fresh',
    'True',
    'False',
    'Often',
    'Yearly'
),(
    'Llama',
    './data/img/llama.jpg',
    'Kory',
    'Comoros',
    'Managed well-modulated installation',
    'incentivize scalable infrastructures',
    'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
    'Blue',
    'Beef - Bones, Cut - Up',
    'False',
    'False',
    'Often',
    'Never'
),(
    'Lovebird',
    './data/img/lovebird.jpg',
    'Misty',
    'Vietnam',
    'Fully-configurable user-facing info-mediaries',
    'reinvent cross-platform portals',
    'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    'Khaki',
    'Water - Spring 1.5lit',
    'True',
    'False',
    'Seldom',
    'Often'
),(
    'Muskrat',
    './data/img/muskrat.jpg',
    'Paton',
    'Poland',
    'Fundamental 24/7 access',
    'unleash web-enabled users',
    'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',
    'Maroon',
    'Zucchini - Yellow',
    'False',
    'True',
    'Never',
    'Weekly'
),(
    'Panda',
    './data/img/panda.jpg',
    'Milton',
    'Indonesia',
    'Progressive content-based pricing structure',
    'enhance bleeding-edge markets',
    'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',
    'Orange',
    'Wine - Cotes Du Rhone Parallele',
    'True',
    'False',
    'Yearly',
    'Often'
),(
    'Parakeet',
    './data/img/parakeet.jpg',
    'Elise',
    'France',
    'Networked radical core',
    'orchestrate bricks-and-clicks applications',
    'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
    'Crimson',
    'Seedlings - Clamshell',
    'False',
    'True',
    'Daily',
    'Yearly'
),(
    'Parrot',
    './data/img/parrot.jpg',
    'Gail',
    'Brazil',
    'Switchable zero tolerance hardware',
    'strategize killer supply-chains',
    'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',
    'Crimson',
    'Flour - Corn, Fine',
    'False',
    'True',
    'Often',
    'Daily'
),(
    'Peccary',
    './data/img/peccary.jpg',
    'Massimiliano',
    'Sweden',
    'Sharable systematic time-frame',
    'cultivate distributed web services',
    'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',
    'Aquamarine',
    'Bread - Sour Batard',
    'False',
    'False',
    'Once',
    'Monthly'
),(
    'Polar Bear',
    './data/img/polar_bear.jpg',
    'Hasty',
    'China',
    'Upgradable fresh-thinking support',
    'unleash frictionless e-services',
    'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',
    'Crimson',
    'Yogurt - Blueberry, 175 Gr',
    'False',
    'False',
    'Never',
    'Never'
),(
    'Pronghorn',
    './data/img/pronghorn.jpg',
    'Amabel',
    'China',
    'Up-sized 5th generation info-mediaries',
    'unleash cross-platform applications',
    'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',
    'Goldenrod',
    'Easy Off Oven Cleaner',
    'True',
    'False',
    'Weekly',
    'Weekly'
),(
    'Puppy',
    './data/img/puppy.jpg',
    'Penn',
    'Argentina',
    'De-engineered logistical website',
    'facilitate proactive infrastructures',
    'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',
    'Crimson',
    'Soup - Base Broth Beef',
    'False',
    'True',
    'Weekly',
    'Daily'
),(
    'Rat',
    './data/img/rat.jpg',
    'Jewel',
    'China',
    'Right-sized well-modulated attitude',
    'iterate cross-media infomediaries',
    'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',
    'Violet',
    'Cakes Assorted',
    'False',
    'False',
    'Yearly',
    'Daily'
),(
    'Reindeer',
    './data/img/reindeer.jpg',
    'Dora',
    'Russia',
    'Balanced 6th generation standardization',
    'generate B2B content',
    'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',
    'Violet',
    'Fish - Artic Char, Cold Smoked',
    'True',
    'True',
    'Monthly',
    'Seldom'
),(
    'Rhinoceros',
    './data/img/rhinoceros.jpg',
    'Fidelity',
    'France',
    'Multi-channelled coherent data-warehouse',
    'exploit robust users',
    'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.',
    'Puce',
    'Mayonnaise',
    'False',
    'True',
    'Weekly',
    'Once'
),(
    'Seal',
    './data/img/seal.jpg',
    'Hedvige',
    'Portugal',
    'Sharable stable product',
    'maximize B2B technologies',
    'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    'Yellow',
    'Blackberries',
    'True',
    'True',
    'Never',
    'Once'
),(
    'Sloth',
    './data/img/sloth.jpg',
    'Neda',
    'Russia',
    'Customer-focused mobile solution',
    'expedite plug-and-play action-items',
    'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.',
    'Blue',
    'Wine - Dubouef Macon - Villages',
    'True',
    'True',
    'Once',
    'Weekly'
),(
    'Snowy Owl',
    './data/img/snowy_owl.jpg',
    'Guss',
    'China',
    'Balanced demand-driven core',
    'leverage e-business initiatives',
    'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.',
    'Pink',
    'Jolt Cola',
    'True',
    'True',
    'Often',
    'Often'
),(
    'Thorny Devil',
    './data/img/thorny_devil.jpg',
    'Hunt',
    'Palestinian Territory',
    'Business-focused motivating database',
    'whiteboard ubiquitous networks',
    'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.',
    'Green',
    'Cake - Lemon Chiffon',
    'True',
    'False',
    'Once',
    'Seldom'
),(
    'Turtle',
    './data/img/turtle.jpg',
    'Troy',
    'Georgia',
    'Assimilated bottom-line architecture',
    'aggregate integrated interfaces',
    'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',
    'Pink',
    'Potatoes - Pei 10 Oz',
    'True',
    'False',
    'Often',
    'Seldom'
),(
    'Zebra',
    './data/img/zebra.jpg',
    'Burr',
    'China',
    'Reactive real-time flexibility',
    'engineer integrated e-tailers',
    'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',
    'Mauv',
    'Sauce - Hoisin',
    'True',
    'True',
    'Seldom',
    'Often'
);