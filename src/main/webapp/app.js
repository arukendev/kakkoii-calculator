const form = document.getElementById("form");
const main = document.querySelector("main");
const select = document.getElementById("select");
const input = document.querySelector("input");
const span = document.querySelector("span");

const reg = /^[+-]?\d*$/;

const onSubmitHandler = (event) => {
  event.preventDefault();
  if (reg.test(input.value) == false) {
    input.style.borderBottomColor = "tomato";
    span.innerText = "정수만 입력해 주세요!";
    span.style.opacity = 1;
    return false;
  }
  if (input.value == "") {
    input.style.borderBottomColor = "tomato";
    span.innerText = "값을 입력해 주세요!";
    span.style.opacity = 1;
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
