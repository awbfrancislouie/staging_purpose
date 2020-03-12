odoo.define('wegen_custom.KanbanColumnProgressBar', function(require){
    'use strict';
    var session = require('web.session');
    var progressbar = require('web.KanbanColumnProgressBar');
    
    var pgBar = progressbar.include({
        init: function(parent, options, columnState){
            this._super.apply(this, arguments);
            // Prepare currency (TODO this should be automatic... use a field ?)
            var sumFieldInfo = this.sumField && columnState.fieldsInfo.kanban[this.sumField];
            var currencyField = sumFieldInfo && sumFieldInfo.options && sumFieldInfo.options.currency_field;
            if (currencyField && columnState.data.length) {
                this.currency = session.currencies[columnState.data[0].data[currencyField].res_id];
            } else if (columnState.progressBarValues.currency) {
                var currency = {
                    symbol: columnState.progressBarValues.currency
                };
                this.currency = currency;
            }
        }
    });
    return pgBar;
});