var boot = {
    preload: function() {
        game.load.image('progressBar', 'img/progress-bar.png');
    },
    
    create: function() {
        game.stage.backgroundColor = '#444444';
        game.physics.startSystem(Phaser.Physics.ARCADE);
        
        game.state.start('load');
    }
};