# Krypton Training Server – Quick Tutorial

## Start

1. Install Java 21.
2. Put `SeasonCraftCore.jar` into the server `plugins` folder.
3. Set `eula=true` in `eula.txt`.
4. Start Paper with `java -Xms2G -Xmx4G -jar paper.jar --nogui`.
5. Stop once after the first start, review `server.properties`, then start again.

## Player commands

- `/spawn` – teleport to spawn
- `/rtp` – open the random teleport menu
- `/sethome <1-9>` – save a home
- `/delhome <1-9>` – delete a home
- `/homes` – open the home menu
- `/tpa <player>` – send a teleport request
- `/tpahere <player>` – ask a player to teleport to you
- `/tpaccept` or `/tpdeny` – accept or deny a request
- `/sell` – open the selling menu
- `/ec` – open your ender chest

## Safety and maintenance

Keep world files and player data private. Make a backup before changing plugins or world settings. Do not publish FTP credentials, server passwords, logs, player data, or generated world files.
