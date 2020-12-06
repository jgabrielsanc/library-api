--liquibase formatted sql

--changeset jsanchez:1
--comment creating initial tables
create table book
(
    id   bigint      not null
        constraint book_pkey
            primary key,
    name varchar(35) not null
);

create sequence book_seq increment by 1;

INSERT INTO book VALUES (nextval('public."book_seq"'), 'BOOK DUMMY 1');
INSERT INTO book VALUES (nextval('public."book_seq"'), 'BOOK DUMMY 2');
INSERT INTO book VALUES (nextval('public."book_seq"'), 'BOOK DUMMY 3');

create table page
(
    id      bigint not null
        constraint page_pkey
            primary key,
    content text   not null,
    number  bigint not null,
    id_book bigint not null
        constraint fkfrpjqa2021kdjqjq41fouxtol
            references book
);

create sequence page_seq increment by 1;

INSERT INTO page VALUES (
nextval('public."page_seq"'),
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta in quam in porta. Nullam ullamcorper velit vel velit sagittis pellentesque. Aliquam varius diam vel odio rhoncus rutrum quis eu ligula. Donec sollicitudin volutpat eleifend. Sed semper vel mi vitae porta. Mauris congue, sem in porta fringilla, nisi risus cursus quam, at ultricies ante quam sit amet sem. Nunc eget vestibulum sapien, in sodales ipsum. In quis purus eu lorem suscipit pretium. Proin vulputate porttitor placerat.
Aenean non porta sapien, nec ultricies enim. Morbi nec elit urna. Proin rhoncus tortor velit, a dapibus sem volutpat id. Suspendisse vehicula et magna a feugiat. Etiam vel velit efficitur, rutrum mi in, maximus nunc. Nullam cursus, libero a posuere placerat, lacus magna maximus augue, a tempor nisl purus vitae neque. Nulla hendrerit sapien laoreet orci tempor pulvinar nec at enim. Aliquam sit amet tellus nulla. Sed a congue est. Curabitur at turpis ac nibh feugiat tristique ut non erat. Donec imperdiet orci quis lacus tincidunt, non ornare mauris lacinia. Nullam cursus lorem ac lacus viverra hendrerit. Cras fringilla elit ac libero euismod, eget porttitor mauris lobortis. Donec sed lobortis sapien, in pharetra ipsum.
Aliquam eget massa in sapien fermentum luctus non sit amet leo. Aliquam non dolor a quam bibendum luctus in at felis. Vivamus tincidunt felis eget sem laoreet dictum. Sed eleifend leo libero, non consectetur ligula blandit ac. Curabitur lobortis eros elit, eget sollicitudin justo eleifend sed. Phasellus ante tortor, vestibulum sit amet malesuada et, laoreet id purus. Suspendisse vulputate dapibus dolor sed aliquet. Curabitur sem diam, consequat in augue ac, viverra auctor metus. Maecenas vulputate velit urna, ac gravida sapien pulvinar non. Maecenas et venenatis eros. Quisque in fermentum leo, ultrices vehicula massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo quam, fermentum at nisl at, fermentum facilisis magna. Nulla congue tempor risus, at molestie tortor mollis pellentesque.
Cras lacus ex, mattis in viverra eget, auctor in ipsum. Suspendisse libero arcu, semper sed efficitur at, consectetur vitae mauris. Duis pharetra enim sit amet aliquet sagittis. Etiam nulla nibh, sodales non orci ac, lacinia ullamcorper nisi. Proin tempus orci in neque laoreet pharetra. Suspendisse non arcu lectus. Phasellus pharetra semper vestibulum. Aliquam condimentum sapien at erat interdum malesuada. Maecenas pellentesque dolor ante. Proin feugiat rhoncus nisl, at euismod sapien blandit eu. Sed consectetur dictum nisi, ac faucibus ipsum consectetur vel. Sed metus tortor, tempus quis nisi vestibulum, sodales maximus nibh.
Morbi posuere convallis nunc, in tincidunt ex auctor a. Morbi vitae nunc non mi faucibus blandit. Pellentesque nunc ligula, sagittis sit amet est in, cursus hendrerit augue. Nulla congue consectetur hendrerit. Integer quis velit sit amet eros lobortis interdum ac vitae lectus. Pellentesque quis velit sit amet quam dictum ornare. Suspendisse molestie felis a mauris cursus posuere.',
1,
1
);

