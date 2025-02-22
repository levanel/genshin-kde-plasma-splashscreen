import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
  width: Screen.width
  height: Screen.height
  color: "#1D1C23"

  property int messageIndex: 0
  property var messages: [
    {"title": "Fatui", "text": "A Snezhnayan organization that has spread out all over the continent. They seem to be actively plotting something...", "image": "images/fatui.png"},
    {"title": "A Vision", "text": "Rumor has it that when someone's wishes are extremely powerful, the gods will peer down upon him, and a Vision will appear...", "image": "images/vision.png"},
    {"title": "Inazuma", "text": "The Raiden Shogun is the deity who rules over Inazuma. She possesses power sufficient to call down the thunderstorm that has sealed Inazuma off...", "image": "images/inazuma.png"},
    {"title": "Navia", "text": "As the head of the Spina di Rosula, she is devoted to helping people of Fontaine, being likened as a 'big sister' who checks in on everyone.", "image": "images/navia.png"},
    {"title": "Furina", "text": "The world is but a stage. Why cry, when you can laugh instead? For laughter is humanity's preserve. Laugh it all off, fret not, Let's just enjoy the moment.", "image": "images/furina.png"}
  ]

  Image {
    id: messageImage
    source: messages[messageIndex].image
    anchors.centerIn: parent
    width: 160
    height: 160
    fillMode: Image.PreserveAspectFit
  }

  AnimatedImage {
    id: gifImage
    source: "images/loadin.gif"
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottomMargin: 20
    width: 400
    height: 200
    fillMode: Image.PreserveAspectFit
    playing: true
  }
  
  FontLoader {
    id: localFontRegular
    source: "zhcn.ttf"
  }

  Column {
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.margins: 40
    width: parent.width - 200
    spacing: 10

    Text {
      id: titleText
      text: messages[messageIndex].title
      font.family: "zhcn.ttf"
      font.pointSize: 17
      font.bold: true
      color: "#D4BE90"
      horizontalAlignment: Text.AlignHCenter
      wrapMode: Text.WordWrap
      width: parent.width
    }

    Text {
      id: messageText
      text: messages[messageIndex].text
      font.bold: false
      font.pointSize: 12
      font.family: localFontRegular.name
      color: "#D4BE90"
      wrapMode: Text.WordWrap
      horizontalAlignment: Text.AlignHCenter
      width: parent.width
    }
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      messageIndex = (messageIndex + 1) % messages.length
    }
  }
}
