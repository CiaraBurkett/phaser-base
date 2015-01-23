// Generated by CoffeeScript 1.8.0
var menu;

menu = {
  create: function() {
    var enterKey, nameLabel, startLabel;
    nameLabel = game.add.text(game.world.centerX, game.world.centerY, 'Name', {
      font: '150px Arial',
      fill: '#FFF'
    });
    nameLabel.anchor.setTo(0.5, 0.5);
    startLabel = game.add.text(game.world.centerX, game.world.height - 80, 'Press the ENTER key to start.', {
      font: '25px Arial',
      fill: '#FFF'
    });
    startLabel.anchor.setTo(0.5, 0.5);
    game.add.tween(startLabel).to({
      angle: -2
    }, 500).to({
      angle: 2
    }, 500).loop().start();
    this.mutebutton = game.add.button(20, 20, 'mute', this.toggleSound, this);
    this.mutebutton.input.useHandCursor = true;
    if (game.sound.mute) {
      this.muteButton.frame = 1;
    }
    enterKey = game.input.keyboard.addKey(Phaser.Keyboard.ENTER);
    return enterKey.onDown.addOnce(this.start, this);
  },
  toggleSound: function() {
    game.sound.mute = !game.sound.mute;
    return this.muteButton.frame = game.sound.mute ? 1 : 0;
  },
  start: function() {
    return game.state.start('play');
  }
};
