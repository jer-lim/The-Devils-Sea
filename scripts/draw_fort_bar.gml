// get current fort health percentage (%)
var fort_health = self.capture_timer / (room_speed * 5) * 100;

if (fort_health < 100) {
    // reverse fort health calculations for player 2
    if (self.owner == PLAYER_TWO)
        fort_health = 100 - fort_health;

    // draw blue and red bars
    draw_sprite_stretched(self.blue_bar.sprite_index, -1,
        self.x - 50, self.y - 60,
        fort_health, 20);
    draw_sprite_stretched(self.red_bar.sprite_index, -1,
        self.x - 50 + fort_health, self.y - 60,
        100 - fort_health, 20);
}