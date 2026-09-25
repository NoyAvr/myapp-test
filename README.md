# myapp-test
setting prod and staging env

## Portfolio page (Figma → HTML/Tailwind)

`index.html` is a hand-converted build of the Figma frame
"1280px - Portfolio template" (node `176:2329`).

- **Stack:** semantic HTML5 + Tailwind CSS (Play CDN, config inline in `<head>`).
- **Responsive, desktop-first:** base classes match the 1280px design;
  `max-lg:` (<1024px), `max-md:` (<768px) and `max-sm:` (<640px) adapt it down.
- **Assets:** run `./scripts/download-assets.sh` once to fetch the images/icons
  from Figma into `assets/` (the export URLs expire ~7 days after 2026-09-25).

Open `index.html` in a browser, or serve it: `npx serve .`
