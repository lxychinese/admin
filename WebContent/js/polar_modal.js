/**
 * Created by user on 2015/1/5.
 */

(function(root, factory){
    'use strict';
    root.polarbox = factory(root.jQuery);

}(this, function init($) {

    var template = {
        dialog: '<div class="modal polar-modal">' +
            '     <div class="modal-dialog">' +
            '      <div class="modal-content">' +
            '       <div class="modal-header">' +
            '        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>' +
            '        <span class="modal-title"></span>' +
            '       </div>' +
            '       <div class="modal-body"></div>' +
            '       <div class="modal-footer"></div>' +
            '      </div>' +
            '     </div>' +
            '    </div>'
    }

    var outer = {};

    function modifyOptions(options) {
        return $.extend({}, options);
    }

    function processCallBack(e, dialog, callback) {
        e.stopPropagation();
        e.preventDefault();
        if(callback != null) {
            callback(e);
        }

        dialog.modal('hide');
    }

    outer.alert = function(options) {
        options = modifyOptions(options);
        options.buttons = ['close'];
        outer.dialog(options);
    }

    outer.confirm = function(options) {
        options = modifyOptions(options);
        options.buttons = ['ok', 'cancel'];
        outer.dialog(options);
    }

    outer.dialog = function(options) {
        var dialog = $('.polar-modal');
        if(dialog.length >= 1) return;

        options = modifyOptions(options);

        var s_title = options.title || '提示信息';
        var s_body = options.body || '';
        var s_buttons = options.buttons || [];
        var callback = options.callback;
        var closeCallback = options.closeCallback;

        dialog = $(template.dialog);
        var title = dialog.find('.modal-title');
        var body = dialog.find('.modal-body');
        var footer = dialog.find('.modal-footer');


        title.html(s_title);
        body.html(s_body);

        var buttonsStr = '';
        $.each(s_buttons, function(idx, ele) {
            if(ele == 'close') {
                buttonsStr += '<button type="button" class="btn btn-success" data-dismiss="modal" data-polar-sign="' + ele + '">关闭</button>';
            }
            if(ele == 'ok') {
                buttonsStr += '<button type="button" class="btn btn-success" data-polar-sign="' + ele + '">确认</button>';
            }
            if(ele == 'cancel') {
                buttonsStr += '<button type="button" class="btn btn-info" data-dismiss="modal" data-polar-sign="' + ele + '">取消</button>';
            }
        });
        footer.html(buttonsStr);


        dialog.on("hidden.bs.modal", function(e) {
            if (e.target === this) {
                dialog.remove();
            }
        });

        dialog.on("click", ".modal-footer button", function(e) {
            var sign = $(this).data("polar-sign");
            e.sign = sign;
            processCallBack(e, dialog, callback);
        });

        dialog.on("click", "button.close", function(e) {
            processCallBack(e, dialog, closeCallback);
        });

        dialog.modal({
            backdrop: 'static',
            keyboard: false,
            show: false
        });

        dialog.modal('show');
    }

    return outer;
}));
