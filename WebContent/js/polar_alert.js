/**
 * Created by user on 2015/1/6.
 */
(function(root, factory){
    'use strict';
    root.polaralert = factory(root.jQuery);

}(this, function init($) {

    var template = {
        alert: '<div class="alert  "></div>',
        content: '<strong id="js_msg">Success!</strong><span class="close" data-dismiss="alert">x</span>'
    }

    var outer = {};

    function modifyOptions(options) {
        return $.extend({}, options);
    }

    outer.info = function(options) {
        options = modifyOptions(options);
        options.type = 'alert-info';
        outer.alert(options);
    }

    outer.danger = function(options) {
        options = modifyOptions(options);
        options.type = 'alert-danger';
        outer.alert(options);
    }

    outer.warning = function(options) {
        options = modifyOptions(options);
        options.type = 'alert-warning';
        outer.alert(options);
    }

    outer.success = function(options) {
        options = modifyOptions(options);
        options.type = 'alert-success';
        outer.alert(options);
    }

    outer.alert = function(options) {
    	
        options = modifyOptions(options);
        var type = options.type;
        var content = template.content + options.content;
        var parent = options.parent;
        console.log(content)
        var alert = $(template.alert);
        alert.addClass(type);
        alert.html(content);

        if(parent == null) {
            parent = '#polar-body';
        }
        alert.appendTo($(parent));
        alert.alert();
        alert.on('closed.bs.alert', function () {
            alert.remove();
        });
    }

    return outer;
}));