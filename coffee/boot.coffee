boot = 
    preload: ->
        game.load.image 'progressBar', 'assets/progressBar.png'
    
    create: ->
        game.stage.backgroundColor = '#444'
        game.physics.startSystem Phaser.Physics.ARCADE
        game.state.start 'load'