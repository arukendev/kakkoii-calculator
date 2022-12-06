const form = document.getElementById("form");
const main = document.querySelector("main");
const select = document.getElementById("select");
const input = document.querySelector("input");
const span = document.querySelector("span");

const reg = /^[+-]?\d*$/;

const errorHandler = (event) => {
  input.style.borderBottomColor = "tomato";
  span.innerText = event;
  span.style.opacity = 1;
};

const onSubmitHandler = (event) => {
  event.preventDefault();
  if (input.value.length >= 5) {
    errorHandler("1만 이내의 정수를 입력해 주세요!");
    return false;
  }
  if (reg.test(input.value) == false) {
    errorHandler("정수만 입력해 주세요!");
    return false;
  }
  if (input.value == "") {
    errorHandler("값을 입력해 주세요!");
    return false;
  }
  const selectValue = select.value;
  if (selectValue === "cm") {
    form.action = "cminch.jsp";
  } else if (selectValue === "m") {
    form.action = "mpyeong.jsp";
  } else if (selectValue === "c") {
    form.action = "cf.jsp";
  } else {
    form.action = "kmmi.jsp";
  }
  form.submit();
};

form.addEventListener("submit", onSubmitHandler);
