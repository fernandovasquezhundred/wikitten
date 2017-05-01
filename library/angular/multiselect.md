Varables:

    this.$http.get('/api/landers').then(response => {
      this.landers = response.data;
    });
    this.choosenLanders = [];
    this.landersSettings = { displayProp: 'landerName', idProp: '_id' };

HTML

    <div ng-dropdown-multiselect=""
        options="vm.landers"
        selected-model="vm.choosenLanders"
        extra-settings="vm.landersSettings">
    </div>
