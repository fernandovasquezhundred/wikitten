Set time in controller

    this.time1 =  new Date();

Just add this to the HTML

    <timepicker-pop
        input-time="vm.time1"
        class="input-group"
        show-meridian='vm.showMeridian'>
    </timepicker-pop>
