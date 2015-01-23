menu =
    create: ->
        # Name of the game
        nameLabel = game.add.text game.world.centerX, game.world.centerY, 'Name',
        font: '150px Arial', fill: '#FFF'
        nameLabel.anchor.setTo 0.5, 0.5
        
        # Instructions for starting the game
        startLabel = game.add.text game.world.centerX, game.world.height - 80,
        'Press the UP arrow key to start.',
        font: '25px Arial', fill: '#FFF'
        startLabel.anchor.setTo 0.5, 0.5
        game.add.tween(startLabel).to(angle: -2, 500).to(angle: 2, 500).loop().start()
        
        # Add a mute button
        @mutebutton = game.add.button 20, 20, 'mute', @toggleSound, this
        @mutebutton.input.useHandCursor = true
        @muteButton.frame = 1 if game.sound.mute
        
        upKey = game.input.keyboard.addKey Phaser.Keyboard.UP
        upKey.onDown.addOnce @start, this
        
    toggleSound: ->
        game.sound.mute = not game.sound.mute
        @muteButton.frame = if game.sound.mute then 1 else 0
    
    start: ->
        game.state.start 'play'