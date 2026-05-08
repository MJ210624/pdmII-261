import 'models.dart';

final User user0 = User(
  name: Name(first: 'Me', last: ''),
  avatarUrl: 'assets/avatar_1.png',
  lastActive: DateTime.now(),
);

final User user1 = User(
  name: Name(first: '老', last: '强'),
  avatarUrl: 'assets/avatar_2.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 10)),
);

final User user2 = User(
  name: Name(first: 'So', last: 'Duri'),
  avatarUrl: 'assets/avatar_3.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 20)),
);

final User user3 = User(
  name: Name(first: 'Lily', last: 'MacDonald'),
  avatarUrl: 'assets/avatar_4.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 2)),
);

final User user4 = User(
  name: Name(first: 'Ziad', last: 'Aouad'),
  avatarUrl: 'assets/avatar_5.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 6)),
);

final List<Email> emails = [
  Email(
    sender: user1,
    recipients: [],
    subject: '豆花鱼',
    content:
        '最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。',
  ),
  Email(
    sender: user2,
    recipients: [],
    subject: 'Dinner Club',
    content:
        '''I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week?

I'm so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)

So''',
  ),
  Email(
    sender: user3,
    recipients: [],
    subject: 'This food show is made for you',
    content:
        '''Ping– you'd love this new food show I started watching. It's produced by a Thai drummer who started getting recognized for the amazing vegan food she always brought to shows.''',
    attachments: [
      Attachment(url: 'assets/thumbnail_1.png'),
    ],
  ),
  Email(
    sender: user4,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content:
        'What do you think about training to be volunteer EMTs? We could do it together for moral support. Think about it??',
  ),
];

final List<Email> replies = [
  Email(
    sender: user2,
    recipients: [user3, user2],
    subject: 'Dinner Club',
    content:
        '''I think it's time for us to finally try that new noodle shop downtown that doesn't use menus.

Anyone else have other suggestions for dinner club this week?

So''',
  ),
  Email(
    sender: user0,
    recipients: [user3, user2],
    subject: 'Dinner Club',
    content:
        '''Yes! I forgot about that place!

I'm definitely up for taking a risk this week and handing control over to this mysterious noodle chef.

This is going to be great. See you all at the usual time?''',
  ),
];