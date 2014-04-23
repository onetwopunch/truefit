
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(DESTDIR)/usr
prefix = $(DESTDIR)/usr
sbindir = $(DESTDIR)/usr/sbin
htmldir = $(docdir)
vendorlibdir = $(vendordir)/$(ruby_version)
sitelibdir = $(sitedir)/$(ruby_version)
localstatedir = $(DESTDIR)/usr/var
dvidir = $(docdir)
mandir = $(DESTDIR)/usr/man
datadir = $(DESTDIR)/usr/share
psdir = $(docdir)
pdfdir = $(docdir)
infodir = $(DESTDIR)/usr/info
sitedir = $(libdir)/ruby/site_ruby
datarootdir = $(prefix)/share
includedir = $(DESTDIR)/usr/include
oldincludedir = $(DESTDIR)/usr/include
vendordir = $(libdir)/ruby/vendor_ruby
vendorarchdir = $(vendorlibdir)/$(sitearch)
bindir = $(DESTDIR)/usr/bin
rubylibdir = $(libdir)/ruby/$(ruby_version)
libdir = $(DESTDIR)/usr/lib
libexecdir = $(DESTDIR)/usr/libexec
localedir = $(datarootdir)/locale
archdir = $(rubylibdir)/$(arch)
docdir = $(datarootdir)/doc/$(PACKAGE)
sharedstatedir = $(DESTDIR)/usr/com
sysconfdir = $(DESTDIR)/etc
sitearchdir = $(sitelibdir)/$(sitearch)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -g -m64 -mtune=generic -Wall -fno-strict-aliasing  -fPIC $(cflags) 
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS = -DHAVE_TYPE_CLOCKID_T -DHAVE_POLL -DHAVE_GETADDRINFO -DHAVE_GETNAMEINFO -DHAVE_TYPE_STRUCT_SOCKADDR_STORAGE -DHAVE_SYS_SELECT_H -DHAVE_WRITEV -DHAVE_TYPE_OPENFILE -DHAVE_ST_F -DHAVE_ST_F2 -DHAVE_ST_MODE -DHAVE_ST_PATH -DHAVE_RB_FDOPEN -DHAVE_TYPE_STRUCT_RFILE -DSIZEOF_STRUCT_RFILE=24 -DSIZEOF_INT=4 -DHAVE_RB_STR_SET_LEN -DHAVE_RB_TIME_INTERVAL    -D_GNU_SOURCE -DPOSIX_C_SOURCE=1-D_POSIX_C_SOURCE=200112L
CXXFLAGS = $(CFLAGS) 
ldflags  = -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = x86_64-linux
sitearch = x86_64-linux
ruby_version = 1.8
ruby = /usr/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lrt  -lrt -ldl -lcrypt -lm   -lc
SRCS = accept.c writev.c tryopen.c autopush.c poll.c wait.c connect.c kgio_ext.c read.c write.c
OBJS = accept.o writev.o tryopen.o autopush.o poll.o wait.o connect.o kgio_ext.o read.o write.o
TARGET = kgio_ext
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/kgio-2.9.2/lib$(target_prefix)
RUBYARCHDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/kgio-2.9.2/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
