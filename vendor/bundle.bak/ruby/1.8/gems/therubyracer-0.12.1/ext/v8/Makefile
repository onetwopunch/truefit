
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(DESTDIR)/usr
datarootdir = $(prefix)/share
pdfdir = $(docdir)
psdir = $(docdir)
vendorlibdir = $(vendordir)/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
libdir = $(DESTDIR)/usr/lib
sysconfdir = $(DESTDIR)/etc
sitelibdir = $(sitedir)/$(ruby_version)
sharedstatedir = $(DESTDIR)/usr/com
localstatedir = $(DESTDIR)/usr/var
bindir = $(DESTDIR)/usr/bin
sitearchdir = $(sitelibdir)/$(sitearch)
dvidir = $(docdir)
mandir = $(DESTDIR)/usr/man
sbindir = $(DESTDIR)/usr/sbin
vendorarchdir = $(vendorlibdir)/$(sitearch)
localedir = $(datarootdir)/locale
oldincludedir = $(DESTDIR)/usr/include
infodir = $(DESTDIR)/usr/info
datadir = $(DESTDIR)/usr/share
htmldir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
includedir = $(DESTDIR)/usr/include
libexecdir = $(DESTDIR)/usr/libexec
docdir = $(datarootdir)/doc/$(PACKAGE)
archdir = $(rubylibdir)/$(arch)
rubylibdir = $(libdir)/ruby/$(ruby_version)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -g -m64 -mtune=generic -Wall -fno-strict-aliasing  -fPIC $(cflags) 
INCFLAGS = -I. -I/home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/libv8-3.16.14.3-x86_64-linux/vendor/v8/include -I. -I/usr/lib/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS =     -Wall -g -rdynamic
CXXFLAGS = $(CFLAGS) 
ldflags  = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/libv8-3.16.14.3-x86_64-linux/vendor/v8/out/x64.release/obj.target/tools/gyp/libv8_base.a /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/libv8-3.16.14.3-x86_64-linux/vendor/v8/out/x64.release/obj.target/tools/gyp/libv8_snapshot.a -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CXX) -shared
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
target_prefix = /v8
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lpthread  -lrt -ldl -lcrypt -lm   -lc
SRCS = trycatch.cc stack.cc message.cc array.cc init.cc script.cc constants.cc v8.cc constraints.cc template.cc string.cc context.cc heap.cc locker.cc rr.cc external.cc signature.cc object.cc function.cc primitive.cc accessor.cc handles.cc date.cc backref.cc gc.cc invocation.cc exception.cc value.cc
OBJS = trycatch.o stack.o message.o array.o init.o script.o constants.o v8.o constraints.o template.o string.o context.o heap.o locker.o rr.o external.o signature.o object.o function.o primitive.o accessor.o handles.o date.o backref.o gc.o invocation.o exception.o value.o
TARGET = init
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/therubyracer-0.12.1/lib$(target_prefix)
RUBYARCHDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/therubyracer-0.12.1/lib$(target_prefix)

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
