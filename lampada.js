"use strict";

const cena = document.querySelector("#lamp-scene");
const botao = document.querySelector("#toggle-lamp");
const estado = document.querySelector("lamp-status");

botao.addEventListener("click", () => {
    const acesa = cena.classList.toggle("is-on");
    botao.setAttribute("aria-pressed", String(acesa));
    estado.textContent = `A lâmpada está ${acesa ? "acesa." : "apagada."}`;
});
