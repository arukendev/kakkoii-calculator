const form = document.querySelector("form");
const header = document.querySelector("header");
const input = document.querySelector("input");
const span = document.querySelector("span");

const reg = /^[+-]?\d*$/;

const errorHandler = (error) => {
  input.style.borderBottomColor = "tomato";
  span.innerText = error;
  span.style.opacity = 1;
};

const onSubmitHandler = (event) => {
  event.preventDefault();
  if (form.id === "indexForm") {
    if (reg.test(input.value) === false) {
      errorHandler("정수만 입력해 주세요!");
      return false;
    }
    if (input.value.length >= 5) {
      errorHandler("1만 이내의 정수를 입력해 주세요!");
      return false;
    }
    if (input.value === "") {
      errorHandler("값을 입력해 주세요!");
      return false;
    }
  }
  form.submit();
};

const onMousemoveHandler = (event) => {
  const x = event.offsetX;
  const y = event.offsetY;
  let color1 = "#00dbde";
  let color2 = "#fc00ff";
  if (header.id === "cmHeader") {
    color1 = "#38ada9";
    color2 = "#78e08f";
  } else if (header.id === "mHeader") {
    color1 = "#1e3799";
    color2 = "#60a3bc";
  } else if (header.id === "cHeader") {
    color1 = "#f6b93b";
    color2 = "#eb2f06";
  } else if (header.id === "kmHeader") {
    color1 = "#b71540";
    color2 = "#c56cf0";
  }
  header.style.cssText = `
    background-image: radial-gradient(
      circle farthest-corner at ${x}px ${y}px,
      ${color1} 0%,
      ${color2} 100%
    );
  `;
};

form.addEventListener("submit", onSubmitHandler);
header.addEventListener("mousemove", onMousemoveHandler);
