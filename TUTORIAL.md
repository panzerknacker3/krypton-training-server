# Krypton Training Server — Setup and Base Placement

## 1. Install the server

1. Install Java 21.
2. Download a compatible Paper server for the Minecraft version you want to run.
3. Put the server JAR in an empty server directory and start it once.
4. Set `eula=true` in `eula.txt` after reading the Minecraft EULA.
5. Stop the server, copy `SeasonCraftCore.jar` into `plugins/`, and start Paper again.
6. Review `server/server.properties.example` and apply only the settings appropriate for your host.
7. Keep the server whitelist, credentials, logs, worlds, and player data private.

Example start command:

```text
java -Xms2G -Xmx4G -jar paper.jar --nogui
```

## 2. Repository layout

- `docs/` — project documentation
- `plugin/src/main/resources/plugin.yml` — plugin metadata and commands
- `server/` — safe server configuration examples
- `TUTORIAL.md` — this guide

The public repository does not contain private worlds, player data, host credentials, FTP details, private IP addresses, or third-party server binaries.

## 3. Add schematic support

SeasonCraftCore does not bundle WorldEdit or schematic files. For a staging server, install a compatible WorldEdit or FAWE build separately, then create this directory if it does not exist:

```text
plugins/WorldEdit/schematics/
```

Copy only base schematics that you are licensed or permitted to use into that directory. Keep schematic filenames descriptive, for example:

- `small_house_01.schem`
- `underground_base_01.schem`
- `cobblestone_farm_large.schem`

Do not upload private maps, player data, server backups, or credentials to a public repository.

## 4. Paste and validate a base

Run these steps on a copy of the world first:

1. Use WorldEdit to select a safe paste location.
2. Load the schematic with `//schem load <filename>`.
3. Paste it with `//paste -e` when entities are intentionally part of the design.
4. Check that the complete structure is above the world floor and does not overlap bedrock, spawn protection, or another base.
5. Check that water and lava cannot flow into the base from the surrounding terrain.
6. Remove accidental vanilla spawners or entities if the design should use custom server content only.
7. Save a backup before repeating the placement process.

For automated placement, use a small external placement script or a controlled WorldEdit batch process with:

- a minimum spacing radius larger than the biggest schematic footprint;
- a fixed border and a list of already-used coordinates;
- a height check against bedrock and the surface;
- a collision check before every paste;
- a slow batch rate so chunk generation and lighting can keep up.

Never paste thousands of bases in one synchronous server tick. Spread placement across batches and monitor TPS and memory.

## 5. Player commands

- `/spawn` — teleport to spawn
- `/rtp` — open the random teleport menu
- `/sethome <1-9>` — save a home
- `/delhome <1-9>` — delete a home
- `/homes` — open the home menu
- `/tpa <player>` — send a teleport request
- `/tpahere <player>` — ask a player to teleport to you
- `/tpaccept` or `/tpdeny` — accept or deny a request
- `/sell` — open the selling menu
- `/ec` — open your ender chest

## 6. Maintenance and privacy

Keep the production world and player data separate from the public project. Make backups before changing plugins or world settings. Do not publish FTP passwords, server passwords, logs, player UUIDs, generated world files, or private network information.
