// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap
//= require materialize-sprockets
//= require bootstrap-sprockets
//= require jquery.backstretch
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function () {

    $(function () {
        $('[data-toggle="popover"]').popover()
    })



    var url = window.location;
    $('ul a[href="' + url + '"]').parent().addClass('active');
    $('ul a').filter(function () {
        return this.href == url;
    }).parent().addClass('active');


    if (window.location.pathname == '/') {
        //Hide the element.
        jQuery('.topback').show();
        jQuery('.fixnav').hide();
    }
    else {
        jQuery('.topback').hide();
        jQuery('.fixnav').show();
    }



    $("#types_select").change(function (e) {
        //e.target.value
        e.preventDefault();
        $(".smalltypes").each(function (index, div) {
            $(div).removeClass("hidden");
            if ($(div).attr('typeid') != e.target.value.toString())
                $(div).addClass("hidden");
        });
    });

    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var href = $(e.target).attr('href');
        var $curr = $(".process-model  a[href='" + href + "']").parent();

        $('.process-model li').removeClass();

        $curr.addClass("active");
        $curr.prevAll().addClass("visited");
    });

});