INSERT INTO page VALUES (
nextval('public."page_seq"'),
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta in quam in porta. Nullam ullamcorper velit vel velit sagittis pellentesque. Aliquam varius diam vel odio rhoncus rutrum quis eu ligula. Donec sollicitudin volutpat eleifend. Sed semper vel mi vitae porta. Mauris congue, sem in porta fringilla, nisi risus cursus quam, at ultricies ante quam sit amet sem. Nunc eget vestibulum sapien, in sodales ipsum. In quis purus eu lorem suscipit pretium. Proin vulputate porttitor placerat.
Aenean non porta sapien, nec ultricies enim. Morbi nec elit urna. Proin rhoncus tortor velit, a dapibus sem volutpat id. Suspendisse vehicula et magna a feugiat. Etiam vel velit efficitur, rutrum mi in, maximus nunc. Nullam cursus, libero a posuere placerat, lacus magna maximus augue, a tempor nisl purus vitae neque. Nulla hendrerit sapien laoreet orci tempor pulvinar nec at enim. Aliquam sit amet tellus nulla. Sed a congue est. Curabitur at turpis ac nibh feugiat tristique ut non erat. Donec imperdiet orci quis lacus tincidunt, non ornare mauris lacinia. Nullam cursus lorem ac lacus viverra hendrerit. Cras fringilla elit ac libero euismod, eget porttitor mauris lobortis. Donec sed lobortis sapien, in pharetra ipsum.
Aliquam eget massa in sapien fermentum luctus non sit amet leo. Aliquam non dolor a quam bibendum luctus in at felis. Vivamus tincidunt felis eget sem laoreet dictum. Sed eleifend leo libero, non consectetur ligula blandit ac. Curabitur lobortis eros elit, eget sollicitudin justo eleifend sed. Phasellus ante tortor, vestibulum sit amet malesuada et, laoreet id purus. Suspendisse vulputate dapibus dolor sed aliquet. Curabitur sem diam, consequat in augue ac, viverra auctor metus. Maecenas vulputate velit urna, ac gravida sapien pulvinar non. Maecenas et venenatis eros. Quisque in fermentum leo, ultrices vehicula massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo quam, fermentum at nisl at, fermentum facilisis magna. Nulla congue tempor risus, at molestie tortor mollis pellentesque.
Cras lacus ex, mattis in viverra eget, auctor in ipsum. Suspendisse libero arcu, semper sed efficitur at, consectetur vitae mauris. Duis pharetra enim sit amet aliquet sagittis. Etiam nulla nibh, sodales non orci ac, lacinia ullamcorper nisi. Proin tempus orci in neque laoreet pharetra. Suspendisse non arcu lectus. Phasellus pharetra semper vestibulum. Aliquam condimentum sapien at erat interdum malesuada. Maecenas pellentesque dolor ante. Proin feugiat rhoncus nisl, at euismod sapien blandit eu. Sed consectetur dictum nisi, ac faucibus ipsum consectetur vel. Sed metus tortor, tempus quis nisi vestibulum, sodales maximus nibh.
Morbi posuere convallis nunc, in tincidunt ex auctor a. Morbi vitae nunc non mi faucibus blandit. Pellentesque nunc ligula, sagittis sit amet est in, cursus hendrerit augue. Nulla congue consectetur hendrerit. Integer quis velit sit amet eros lobortis interdum ac vitae lectus. Pellentesque quis velit sit amet quam dictum ornare. Suspendisse molestie felis a mauris cursus posuere.',
2,
1
);

