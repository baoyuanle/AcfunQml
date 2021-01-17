﻿import QtQuick 2.12
import QtQuick.Controls 2.12
import "qrc:///ui/components/"
import "qrc:///ui/global/"
import "qrc:///ui/global/styles/"

Item {
    id:root
    width: 190
    height: 120

    property var infoJs: ({})

    AutoImage {
        id:imgCover
        anchors.fill: parent
        source: infoJs.coverUrl

        Row{
            anchors.left: parent.left
            anchors.leftMargin: 4
            anchors.top: parent.top
            anchors.topMargin: 4
            spacing: 4
            visible: infoJs.noStow === undefined
            Image {
                height: textStowCnt.height
                width: height
                sourceSize: Qt.size(width, height)
                source: "qrc:/assets/img/common/stow.png"
            }
            Text {
                id:textStowCnt
                color: "#fff"
                font.pointSize: AppStyle.font_normal
                font.family: AppStyle.fontNameMain
                text: infoJs.noStow ? "":infoJs.bangumiStowCount
            }
        }
        RectBackLabel {
            anchors.right: parent.right
            anchors.rightMargin: 4
            anchors.top: parent.top
            anchors.topMargin: 4
            height: 16
            color: "#fff"
            clr: "#ffb835"
            bkColor: clr
            visible: infoJs.bangumiPaymentType ? infoJs.bangumiPaymentType.value !== 0 : false
            text: infoJs.bangumiPaymentType ? infoJs.bangumiPaymentType.name : ""
        }

        Text {
            anchors.left: parent.left
            anchors.leftMargin: 4
            anchors.right: parent.right
            anchors.rightMargin: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            font.pointSize: AppStyle.font_normal
            font.family: AppStyle.fontNameMain
            font.bold: true
            color: "#fff"
            wrapMode: Text.WordWrap
            text: infoJs.title
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Global.openVideo({
                                 vid          : infoJs.videoId,
                                 contentId    : infoJs.href,
                                 contentType  : 1
                             })
        }
    }
}
