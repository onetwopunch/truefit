
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(DESTDIR)/usr
vendorlibdir = $(vendordir)/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
libexecdir = $(DESTDIR)/usr/libexec
libdir = $(DESTDIR)/usr/lib
dvidir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)
pdfdir = $(docdir)
localstatedir = $(DESTDIR)/usr/var
mandir = $(DESTDIR)/usr/man
includedir = $(DESTDIR)/usr/include
archdir = $(rubylibdir)/$(arch)
datadir = $(DESTDIR)/usr/share
oldincludedir = $(DESTDIR)/usr/include
vendordir = $(libdir)/ruby/vendor_ruby
docdir = $(datarootdir)/doc/$(PACKAGE)
sitearchdir = $(sitelibdir)/$(sitearch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
infodir = $(DESTDIR)/usr/info
bindir = $(DESTDIR)/usr/bin
htmldir = $(docdir)
localedir = $(datarootdir)/locale
sbindir = $(DESTDIR)/usr/sbin
psdir = $(docdir)
datarootdir = $(prefix)/share
sitelibdir = $(sitedir)/$(ruby_version)
sysconfdir = $(DESTDIR)/etc
sharedstatedir = $(DESTDIR)/usr/com

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -g -m64 -mtune=generic -Wall -fno-strict-aliasing  -fPIC $(cflags) 
INCFLAGS = -I. -I/home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/libv8-3.3.10.4-x86_64-linux/lib/libv8/v8/include -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   $(DEFS) $(cppflags) -Wall -g -rdynamic
CXXFLAGS = $(CFLAGS) 
ldflags  = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/libv8-3.3.10.4-x86_64-linux/lib/libv8/build/v8/libv8.a -L.  -rdynamic -Wl,-export-dynamic
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
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lrt -ldl -lcrypt -lm   -lc -lpthread
SRCS = v8_function.cpp v8.cpp v8_callbacks.cpp v8_date.cpp v8_context.cpp v8_v8.cpp v8_locker.cpp v8_string.cpp v8_value.cpp rr.cpp v8_debug.cpp v8_handle.cpp v8_exception.cpp v8_template.cpp v8_message.cpp v8_object.cpp v8_weakref.cpp v8_try_catch.cpp v8_external.cpp v8_script.cpp v8_array.cpp
OBJS = v8_function.o v8.o v8_callbacks.o v8_date.o v8_context.o v8_v8.o v8_locker.o v8_string.o v8_value.o rr.o v8_debug.o v8_handle.o v8_exception.o v8_template.o v8_message.o v8_object.o v8_weakref.o v8_try_catch.o v8_external.o v8_script.o v8_array.o
TARGET = v8
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)
RUBYARCHDIR = /home/truefitt/truefit/vendor/bundle/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)

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
