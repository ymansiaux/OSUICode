common <- "%alerts-common {
  position: relative;
  padding: $alert-padding-y $alert-padding-x;
  margin-bottom: $alert-margin-bottom;
}"
alert_red <- ".alert-red {
  @extend %alerts-common;
  color: red;
}
"
alert_green <- ".alert-green {
  @extend %alerts-common;
  color: &green;
}
"


sass(input = list(
    "alert-padding-y" = "5px",
    "alert-padding-x" = "10px",
    "alert-margin-bottom" = "2px",
    "green" = "#008000",
    common,
    alert_red,
    alert_green
))
