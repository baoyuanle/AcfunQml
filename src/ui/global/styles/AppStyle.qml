﻿pragma Singleton
import QtQuick 2.12

QtObject {
    // Global colors
    property color primaryColor: "#fd4c5c"
    property color accentColor: "#00a1d6"
    property color warningColor: "#FF5722"
    property color errorColor: "#F44336"
    property color successColor: "#4CAF50"
    property color backgroundColor: "#FFFFFF"
    property color secondBkgroundColor: "#f1f6fa"
    property color thirdBkgroundColor: "#dee5eb"
    property color foregroundColor: "#000000"
    property color secondForeColor: "#2e2f33"
    property color thirdForeColor: "#999999"
    property color transparent: "transparent"

    property int currentTheme: 0
    onCurrentThemeChanged: {
        var t = themes.get(currentTheme)
        primaryColor = t.primaryColor
        accentColor = t.accentColor
        warningColor = t.warningColor
        errorColor = t.errorColor
        successColor = t.successColor
        backgroundColor = t.backgroundColor
        secondBkgroundColor = t.secondBkgroundColor
        thirdBkgroundColor = t.thirdBkgroundColor
        foregroundColor = t.foregroundColor
        secondForeColor = t.secondForeColor
        transparent = t.transparent
    }
    readonly property ListModel themes: ListModel {
        ListElement {
            name: qsTr("白昼主题")
            primaryColor: "#fd4c5c"
            accentColor: "#00a1d6"
            warningColor: "#FF5722"
            errorColor: "#F44336"
            successColor: "#4CAF50"
            backgroundColor: "#FFFFFF"
            secondBkgroundColor: "#f1f6fa"
            thirdBkgroundColor: "#dee5eb"
            foregroundColor: "#000000"
            secondForeColor: "#3e3e3e"
            transparent: "transparent"
        }
        ListElement {
            name: qsTr("暗夜主题")
            primaryColor: "#fd4c5c"
            accentColor: "#00a1d6"
            warningColor: "#FF5722"
            errorColor: "#F44336"
            successColor: "#4CAF50"
            backgroundColor: "#1c1c1c"
            secondBkgroundColor: "#29292a"
            thirdBkgroundColor: "#dee5eb"
            foregroundColor: "#FFFFFF"
            secondForeColor: "#dddddd"
            transparent: "transparent"
        }
    }

    property int sliderBarWidth: 6
    property real scale: 1.0

    // display z
    property int danmakuZ: 10
    property int busyZ: 20
    property int msgZ: 30

    // device breakpoints
    property int bp_xs: 560
    property int bp_sm: 960
    property int bp_md: 1264
    property int bp_lg: 1904

//    TextMetrics { id: fontMetrics; font.pixelSize: 1 * scale}

    // element margin
    property double mr0: 0 * scale
    property double mr1: 2 * scale
    property double mr2: 4 * scale
    property double mr3: 8 * scale
    property double mr4: 12 * scale
    property double mr5: 16 * scale
    property double mr6: 24 * scale
    property double mr7: 32 * scale

    // element spacing
    property double sp0: 0 * scale
    property double sp1: 2 * scale
    property double sp2: 4 * scale
    property double sp3: 8 * scale
    property double sp4: 12 * scale
    property double sp5: 16 * scale
    property double sp6: 24 * scale
    property double sp7: 32 * scale

    // elemect size
    readonly property real xxsm: 18 * scale
    readonly property real xsm: 22 * scale
    readonly property real sm: 24 * scale
    readonly property real md: 36 * scale
    readonly property real lg: 42 * scale
    readonly property real xlg: 48 * scale
    readonly property real xxlg: 56 * scale
    readonly property real xxxlg: 68 * scale

    // font size
    property double font_xxsmal: 6 * scale
    property double font_xsmal: 8 * scale
    property double font_smal:  10 * scale
    property double font_normal: 12 * scale
    property double font_large: 14 * scale
    property double font_xlarge: 16 * scale
    property double font_xxlarge: 20 * scale
    property double font_xxxlarge: 30 * scale
    property double font_xxxxlarge: 48 * scale

    // font family
    property string fontNameMain: g_commonTools.mainFontFamily()
    property string fontNameArticle: g_commonTools.articleFontFamily()
}
