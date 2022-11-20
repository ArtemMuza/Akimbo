import QtQuick

Window {
    id: root
    width: 1200
    height: 720
    visible: true
    title: qsTr("Akimbo")

    RenderArea {
        id: renderArea
        width: root.width
        height: root.height/1.4
    }
    FormulaInput {
        id: formulaInput
        width: root.width - root.width/5
        height: root.height/5
        anchors.top: renderArea.bottom
    }
    ChatArea {
        width: root.width/5
        height: root.height/5
        anchors.left: formulaInput.right
        anchors.top: renderArea.bottom
    }
    ButtonArea {
        width: root.width
        height: root.height - renderArea.height - formulaInput.height
        anchors.top: formulaInput.bottom
    }
}
