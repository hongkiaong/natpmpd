#	$Id$

PROG=	natpmpd
SRCS=	natpmpd.c log.c parse.y filter.c
CFLAGS+= -Wall -I${.CURDIR}
CFLAGS+= -Wstrict-prototypes -Wmissing-prototypes
CFLAGS+= -Wmissing-declarations
CFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual
CFLAGS+= -Wsign-compare
YFLAGS=
LDADD+= -levent
DPADD+= ${LIBEVENT}
MAN=	natpmpd.8 natpmpd.conf.5

.include <bsd.prog.mk>
