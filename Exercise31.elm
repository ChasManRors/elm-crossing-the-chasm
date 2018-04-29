module Exercise31 exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


free : Int -> Int -> Item -> Item
free purchase receive item =
    if item.qty >= purchase then
        { item | freeQty = receive }
    else
        item



-- Purchases of 5 or more receive 1 free.  Purchases of 10 or more receive 3 free.


logic : Item -> Item
logic =
    free 5 1 >> free 10 3


newCart : List Item
newCart =
    List.map logic cart


main : Html.Html msg
main =
    Html.text (toString newCart)
