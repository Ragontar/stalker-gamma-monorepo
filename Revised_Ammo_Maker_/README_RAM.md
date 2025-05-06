# Revised Ammo Maker (RAM)

- Created by Arti
- Heavily modified by Singustromo
- *Last modified: 06/08/23*

For those unaware what the original does:
- replaces ammo recipes with custom ones
- Ammo decomposes into 3 major components: casings, powder and bullets
- Disassembly yields variable amount of components

Salvaging ammunition is currently not really worth it and the ammunition acquisition relies solely on the currency-based in-game economy. This is especially apparent in the GAMMA modpack were you are not able to buy firearms because of a ban lore-wise.

This modification mainly fixes bugs and inconsistencies of the original ammo maker whilst making ammunition crafting an important but optional part of the gameplay loop that is worth doing without making the currency-based acquisition obsolete.

This addon includes more realistic recipes by default, meaning you only need one bullet head and casing for one cartridge. These are optional and can of be changed, of course.

# Differences to the Original

## Gameplay

- Fixed missing component on salvage  
    Bugged base anomaly function were the cause (resulted in salvage loss up to 40%)
- Added an MCM menu (Ammo Maker)
- Three salvage presets are available now  
    The preset is either determined by the progression difficulty or can be manually set via MCM.
- Non-linear probability  
    Chance for 0-100% yield but will be around 50% - 75% over time (Depends on settings in MCM)
- Recipes only require one Bullet and Casing per Cartridge (OPTIONAL)
- Cartridge box sizes are normalized to 10 and 15 (no more 13,14,16 round boxes) (OPTIONAL)
- Propellant yield is more realistic (OPTIONAL)
- Craftable bullets and casings in exchange for scrap metal (OPTIONAL)  
    small chance for scrap metal to spawn on corpses
- Can not get more components from disassembly than needed in the crafting recipe
- Correct salvage amounts when disassembling partial ammo stacks (boxes)
- Ammunition components are highlighted in the inventory when hovering over ammunition
- Tool degradation is not a placebo anymore (Adjustable via MCM)
- Disassembly message now shows the total amount of cartridges salvaged (OPTIONAL)
- Increased ammunition component cost and weight slightly

## Technical (interesting for modders)

- Removed separate BAS Recipe injection
- Changed ammunition declaration method  
    Via (D)LTX in configs/items/settings/craft.ltx
- Salvage components and their amounts are determined via the crafting recipe  
    LTX's in configs/parts are obsolete
- Cartridge-specific salvage yield are balanced through `configs/plugins/ammo_maker`  
    See importer.ltx for further information
- Compatible with recipes added via `configs/items/ammo`  
    Disabled by default and uses `workshop_autoinject` for this
- Added functions for external usage  
    Documented in the header of `ammo_maker.script`

# Compatibility

Should only conflict with addons that overwrite `ammo_maker.script`

RAM has support for Mod Configuration Menu. It is not mandatory.
The default values can be modified in the `ammo_maker_mcm.script`

Recipes for the follwing ammunition addons are included:
- Boomsticks & Sharpsticks
- 10mm Auto Ecosystem
- Ammo EFT
- Retrogue's Socom Pack
- Wardogs Warfare Overhaul (GAMMA Discord)  
    I will probably not update the Wardogs recipe as I do not play it myself

# Installation

## Base Anomaly

Remove the original Ammo Maker, if installed.
Keep **003 - Realistic Bullet and Casing Quantity** enabled
*Note: The additional recipes provided also follow that theme*

## GAMMA

1. Deactivate **145- Ammo Maker** and **146- Ammo Maker BAS Patch** in Mod Organizer  
    These are unnecessary at this point
2. Deactivate **Wildkin's Ammo Parts on Hover** in Mod Organizer  
    RAM includes a variant of this by default
3. Select the **Boomsticks & Sharpsticks** recipes during the installation.
4. Assign RAM the highest priority in Mod Organizer

## Escape From Pripyat

I do not play it myself but I had a look in their modlist.
You should be good to go by **replicating** the steps 1 & 3 for GAMMA and the 2nd optional step.
*Any report of this working with EFP would be great!*

# Optional Steps

1. If you dislike the new crafting recipes
    - Select **04 - Inject Workshop Recipes** in the archive
    - Activate **Force Injection** in the **MCM** menu

2. If you are using additional ammunition addons for which I did not create recipes
    - Select **04 - Inject Workshop Recipes** in the archive
    - If the addons you intend to use contain ammo variants (e.g in ArtiGrok):  
        Activate **Inject ammunition variants** in the **MCM** menu

# How to add / modify recipes

Recipes are added the same way as in `configs/items/settings/craft.ltx`
An example for a DLTX file is located in **003 - Realistic Casing and Bullet Quantity**

# Suggestions

I am open for any suggestions, ideas or constructive criticism. I had many ideas during the development of this modification but most were not realized or scrapped because it made the mod unnecessarily complicated.

For example bonuses and penalties which were applied depending on your health, safety and other factors.

Another idea was to add support for Haruka's Skill system to gradually get better at salvaging ammunition.
