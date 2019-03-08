// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const initFlatpicker = () => {
  if (document.querySelector('.datepicker')) {
    console.log("j'y suis");
    flatpickr(".datepicker", {
    });
  }

  if (document.querySelector('.timepicker')) {
    console.log("moi aussi");

    flatpickr(".timepicker", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      time_24hr: true
    });
  }
}

export { initFlatpicker };

//$('input.datepicker').data({behaviour: "datepicker"}).datepicker();
