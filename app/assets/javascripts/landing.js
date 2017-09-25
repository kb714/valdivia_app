// Accepts any class name
$('#menu-toggle').click(function(e)
    {
        e.preventDefault();
        $('.navigation-fixed-container').fadeToggle();
    }
);