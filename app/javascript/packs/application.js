import "bootstrap";
import { initFlatpicker } from "../plugins/flatpickr";
import {initSortable} from "../plugins/init_sortable";

initSortable();
global.initSortable = initSortable;

initFlatpicker();
