import QtQuick
import Render 1.0

Rectangle {

    id: root

    color: "#FFFFFF"

    border {
        color: "#000000"
        width: 2
    }
    Render {
            SequentialAnimation on t {
                NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
                NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
                loops: Animation.Infinite
                running: true
            }
        }

}
