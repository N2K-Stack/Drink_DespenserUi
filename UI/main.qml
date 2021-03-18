import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import Systemcontroller 1.0

Window {
    width: 1024
    height: 680
    visible: true
    title: qsTr("CoffeeSodaDispenser")

    Systemcontrol {
        id: systemcontroller
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "HotColdSelectionPage.qml"
    }

    Statusbar {
        id: statusbar
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
    }
}
