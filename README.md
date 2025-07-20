# Get Moving with Godot Workshop | DurJam 2025

## 2D & 3D Movement tutorial for getting started in Godot!

Full video workshop on the Durham University Computing Society YouTube Channel (soon!)


<br><br>

---

# 2D Movement

1. Start a new project

2. Start a scene with a Node2D and name it 'Scene'

3. Start another scene with a Node2D and name it 'Character'

4. Add child nodese to this scene so that it has the following structure:

    - Node2D <--# 'Character'
        - CharacterBody2D
            - CollisionShape2D
            - Sprite2D

<br>

5. Go to Project Settings -> Input Map (2nd tab)

    - Add the following actions, and press the + button to attach keys to them
        | Action  | Suggested Buttons |
        | :---:   | :---:       |
        | "Left"  | \<A>, \<←> |
        | "Right" | \<D>, \<→> |
        | "Up"    | \<W>, \<↑>, or \<space> (jumping) |
        | "Down"  | \<S>, \<↓> |
<br>

6. Atach a script to the Character2D Node

7. Use the code in <b>[2D-Movement.gd](2D-Movement.gd)</b> to allow your character to move!

You can either have your movement be top-down by not adding the gravity elements in the file, or a traditional side-scroller/ platformer style with jumping and gravity implemented

<br>

<b> A full template Godot Project can be found in [Basic Godot Projects/2d_movement.zip](Basic%20Godot%20Projects/2d_movement.zip) </b>


<br></br>
---

# 3D Movement

1. Start a new project

2. Start a scene with a Node3D and name it 'Scene'

3. Start another scene with a Node3D and name it 'Character'

4. Add child nodes to this scene so that it has the following structure:

    - Node3D <-- 'Character'
        - CharacterBody3D
            - MeshInstance3D
            - CollisionBody3D
        - Node3D <-- 'Neck'
            - Camera3D

<br>

5. Go to Project Settings -> Input Map (2nd tab)

    - Add the following actions, and press the + button to attach keys to them
        | Action  | Suggested Buttons |
        | :---:   | :---:       |
        | "Left"  | \<A>, \<←> |
        | "Right" | \<D>, \<→> |
        | "Forward"| \<W>, \<↑> |
        | "Back"  | \<S>, \<↓> |
        | "Jump"  | \<space> |
    - The mouse perspective movement will be handled by capturing mouse movements using Godot mouse modes (.MOUSE_MODE_CAPTURED)

<br>

6. You'll need a surface in the 3D Scene to walk on, so add a surface mesh, MeshInstance3D with a cubic StaticBody3D & CollisionShape3D to stop your character from falling into the void. Use the following structure:

    - MeshInstance3D
        - StaticBody3D
        - CollisionShape3D

<br>

7. Atach a script to the Character3D Node

8. Use the code in <b>[3D-Movement.gd](3D-Movement.gd)</b> to allow your character to move!

<br>

<b> A full template Godot Project can be found in [Basic Godot Projects/3d_movement.zip](Basic%20Godot%20Projects/3d_movement.zip) </b>



<br></br>
---
# Demo Game - [Play it on Itch.io!](https://oryley.itch.io/godot-workshop)

### Full [Godot Project](Godot%20Project) folder
### [Devpost Page](https://devpost.com/software/get-moving-with-godot)
<br>

The Demo Game implements both 2D and 3D movement, with both a 2D and 3D scene that you can toggle between to play different takes on the same game concept.

The game fits the DurJam: Remastered (2025) theme 'A Twist on a Classic' as it twists the platformer genre; instead of the aim being to get to a particular place using the mechanic of the platforms, the goal is to have visited every platform.

The blue texture of the platforms turns red when they have been visited.

Visiting every platform extends to the 2D demo minigame, and the concept is further twisted on by the new mechanic of toggling platforms. Visiting a platform twice will un-select it, turning it blue again. This means that the player must find a route to all platforms that visits each platform an odd number of times.

By pressing \<Q> in the 3D demo, you can switch to this alternate game mode to try out this new concept in the 3D environment.

<br>

- <b>Controls</b>
    - \<W, A, S, D> for movement
    - \<space> to Jump
    - \<E> to switch between 2D & 3D demos
    - \<Q> to switch to alternate, toggle platform (hard) mode

<br>

3D textures sourced from [Polyhaven](https://polyhaven.com/).

<br></br>
---
## Sources


- [2D movement overview - Godot Docs](https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html)

- [Make your first 3D Platformer in Godot 4: Setup, Movement, and Camera Controls - Bramwell (YouTube)](https://www.youtube.com/watch?v=sVsn9NqpVhg)


### Extra Resources

- [Beginner's Guide to Textures & Meshes in Godot 4 - Explore Game Dev (YouTube)](https://www.youtube.com/watch?v=K7a4hDRxYu8)
    - <i>Add some textures to your game to add a quick extra level of polish!
    - [Polyhaven](https://polyhaven.com/) is recommended here for texture files, and is what I used to source textures for the [Demo Game](https://oryley.itch.io/godot-workshop) </i>

- [The Godot Docs](https://docs.godotengine.org/)
    - <i>The best resource for working with GDScript</i>
