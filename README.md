# CFRU Generator

This is a simple docker solution to compiling a FireRed ROM with the [Complete FireRed Upgrade](https://github.com/Skeli789/Complete-Fire-Red-Upgrade).

## Instructions

1. Install [Docker / Docker compose](https://www.docker.com/get-started/)
2. Clone this repo (`git clone https://github.com/Brandawg93/cfru-generator`)
3. Add your FireRed ROM to the `Rom` folder and rename it to `BPRE0.gba`
4. Run `docker compose up`
5. Profit!

The `offsets.ini` and `test.gba` will be in `Rom/build`.

## Additional Resources
- https://github.com/Skeli789/Complete-Fire-Red-Upgrade
- https://github.com/Skeli789/Dynamic-Pokemon-Expansion
- https://www.pokecommunity.com/threads/leons-dpe-cfru-base-and-ultimate-rom-base.409672/
- https://www.pokecommunity.com/threads/complete-firered-upgrade.425447/