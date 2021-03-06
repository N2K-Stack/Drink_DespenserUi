import QtQuick 2.0

Rectangle {
    id: statusbar

    color: "black"
    radius: 5
    width: 726
    height: 51

    Rectangle {
        id: notificationBadge
        height: 40
        width: 40
        radius: 20
        color: "white"

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 10
        }

        Text {
            id: notificationBadgeText
            anchors.centerIn: parent
            font.pixelSize: 24
            color: "black"
            text: "3"
        }
    }


    Text {
        id: timeText

        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 36
        text: "12:12 PM"  // get it from C++
    }

    Image {
        id: wifiSymbol

        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 10
        }

        width: 40
        height: 40
        source: "qrc:/UI/Assets/wifi.png"
    }

}
