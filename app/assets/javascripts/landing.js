// Accepts any class name
$('#menu-toggle').click(function(e)
    {
        e.preventDefault();
        $('.navigation-fixed-container').fadeToggle();
    }
);

$('#contact-toggle').click(function(e)
    {
        e.preventDefault();
        $('#contact-toggle').find('i').toggleClass('flip');
        $('.contact-form-fields').fadeToggle();
    }
);