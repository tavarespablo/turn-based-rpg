# PICO-8 Chrono-Trigger Battle Mini-Game

## Overview
A Chrono Trigger like mini game based on its Active Time Battle system.

---

## Current Architecture

- **Turn System:**  
  (Describe how turns work, e.g., action bars for player/monster, when actions are triggered.)

- **Action Bars:**  
  (How are they filled? What triggers a turn?)

- **HP System:**  
  (How is health tracked and displayed?)

- **Animation:**  
  (Are you using coroutines? How are actions/attacks animated?)

---

## Tech Stack & Limitations

- **Engine:** PICO-8 (Lua)
- **Token Limit:** (e.g., 8192 tokens)
- **Sprite/Map Limits:** (e.g., 128 sprites, 128x32 map)
- **Other Constraints:** (memory, sound, etc.)

---

## Planned Features

- [ ] New player actions (list them)
- [ ] More monsters (list ideas)
- [ ] Inventory system
- [ ] Game over and victory screens
- [ ] Sound and visual effects

---

## Key Technical Decisions

- (e.g., “Use coroutines for all animations”)
- (e.g., “All state handled in global variables for simplicity”)
- (e.g., “Test functions in a separate file”)

---

## Changelog

- v0.1: Initial prototype (date)
- v0.2: (your next milestone)

---

# Previous Milestones

1. Implement action bar logic for both player and goblin (fills over time, triggers turn). ✅
2. Add goblin AI: goblin attacks automatically when its action bar is full.
3. Enable player actions: attack, defend, use item, run (menu selection and effects).
4. Handle health and damage: update HP for player and goblin, show defeat/victory.
5. Animate actions: show attack/defend/item effects visually.
6. Reset action bars after each turn/action.
7. Add win/lose conditions and end battle screen.