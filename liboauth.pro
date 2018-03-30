TEMPLATE = lib

TARGET = oauth

isEmpty(CURRENT_RPATH_DIR) {
    target.path = /usr/lib
} else {
    message("$$TARGET QMAKE_RPATHDIR and path is set to $$CURRENT_RPATH_DIR")
    target.path = $$CURRENT_RPATH_DIR
    QMAKE_RPATHDIR += $$INSTALL_ROOT$$CURRENT_RPATH_DIR
}
VERSION = 1.0.3
INSTALLS += target

CONFIG += plugin link_pkgconfig
PKGCONFIG += libcrypto

QMAKE_CFLAGS += -fPIC -DPIC
QMAKE_CXXFLAGS += -fPIC -DPIC

SOURCES += $$files($$PWD/src/*.c)
HEADERS += $$files($$PWD/src/*.h)

