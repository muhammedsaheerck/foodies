import { Component } from '@angular/core';
import { FooterComponent } from '@coreui/angular';
import * as moment from 'moment';

@Component({
  selector: 'app-default-footer',
  templateUrl: './default-footer.component.html',
  styleUrls: ['./default-footer.component.scss'],
})
export class DefaultFooterComponent extends FooterComponent {
  date: any = '';
  constructor() {
    super();
    this.date = moment().format('YYYY');
  }
}
