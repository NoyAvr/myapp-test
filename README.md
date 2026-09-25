# myapp-test
setting prod and staging env

## Portfolio page (Figma → HTML/Tailwind)

`index.html` is a hand-converted build of the Figma frame
"1280px - Portfolio template" (node `176:2329`).

- **Stack:** semantic HTML5 + Tailwind CSS (Play CDN, config inline in `<head>`).
- **Responsive, desktop-first:** base classes match the 1280px design;
  `max-lg:` (<1024px), `max-md:` (<768px) and `max-sm:` (<640px) adapt it down.
- **Assets:** `assets/` was extracted from the local `.fig` export — photos are the
  original 2x JPEGs, icons/logos are SVGs generated from the Figma vector geometry.

Open `index.html` in a browser, or serve it: `npx serve .`
