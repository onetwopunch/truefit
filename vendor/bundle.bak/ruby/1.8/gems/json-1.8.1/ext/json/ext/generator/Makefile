
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(DESTDIR)/usr
psdir = $(docdir)
sbindir = $(DESTDIR)/usr/sbin
sitelibdir = $(sitedir)/$(ruby_version)
vendordir = $(libdir)/ruby/vendor_ruby
oldincludedir = $(DESTDIR)/usr/include
localedir = $(datarootdir)/locale
vendorlibdir = $(vendordir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
archdir = $(rubylibdir)/$(arch)
vendorarchdir = $(vendorlibdir)/$(sitearch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
htmldir = $(docdir)
sysconfdir = $(DESTDIR)/etc
libdir = $(DESTDIR)/usr/lib
sharedstatedir = $(DESTDIR)/usr/com
datadir = $(DESTDIR)/usr/share
localstatedir = $(DESTDIR)/usr/var
docdir = $(datarootdir)/doc/$(PACKAGE)
infodir = $(DESTDIR)/usr/info
pdfdir = $(docdir)
datarootdir = $(prefix)/share
libexecdir = $(DESTDIR)/usr/libexec
bindir = $(DESTDIR)/usr/bin
includedir = $(DESTDIR)/usr/include
mandir = $(DESTDIR)/usr/man
dvidir = $(docdir)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -g -m64 -mtune=generic -Wall -fno-strict-aliasing  -fPIC $(cflags) -O3 -Wall -O0 -ggdb 
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS = -DJSON_GENERATOR  $(DEFS) $(cppflags)
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
target_prefix = /json/ext
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lrt -ldl -lcrypt -lm   -lc
SRCS = generator.c
OBJS = generator.o
TARGET = generator
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/json-1.8.1/lib$(target_prefix)
RUBYARCHDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/json-1.8.1/lib$(target_prefix)

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



###
generator.o: generator.c generator.h $(srcdir)/../fbuffer/fbuffer.h
