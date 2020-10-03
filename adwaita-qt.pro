TARGET = adwaita-qt
TEMPLATE = lib
CONFIG += staticlib
QT     += core gui dbus widgets

CONFIG += c++11

#define ADWAITA_USE_KDE4 0
#define ADWAITA_HAVE_X11 0

unix {
    target.path = /usr/lib
}
else: error("Static linking only available on Linux systems")

!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += src/lib \
               src/style

HEADERS += \
    src/lib/adwaita.h \
    src/lib/adwaitaaddeventfilter.h \
    src/lib/adwaitacolors.h \
    src/lib/adwaitadebug.h \
    src/lib/adwaitamnemonics.h \
    src/lib/adwaitaqt_export.h \
    src/lib/adwaitasplitterproxy.h \
    src/lib/adwaitawidgetexplorer.h \
    src/lib/adwaitawindowmanager.h \
    src/lib/animations/adwaitaanimation.h \
    src/lib/animations/adwaitaanimationdata.h \
    src/lib/animations/adwaitaanimations.h \
    src/lib/animations/adwaitabaseengine.h \
    src/lib/animations/adwaitabusyindicatordata.h \
    src/lib/animations/adwaitabusyindicatorengine.h \
    src/lib/animations/adwaitadatamap.h \
    src/lib/animations/adwaitadialdata.h \
    src/lib/animations/adwaitadialengine.h \
    src/lib/animations/adwaitaenabledata.h \
    src/lib/animations/adwaitagenericdata.h \
    src/lib/animations/adwaitaheaderviewdata.h \
    src/lib/animations/adwaitaheaderviewengine.h \
    src/lib/animations/adwaitascrollbardata.h \
    src/lib/animations/adwaitascrollbarengine.h \
    src/lib/animations/adwaitaspinboxdata.h \
    src/lib/animations/adwaitaspinboxengine.h \
    src/lib/animations/adwaitastackedwidgetdata.h \
    src/lib/animations/adwaitastackedwidgetengine.h \
    src/lib/animations/adwaitatabbardata.h \
    src/lib/animations/adwaitatabbarengine.h \
    src/lib/animations/adwaitatoolboxengine.h \
    src/lib/animations/adwaitatransitiondata.h \
    src/lib/animations/adwaitatransitionwidget.h \
    src/lib/animations/adwaitawidgetstatedata.h \
    src/lib/animations/adwaitawidgetstateengine.h \
    src/style/adwaitahelper.h \
    src/style/adwaitastyle.h \
    src/style/adwaitastyleplugin.h

SOURCES += \
    src/lib/adwaita.cpp \
    src/lib/adwaitaaddeventfilter.cpp \
    src/lib/adwaitacolors.cpp \
    src/lib/adwaitamnemonics.cpp \
    src/lib/adwaitasplitterproxy.cpp \
    src/lib/adwaitawidgetexplorer.cpp \
    src/lib/adwaitawindowmanager.cpp \
    src/lib/animations/adwaitaanimation.cpp \
    src/lib/animations/adwaitaanimationdata.cpp \
    src/lib/animations/adwaitaanimations.cpp \
    src/lib/animations/adwaitabaseengine.cpp \
    src/lib/animations/adwaitabusyindicatordata.cpp \
    src/lib/animations/adwaitabusyindicatorengine.cpp \
    src/lib/animations/adwaitadialdata.cpp \
    src/lib/animations/adwaitadialengine.cpp \
    src/lib/animations/adwaitaenabledata.cpp \
    src/lib/animations/adwaitagenericdata.cpp \
    src/lib/animations/adwaitaheaderviewdata.cpp \
    src/lib/animations/adwaitaheaderviewengine.cpp \
    src/lib/animations/adwaitascrollbardata.cpp \
    src/lib/animations/adwaitascrollbarengine.cpp \
    src/lib/animations/adwaitaspinboxdata.cpp \
    src/lib/animations/adwaitaspinboxengine.cpp \
    src/lib/animations/adwaitastackedwidgetdata.cpp \
    src/lib/animations/adwaitastackedwidgetengine.cpp \
    src/lib/animations/adwaitatabbardata.cpp \
    src/lib/animations/adwaitatabbarengine.cpp \
    src/lib/animations/adwaitatoolboxengine.cpp \
    src/lib/animations/adwaitatransitiondata.cpp \
    src/lib/animations/adwaitatransitionwidget.cpp \
    src/lib/animations/adwaitawidgetstatedata.cpp \
    src/lib/animations/adwaitawidgetstateengine.cpp \
    src/style/adwaitahelper.cpp \
    src/style/adwaitastyle.cpp \
    src/style/adwaitastyleplugin.cpp

