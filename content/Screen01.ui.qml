import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import Task37_3RemContrl

Rectangle {
    id: _rectangle
    property int countTime: 0
    property int count: 0
    property bool start: false
    width: 240
    height: 680
    color: "#bce3ef"
    z: -1
    Layout.minimumHeight: 680
    Layout.minimumWidth: 240
    //
    RowLayout {
        id: _topLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.rightMargin: 0
        anchors.leftMargin: 15
        spacing: 10

        Button {
            id: _on
            property bool remoteOn: false
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/B_on.png"
                anchors.leftMargin: 5
                anchors.topMargin: 5
                opacity: _on.down ? 0.75 : 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _on
                onClicked: {
                    if (!_on.remoteOn) {
                        _on.remoteOn = true
                        _time.visible = true
                        _viewer.visible = true
                        _viewer.text = "ch 1"
                        _volume.visible = true
                        _volume.text = "Volume: 50%"
                        _display.color = "#e7033614"
                    } else {
                        _on.remoteOn = false
                        _time.visible = false
                        _viewer.visible = false
                        _volume.visible = false
                        _viewer2.visible = false
                        _display.color = _rectangle.color
                    }
                }
            }
        }
    }

    Grid {
        id: grid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: _topLayout.bottom
        anchors.rightMargin: 15
        anchors.leftMargin: 15
        anchors.topMargin: 15
        spacing: 10
        columns: 3
        //------------------------
        Button {
            id: _b1
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num1_32.png"
                opacity: _b1.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b1
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "1"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "1"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b2
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num2_32.png"
                opacity: _b2.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b2
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "2"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "2"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b3
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num3_32.png"
                opacity: _b3.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b3
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "3"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "3"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b4
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num4_32.png"
                opacity: _b4.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b4
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "4"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "4"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b5
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num5_32.png"
                opacity: _b5.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b5
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "5"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "5"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b6
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num6_32.png"
                opacity: _b6.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _b6
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "6"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "6"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b7
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num7_32.png"
                opacity: _b7.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _b7
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "7"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "7"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b8
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num8_32.png"
                opacity: _b8.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _b8
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "8"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "8"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _b9
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num9_32.png"
                opacity: _b9.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _b9
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "9"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "9"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _bVolUp
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/VolUp32.png"
                opacity: _bVolUp.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _bVolUp
                onClicked: {
                    if (_glob.volumes < 100)
                        _glob.volumes += 10
                    _volume.text = "Volume: " + _glob.volumes + "%"
                }
            }
        }
        //------------------------
        Button {
            id: _b0
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/Num0_32.png"
                opacity: _b0.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }
            Connections {
                target: _b0
                onClicked: {
                    if (!start) {
                        start = true
                        countTime = 0
                        count = 1
                        _viewer2.text = _viewer.text
                        _viewer2.visible = true
                        _viewer.text = "0"
                    } else if(count < 3) {
                        count++
                        _viewer.text += "0"
                    }
                    _glob.channel = Number(_viewer.text)
                }
            }
        }
        //------------------------
        Button {
            id: _bVolDn
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/VolDown.png"
                opacity: _bVolDn.down ? 0.75 : 1
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _bVolDn
                onClicked: {
                    if (_glob.volumes > 0)
                        _glob.volumes -= 10
                    _volume.text = "Volume: " + _glob.volumes + "%"
                }
            }
        }
        //------------------------
    } //end grid
    RowLayout {
        id: _bottomLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: grid.bottom
        anchors.topMargin: 15
        anchors.rightMargin: 15
        anchors.leftMargin: 15
        spacing: 10

        Button {
            id: _chUp
            property bool remoteOn: false
            width: 64
            height: 64
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/StrTop32.png"
                anchors.leftMargin: 5
                anchors.topMargin: 5
                opacity: _chUp.down ? 0.75 : 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _chUp
                onClicked: {
                    if (start) {
                        _viewer.text = _viewer2.text
                        _viewer2.visible = false
                        start = false
                        countTime = 0
                        count = 0
                    }
                    if (_glob.channel < 999) {
                        _glob.channel += 1
                    } else {
                        _glob.channel = 1
                    }
                    _viewer.text = "ch " + _glob.channel
                }
            }
        }
        //------------------------
        Button {
            id: _chDn
            property bool remoteOn: false
            width: 64
            height: 64
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.minimumWidth: 64
            Layout.minimumHeight: 64
            Layout.maximumHeight: 64
            Layout.maximumWidth: 64

            display: AbstractButton.IconOnly
            highlighted: true
            background: Rectangle {
                implicitHeight: 56
                implicitWidth: 56
                border.width: 4
                z: 1
                radius: 12
                opacity: enabled ? 1 : 0.8
                border.color: _rectangle.color
                color: "#00815a5a"
            }
            contentItem: BorderImage {
                source: "../Icons/StrBott32.png"
                anchors.leftMargin: 5
                anchors.topMargin: 5
                opacity: _chDn.down ? 0.75 : 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                scale: 1
            }

            Connections {
                target: _chDn
                onClicked: {
                    if (start) {
                        _viewer.text = _viewer2.text
                        _viewer2.visible = false
                        start = false
                        countTime = 0
                        count = 0
                    }
                    if (_glob.channel > 1) {
                        _glob.channel -= 1
                    } else {
                        _glob.channel = 999
                    }
                    _viewer.text = "ch " + _glob.channel
                }
            }
        }
    }
    //------------------------
    Rectangle {
        id: _display
        height: 180
        anchors.bottom: parent.bottom
        anchors.leftMargin: 15
        anchors.rightMargin: 15
        anchors.bottomMargin: 15
        color: parent.color
        border.color: "#05120b"
        anchors.left: parent.left
        anchors.right: parent.right
        border.width: 3
        radius: 6
        z: 0
        visible: true
        Text {
            id: _viewer
            color: "#e756d51d"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            text: "ch 1"

            font.family: "Arial"
            font.styleName: "Полужирный"
            font.pointSize: 46
            visible: false
        }

        Text {
            id: _volume
            color: "#e756d51d"
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            anchors.leftMargin: 10
            anchors.topMargin: 10
            text: "Volume: 50%"
            anchors.left: parent.left

            font.family: "Arial"
            font.styleName: "Полужирный"
            font.pointSize: 18
            visible: false
        }

        Text {
            id: _time
            color: "#e756d51d"
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            layer.textureMirroring: ShaderEffectSource.NoMirroring
            layer.wrapMode: ShaderEffectSource.ClampToEdge
            textFormat: Text.PlainText
            anchors.bottomMargin: 10
            anchors.leftMargin: 10
            text: _glob.clocks
            elide: Text.ElideRight
            anchors.left: parent.left

            font.family: "Arial"
            font.styleName: "Полужирный"
            font.pointSize: 18
            visible: false

            Connections {
                target: _time
                onTextChanged: {
                    if (start && countTime < 5 && count < 3) {
                        countTime++
                    } else {
                        _rectangle.countTime = 0
                        _rectangle.start = false
                        _viewer2.text = ""
                        _viewer2.visible = false
                        if(_glob.channel == 0) _glob.channel = 1
                        _viewer.text = "ch " + _glob.channel
                    }
                }
            }
        }

        Text {
            id: _viewer2
            color: "#e756d51d"
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 10
            layer.textureMirroring: ShaderEffectSource.NoMirroring
            layer.wrapMode: ShaderEffectSource.ClampToEdge
            textFormat: Text.PlainText
            anchors.bottomMargin: 10
            text: ""
            elide: Text.ElideRight
            anchors.right: parent.right

            font.family: "Arial"
            font.styleName: "Полужирный"
            font.pointSize: 18
            visible: false
        }
    }
}
