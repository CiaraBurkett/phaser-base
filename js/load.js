var load = {
    preload: function() {
        var progressBar = game.add.sprite(game.world.centerX, game.world.centerY, 'progressBar');
        progressBar.anchor.setTo(0.5, 0.5);
        game.load.setPreloadSprite(progressBar);
    },
    
    create: function() {
        game.state.start('play');
    }
};