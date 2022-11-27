QT += quick

SOURCES += \
        main.cpp \
        render.cpp

DISTFILES += \
        ButtonArea.qml \
        ChatArea.qml \
        FormulaInput.qml \
        RenderArea.qml
resources.files = \
            main.qml $${DISTFILES}

resources.prefix = /$${TARGET}
RESOURCES += resources \
    res.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    render.h

CONFIG += qmltypes
QML_IMPORT_NAME = Render
QML_IMPORT_MAJOR_VERSION = 1