INSERT INTO page VALUES (
nextval('public."page_seq"'),
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta in quam in porta. Nullam ullamcorper velit vel velit sagittis pellentesque. Aliquam varius diam vel odio rhoncus rutrum quis eu ligula. Donec sollicitudin volutpat eleifend. Sed semper vel mi vitae porta. Mauris congue, sem in porta fringilla, nisi risus cursus quam, at ultricies ante quam sit amet sem. Nunc eget vestibulum sapien, in sodales ipsum. In quis purus eu lorem suscipit pretium. Proin vulputate porttitor placerat.
Aenean non porta sapien, nec ultricies enim. Morbi nec elit urna. Proin rhoncus tortor velit, a dapibus sem volutpat id. Suspendisse vehicula et magna a feugiat. Etiam vel velit efficitur, rutrum mi in, maximus nunc. Nullam cursus, libero a posuere placerat, lacus magna maximus augue, a tempor nisl purus vitae neque. Nulla hendrerit sapien laoreet orci tempor pulvinar nec at enim. Aliquam sit amet tellus nulla. Sed a congue est. Curabitur at turpis ac nibh feugiat tristique ut non erat. Donec imperdiet orci quis lacus tincidunt, non ornare mauris lacinia. Nullam cursus lorem ac lacus viverra hendrerit. Cras fringilla elit ac libero euismod, eget porttitor mauris lobortis. Donec sed lobortis sapien, in pharetra ipsum.
Aliquam eget massa in sapien fermentum luctus non sit amet leo. Aliquam non dolor a quam bibendum luctus in at felis. Vivamus tincidunt felis eget sem laoreet dictum. Sed eleifend leo libero, non consectetur ligula blandit ac. Curabitur lobortis eros elit, eget sollicitudin justo eleifend sed. Phasellus ante tortor, vestibulum sit amet malesuada et, laoreet id purus. Suspendisse vulputate dapibus dolor sed aliquet. Curabitur sem diam, consequat in augue ac, viverra auctor metus. Maecenas vulputate velit urna, ac gravida sapien pulvinar non. Maecenas et venenatis eros. Quisque in fermentum leo, ultrices vehicula massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo quam, fermentum at nisl at, fermentum facilisis magna. Nulla congue tempor risus, at molestie tortor mollis pellentesque.
Cras lacus ex, mattis in viverra eget, auctor in ipsum. Suspendisse libero arcu, semper sed efficitur at, consectetur vitae mauris. Duis pharetra enim sit amet aliquet sagittis. Etiam nulla nibh, sodales non orci ac, lacinia ullamcorper nisi. Proin tempus orci in neque laoreet pharetra. Suspendisse non arcu lectus. Phasellus pharetra semper vestibulum. Aliquam condimentum sapien at erat interdum malesuada. Maecenas pellentesque dolor ante. Proin feugiat rhoncus nisl, at euismod sapien blandit eu. Sed consectetur dictum nisi, ac faucibus ipsum consectetur vel. Sed metus tortor, tempus quis nisi vestibulum, sodales maximus nibh.
Morbi posuere convallis nunc, in tincidunt ex auctor a. Morbi vitae nunc non mi faucibus blandit. Pellentesque nunc ligula, sagittis sit amet est in, cursus hendrerit augue. Nulla congue consectetur hendrerit. Integer quis velit sit amet eros lobortis interdum ac vitae lectus. Pellentesque quis velit sit amet quam dictum ornare. Suspendisse molestie felis a mauris cursus posuere.',
3,
1
);

INSERT INTO page VALUES (
nextval('public."page_seq"'),
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta in quam in porta. Nullam ullamcorper velit vel velit sagittis pellentesque. Aliquam varius diam vel odio rhoncus rutrum quis eu ligula. Donec sollicitudin volutpat eleifend. Sed semper vel mi vitae porta. Mauris congue, sem in porta fringilla, nisi risus cursus quam, at ultricies ante quam sit amet sem. Nunc eget vestibulum sapien, in sodales ipsum. In quis purus eu lorem suscipit pretium. Proin vulputate porttitor placerat.
Aenean non porta sapien, nec ultricies enim. Morbi nec elit urna. Proin rhoncus tortor velit, a dapibus sem volutpat id. Suspendisse vehicula et magna a feugiat. Etiam vel velit efficitur, rutrum mi in, maximus nunc. Nullam cursus, libero a posuere placerat, lacus magna maximus augue, a tempor nisl purus vitae neque. Nulla hendrerit sapien laoreet orci tempor pulvinar nec at enim. Aliquam sit amet tellus nulla. Sed a congue est. Curabitur at turpis ac nibh feugiat tristique ut non erat. Donec imperdiet orci quis lacus tincidunt, non ornare mauris lacinia. Nullam cursus lorem ac lacus viverra hendrerit. Cras fringilla elit ac libero euismod, eget porttitor mauris lobortis. Donec sed lobortis sapien, in pharetra ipsum.
Aliquam eget massa in sapien fermentum luctus non sit amet leo. Aliquam non dolor a quam bibendum luctus in at felis. Vivamus tincidunt felis eget sem laoreet dictum. Sed eleifend leo libero, non consectetur ligula blandit ac. Curabitur lobortis eros elit, eget sollicitudin justo eleifend sed. Phasellus ante tortor, vestibulum sit amet malesuada et, laoreet id purus. Suspendisse vulputate dapibus dolor sed aliquet. Curabitur sem diam, consequat in augue ac, viverra auctor metus. Maecenas vulputate velit urna, ac gravida sapien pulvinar non. Maecenas et venenatis eros. Quisque in fermentum leo, ultrices vehicula massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo quam, fermentum at nisl at, fermentum facilisis magna. Nulla congue tempor risus, at molestie tortor mollis pellentesque.
Cras lacus ex, mattis in viverra eget, auctor in ipsum. Suspendisse libero arcu, semper sed efficitur at, consectetur vitae mauris. Duis pharetra enim sit amet aliquet sagittis. Etiam nulla nibh, sodales non orci ac, lacinia ullamcorper nisi. Proin tempus orci in neque laoreet pharetra. Suspendisse non arcu lectus. Phasellus pharetra semper vestibulum. Aliquam condimentum sapien at erat interdum malesuada. Maecenas pellentesque dolor ante. Proin feugiat rhoncus nisl, at euismod sapien blandit eu. Sed consectetur dictum nisi, ac faucibus ipsum consectetur vel. Sed metus tortor, tempus quis nisi vestibulum, sodales maximus nibh.
Morbi posuere convallis nunc, in tincidunt ex auctor a. Morbi vitae nunc non mi faucibus blandit. Pellentesque nunc ligula, sagittis sit amet est in, cursus hendrerit augue. Nulla congue consectetur hendrerit. Integer quis velit sit amet eros lobortis interdum ac vitae lectus. Pellentesque quis velit sit amet quam dictum ornare. Suspendisse molestie felis a mauris cursus posuere.',
1,
2
);

