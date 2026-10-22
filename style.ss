
:root {
  color-scheme: dark;
  font-family: "Segoe UI", Arial, sans-serif;
  color: #f3f5ff;
  background: #070a14;
}

* {
  box-sizing: border-box;
}

body {
  min-width: 280px;
  min-height: 100vh;
  margin: 0;
}

button,
a {
  font: inherit;
}

:focus-visible {
  outline: 3px solid #fff0ad;
  outline-offset: 5px;
}

.skip-link {
  position: fixed;
  z-index: 5;
  top: 1rem;
  left: 1rem;
  padding: .7rem 1rem;
  color: #111522;
  background: #fff0ad;
  transform: translateY(-180%);
}

.skip-link:focus {
  transform: translateY(0);
}

.scene {
  position: relative;
  isolation: isolate;
  display: grid;
  min-height: 100vh;
  min-height: 100svh;
  place-items: center;
  overflow: hidden;
  padding: 2rem 1rem;
  background: radial-gradient(ellipse at 50% 40%, #26375a, #0c1224 48%, #05070e 100%);
}

.scene-image {
  position: absolute;
  z-index: -2;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: .5;
}

.scene::after {
  position: absolute;
  z-index: -1;
  inset: 0;
  content: "";
  background: linear-gradient(180deg, #070a14a8, #070a14b8), radial-gradient(ellipse at 50% 48%, #25385c22, #03050be8 75%);
}

.controls {
  display: grid;
  justify-items: center;
  gap: 1rem;
  width: min(100%, 30rem);
  text-align: center;
}

.eyebrow {
  margin: 0;
  color: #b5c7e7;
  font-size: .75rem;
  letter-spacing: .24em;
}

h1 {
  margin: 0;
  font: 500 clamp(2rem, 6vw, 3.4rem)/1.1 Georgia, serif;
  letter-spacing: -.04em;
}

.lamp {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 1rem 0 .4rem;
}

.lamp-glow {
  position: absolute;
  top: -1rem;
  width: 14rem;
  height: 14rem;
  border-radius: 50%;
  background: #fbd88900;
  filter: blur(18px);
  transition: background .25s ease;
}

.lamp-bulb {
  position: relative;
  z-index: 1;
  display: grid;
  width: 8.4rem;
  height: 8.7rem;
  place-items: center;
  border: 3px solid #a5b2d0;
  border-radius: 48% 48% 43% 43%;
  background: linear-gradient(145deg, #aab7d022, #283149cc 72%);
  box-shadow: inset 0 0 1.4rem #d8e5ff16, 0 0 1.5rem #0a1025;
  transition: background .25s ease, box-shadow .25s ease, border-color .25s ease;
}

.lamp-bulb::before {
  position: absolute;
  top: 1.7rem;
  left: 50%;
  width: 2.1rem;
  height: 2.5rem;
  border: 2px solid #a8b6d1;
  border-top: 0;
  border-radius: 0 0 50% 50%;
  content: "";
  transform: translateX(-50%);
}

.lamp-bulb::after {
  position: absolute;
  top: 1.1rem;
  left: 1.45rem;
  width: .7rem;
  height: 1.9rem;
  border-radius: 50%;
  background: #e9f1ff55;
  content: "";
}

.filament {
  position: absolute;
  top: 2.9rem;
  left: 50%;
  width: 1.5rem;
  height: .35rem;
  border-top: 2px solid #a8b6d1;
  transform: translateX(-50%);
}

.lamp-socket {
  z-index: 1;
  width: 4.5rem;
  height: 2.25rem;
  margin-top: -.25rem;
  border: 2px solid #8290ad;
  border-radius: .3rem;
  background: repeating-linear-gradient(180deg, #46516a 0 5px, #202a40 5px 10px);
}

.lamp-base {
  z-index: 1;
  width: 3rem;
  height: .7rem;
  border: 1px solid #a5b2d0;
  border-radius: 0 0 .45rem .45rem;
  background: #303b53;
}

.lamp-status {
  min-height: 1.5em;
  margin: 0;
  color: #e2e8f6;
  font-size: .95rem;
}

button {
  min-height: 3rem;
  padding: .8rem 1.5rem;
  border: 1px solid #f3d69c;
  border-radius: .35rem;
  color: #17131a;
  background: linear-gradient(135deg, #ffe6ad, #d7a760);
  font-weight: 700;
  cursor: pointer;
}

button:hover {
  background: #fff0c8;
}

button[aria-pressed="true"] {
  color: #f4f6ff;
  border-color: #8aa2d0;
  background: #202d49;
}

.is-on .lamp-glow {
  background: #fbd88970;
}

.is-on .lamp-bulb {
  border-color: #ffe3a0;
  background: linear-gradient(145deg, #fff9da, #f4c76c 75%);
  box-shadow: inset 0 0 1.5rem #fffbdc, 0 0 1.5rem #ffe5a3, 0 0 5rem #ffd36b;
}

.is-on .lamp-bulb::before,
.is-on .filament {
  border-color: #aa7531;
}

.is-on .lamp-bulb::after {
  background: #fffdf0bb;
}

@media (max-width: 420px) {
  .controls {
    gap: .85rem;
  }

  .lamp {
    transform: scale(.9);
    margin-block: .3rem;
  }
}

@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    transition: none !important;
    scroll-behavior: auto !important;
  }
}
