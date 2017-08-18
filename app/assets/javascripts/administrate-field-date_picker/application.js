//= require flatpickr
//= require flatpickr/l10n/ru
$(function() {
  Flatpickr.localize(Flatpickr.l10ns.ru);
  flatpickr('.date_picker');
});