INSERT INTO page VALUES (
nextval('public."page_seq"'),
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porta in quam in porta. Nullam ullamcorper velit vel velit sagittis pellentesque. Aliquam varius diam vel odio rhoncus rutrum quis eu ligula. Donec sollicitudin volutpat eleifend. Sed semper vel mi vitae porta. Mauris congue, sem in porta fringilla, nisi risus cursus quam, at ultricies ante quam sit amet sem. Nunc eget vestibulum sapien, in sodales ipsum. In quis purus eu lorem suscipit pretium. Proin vulputate porttitor placerat.
Aenean non porta sapien, nec ultricies enim. Morbi nec elit urna. Proin rhoncus tortor velit, a dapibus sem volutpat id. Suspendisse vehicula et magna a feugiat. Etiam vel velit efficitur, rutrum mi in, maximus nunc. Nullam cursus, libero a posuere placerat, lacus magna maximus augue, a tempor nisl purus vitae neque. Nulla hendrerit sapien laoreet orci tempor pulvinar nec at enim. Aliquam sit amet tellus nulla. Sed a congue est. Curabitur at turpis ac nibh feugiat tristique ut non erat. Donec imperdiet orci quis lacus tincidunt, non ornare mauris lacinia. Nullam cursus lorem ac lacus viverra hendrerit. Cras fringilla elit ac libero euismod, eget porttitor mauris lobortis. Donec sed lobortis sapien, in pharetra ipsum.
Aliquam eget massa in sapien fermentum luctus non sit amet leo. Aliquam non dolor a quam bibendum luctus in at felis. Vivamus tincidunt felis eget sem laoreet dictum. Sed eleifend leo libero, non consectetur ligula blandit ac. Curabitur lobortis eros elit, eget sollicitudin justo eleifend sed. Phasellus ante tortor, vestibulum sit amet malesuada et, laoreet id purus. Suspendisse vulputate dapibus dolor sed aliquet. Curabitur sem diam, consequat in augue ac, viverra auctor metus. Maecenas vulputate velit urna, ac gravida sapien pulvinar non. Maecenas et venenatis eros. Quisque in fermentum leo, ultrices vehicula massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo quam, fermentum at nisl at, fermentum facilisis magna. Nulla congue tempor risus, at molestie tortor mollis pellentesque.
Cras lacus ex, mattis in viverra eget, auctor in ipsum. Suspendisse libero arcu, semper sed efficitur at, consectetur vitae mauris. Duis pharetra enim sit amet aliquet sagittis. Etiam nulla nibh, sodales non orci ac, lacinia ullamcorper nisi. Proin tempus orci in neque laoreet pharetra. Suspendisse non arcu lectus. Phasellus pharetra semper vestibulum. Aliquam condimentum sapien at erat interdum malesuada. Maecenas pellentesque dolor ante. Proin feugiat rhoncus nisl, at euismod sapien blandit eu. Sed consectetur dictum nisi, ac faucibus ipsum consectetur vel. Sed metus tortor, tempus quis nisi vestibulum, sodales maximus nibh.
Morbi posuere convallis nunc, in tincidunt ex auctor a. Morbi vitae nunc non mi faucibus blandit. Pellentesque nunc ligula, sagittis sit amet est in, cursus hendrerit augue. Nulla congue consectetur hendrerit. Integer quis velit sit amet eros lobortis interdum ac vitae lectus. Pellentesque quis velit sit amet quam dictum ornare. Suspendisse molestie felis a mauris cursus posuere.',
1,
3
);
