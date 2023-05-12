Item Blocks will spawn in random locations around the play area and the player has to collide with them to collect an item. When player collides a random number generator (1-10) will begin with each number corrosponding with an item. The player can have a max of 2 items at a time.

```mermaid
flowchart TD
start(start) -->
processA[Item Blocks spawn] -->
decisionA{Player collide with item block}
decisionA -- no --> decisionA
decisionA -- yes --> decisionB{player has 2 items}
decisionB -- yes --> decisionB
decisionB -- no --> OutputA
OutputA[Item Generation]
OutputA --> decisionC{Player use item}
decisionC -- no --> decisionC
decisionC -- yes --> outputB[Item removed from queue]
```
