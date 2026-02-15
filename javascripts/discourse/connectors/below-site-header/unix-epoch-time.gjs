import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { getOwner } from "@ember/owner";

export default class UnixEpochTime extends Component {
  @tracked currentTime = Math.floor(Date.now() / 1000);

  constructor() {
    super(...arguments);
    this.startTimer();
  }

  get showLabel() {
    const settings = getOwner(this).lookup("service:theme-settings");
    if (settings) {
      return settings.getSetting("show_label") ?? true;
    }
    return true;
  }

  startTimer() {
    this.intervalId = setInterval(() => {
      this.currentTime = Math.floor(Date.now() / 1000);
    }, 1000);
  }

  willDestroy() {
    super.willDestroy(...arguments);
    if (this.intervalId) {
      clearInterval(this.intervalId);
    }
  }

  <template>
    <div class="unix-epoch-time-banner">
      {{#if this.showLabel}}
        <span class="unix-time-label">unix time:</span>
      {{/if}}
      <span class="unix-time-value">{{this.currentTime}}</span>
    </div>
  </template>
}
