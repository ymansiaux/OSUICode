# Exo 10.7.3
$("#zizou").on("click", function(e) {
    $("li:eq(2)").
    addClass('amazing-ul').
    css({ 'color': 'red', 'font-size': '150%' });
});

<!DOCTYPE HTML>
    <html>
    <head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
        <!-- head content here -->
        </head>
        <body>
        <p id = "zizou"> coucou</p>

            <ul>
            <li>Item 1</li>
            <li>Item 2</li>
            <li>Item 3</li>
            <li>Item 4</li>
            <li>Item 5</li>
            </ul>
            </body>
            </html>



            # Exo 10.7.4

            $(function() {

                // recover the button inner html
                const toto = $('#your_button_id').attr("value");
                console.log(typeof toto);

                $('#your_button_id').click(function() {
                    var val = parseInt($('#your_button_id').attr("value")) + 1;
                    $(this).attr("value", val);
                    console.log(val);

                    // (1) increment button
                    // (2) add the button value to the inner text

                    // show alert given condition
                    if (val > 3) {
                        alert("super a 3");
                    }
                });

            });

        <!DOCTYPE HTML>
            <html>
            <head>
            <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
                <!-- head content here -->
                </head>
                <body>
                <button id="your_button_id" value=0>click</button>
                    </body>
                    </html>
