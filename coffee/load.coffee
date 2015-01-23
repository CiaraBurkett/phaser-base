load =
    preload: ->
        # Add a loading label
        loadingLabel = game.add.text game.world.centerX, 150, 'Loading...',
        font: '50px Arial', fill: '#FFF'
        
        loadingLabel.anchor.setTo 0.5, 0.5
        
        # Add a progress bar
        progressBar = game.add.sprite game.world.centerX, 200, 'progressBar'
        progressBar.anchor.setTo 0.5, 0.5
        game.load.setPreloadSprite progressBar
        
        # Load all assets
        game.load.spritesheet 'mute', 'assets/muteButton.png', 28, 22
        
    create: ->
        game.state.start 'menu'