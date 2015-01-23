# Initialize Phaser
game = new Phaser.Game 1024, 640, Phaser.AUTO, 'game'

# Global variables
game.global = score: 0

# Define states
game.state.add 'boot', boot
game.state.add 'load', load
game.state.add 'menu', menu
game.state.add 'play', play

# Start the boot state
game.state.start 'boot'
