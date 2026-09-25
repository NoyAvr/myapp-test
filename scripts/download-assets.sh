#!/usr/bin/env bash
# Downloads the Figma-exported assets into ./assets.
# Figma MCP asset URLs are temporary (~7 days from 2026-09-25); re-export from
# Figma (node 176:2329) if they have expired.
set -euo pipefail
cd "$(dirname "$0")/.."
B=https://www.figma.com/api/mcp/asset
mkdir -p assets/icons assets/logos assets/images
while read -r id out; do
  [ -z "$id" ] && continue
  echo "-> $out"
  curl -sSfL "$B/$id" -o "$out"
done <<'LIST'
5937a55f-4235-427d-929f-83e59954d33a.svg assets/icons/instagram.svg
60fd0605-53a6-4ac1-9991-d8cd87058caf.svg assets/icons/behance.svg
9dc58140-7036-4bcb-a909-b2f2a9a462d9.svg assets/icons/dribbble.svg
259d729f-60a2-4c90-9b51-04a3f2c6cc95.svg assets/icons/facebook.svg
b00f4ee7-9408-454d-a02d-75ec1c4315eb.svg assets/icons/discord.svg
46e569b5-ce7e-4266-b867-172dc505c119.svg assets/icons/star.svg
2ecf4613-22df-4c66-abe7-8d1a8e8e0fbf.svg assets/logos/behance.svg
038aeed5-4e34-4a10-8639-7d8763517bac.svg assets/logos/google.svg
735e5ed3-6791-4b28-aef4-31f4108389fa.svg assets/logos/apple.svg
74a5e128-1a85-4412-a476-db004e0b4c53.svg assets/logos/dribbble.svg
44d9effd-65af-4a42-9a4d-93192aeb8abc.svg assets/logos/awwwards.svg
4d336852-cec6-4789-99d1-51102fea1075.png assets/images/hero.png
8d18163d-fea6-4769-a38b-32eafc482fe8.png assets/images/skill-product-design.png
87ec0fc4-1264-4a06-bcea-7ba92b97e7ef.png assets/images/skill-art-direction.png
7366a5c4-f4b0-4351-9fd4-104891028f56.png assets/images/skill-visual-design.png
ab8122c1-bb4d-4369-b991-d3e45e4c02c0.png assets/images/work-free-bird.png
efb7c670-d80b-4eaf-a192-a674b7f7bbb1.png assets/images/work-purple-haze.png
adbd1f83-c490-4994-9167-44105410dba6.png assets/images/work-you-really-got-me.png
4f3c67fd-8bb5-4149-8540-49b3e53e134f.png assets/images/work-american-girl.png
6554d3fb-f23d-4d6c-a13b-9f0d4b0d770e.png assets/images/work-whole-lotta-love.png
8701bb26-819e-4f7e-a377-9576f78f7473.png assets/images/work-under-pressure.png
3ae0d9fb-af76-41cd-bb85-843ed852af5d.png assets/images/client-1.png
84a62a05-2b63-42bf-abdd-419aaa7b53dc.png assets/images/client-2.png
a5c008ed-24e2-4b72-a2f7-f73fdecbf594.png assets/images/client-3.png
LIST
echo "Done."
