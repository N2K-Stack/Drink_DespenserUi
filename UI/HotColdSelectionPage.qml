import QtQuick 2.0

Item {

    Rectangle {
        id: hotRectangle
        height: parent.height
        width: parent.width / 2

        anchors {
            top: parent.top
            left: parent.left
        }
        color: "#EE1C25"

        Image {
            id: hotImage
            width: 256
            height: 256
            anchors.centerIn: parent
            source: "qrc:/UI/Assets/hot.png"
        }

        Text {
            id: hotRectText
            anchors {
                top: hotImage.bottom
                topMargin: 40
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 96
            font.bold: true
            color: "#F69678"
            text: "Hot"
        }
    }


    Rectangle {
        id: coldRectangle
        height: parent.height
        width: parent.width / 2

        anchors {
            top: parent.top
            right: parent.right
        }
        color: "#1BA6DF"

        Image {
            id: coldImage
            width: 256
            height: 256
            anchors.centerIn: parent
            source: "qrc:/UI/Assets/snowflake.png"
        }

        Text {
            id: coldRectText
            anchors {
                top: coldImage.bottom
                topMargin: 40
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 96
            font.bold: true
            color: "#9ECCED"
            text: "Cold"
        }

    }

}
