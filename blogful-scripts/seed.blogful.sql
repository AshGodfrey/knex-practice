INSERT INTO blogful_articles (title, date_published, content)
VALUES
    ('Blog One', now() - '21 days'::INTERVAL, 'blog post 1'),
    ('Blog two', now() - '20 days'::INTERVAL, 'blog post 2'),
    ('Blog 3', now() - '19 days'::INTERVAL, 'blog post 3'),
    ('Blog 4', now() - '18 days'::INTERVAL, 'blog post 4'),
    ('Blog 5', now() - '17 days'::INTERVAL, 'blog post 5'),
    ('Blog 6', now() - '16 days'::INTERVAL, 'blog post 6'),
    ('Blog 7', now() - '15 days'::INTERVAL, 'blog post'),
    ('Blog 8', now() - '14 days'::INTERVAL, 'blog post'),
    ('Blog 9', now() - '13 days'::INTERVAL, 'blog post'),
    ('Blog 10', now() - '12 days'::INTERVAL, 'blog post'),
    ('Blog 11', now() - '11 days'::INTERVAL, 'blog post'),
    ('Blog 12', now() - '10 days'::INTERVAL, 'blog post'),
    ('Blog 13', now() - '9 days'::INTERVAL, 'blog post'),
    ('Blog 14', now() - '8 days'::INTERVAL, 'blog post'),
    ('Blog 15', now() - '7 days'::INTERVAL, 'blog post'),
    ('Blog 16', now() - '6 days'::INTERVAL, 'blog post'),
    ('Blog 17', now() - '5 days'::INTERVAL, 'blog post'),
    ('Blog 18', now() - '4 days'::INTERVAL, 'blog post'),
    ('Blog 19', now() - '3 days'::INTERVAL, 'blog post'),
    ('Blog 20', now() - '2 days'::INTERVAL, 'blog post')
;