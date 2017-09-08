http://jsfiddle.net/deeptechtons/TKVH6/

Select

    <select name="lander" id="landerSelect" ng-model="vm.landerSelect">
        <option ng-repeat="lander in vm.landers" value="{{lander.landerId}}">{{lander.landerName}}</option>
    </select>
