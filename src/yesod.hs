{-# LANGUAGE OverloadedStrings #-}
import System.Environment
import Yesod.Core
import Network.Wai.Handler.Warp
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import Control.Monad.Trans.Writer.Lazy

deep :: Writer LiteApp ()
deep = dispatchTo (return ("deep" :: T.Text))

main :: IO ()
main = do
    port:_ <- getArgs
    (>>= run (read port)) . toWaiAppPlain . liteApp $ onMethod "GET" $ do
        onStatic "echo" $ onStatic "hello-world" $ dispatchTo (return ("Hello World" :: T.Text))
        onStatic "echo" $ onStatic "plain" $ withDynamic $ \p -> withDynamic $ \i ->
            dispatchTo (return . TL.fromChunks $ replicate i p)

        onStatic "deep" $ onStatic "foo" $ onStatic "bar" $ onStatic "baz" $ do
            onStatic "0" deep
            onStatic "1" deep
            onStatic "2" deep
            onStatic "3" deep
            onStatic "4" deep
            onStatic "5" deep
            onStatic "6" deep
            onStatic "7" deep
            onStatic "8" deep
            onStatic "9" deep
            onStatic "10" deep
            onStatic "11" deep
            onStatic "12" deep
            onStatic "13" deep
            onStatic "14" deep
            onStatic "15" deep
            onStatic "16" deep
            onStatic "17" deep
            onStatic "18" deep
            onStatic "19" deep
            onStatic "20" deep
            onStatic "21" deep
            onStatic "22" deep
            onStatic "23" deep
            onStatic "24" deep
            onStatic "25" deep
            onStatic "26" deep
            onStatic "27" deep
            onStatic "28" deep
            onStatic "29" deep
            onStatic "30" deep
            onStatic "31" deep
            onStatic "32" deep
            onStatic "33" deep
            onStatic "34" deep
            onStatic "35" deep
            onStatic "36" deep
            onStatic "37" deep
            onStatic "38" deep
            onStatic "39" deep
            onStatic "40" deep
            onStatic "41" deep
            onStatic "42" deep
            onStatic "43" deep
            onStatic "44" deep
            onStatic "45" deep
            onStatic "46" deep
            onStatic "47" deep
            onStatic "48" deep
            onStatic "49" deep
            onStatic "50" deep
            onStatic "51" deep
            onStatic "52" deep
            onStatic "53" deep
            onStatic "54" deep
            onStatic "55" deep
            onStatic "56" deep
            onStatic "57" deep
            onStatic "58" deep
            onStatic "59" deep
            onStatic "60" deep
            onStatic "61" deep
            onStatic "62" deep
            onStatic "63" deep
            onStatic "64" deep
            onStatic "65" deep
            onStatic "66" deep
            onStatic "67" deep
            onStatic "68" deep
            onStatic "69" deep
            onStatic "70" deep
            onStatic "71" deep
            onStatic "72" deep
            onStatic "73" deep
            onStatic "74" deep
            onStatic "75" deep
            onStatic "76" deep
            onStatic "77" deep
            onStatic "78" deep
            onStatic "79" deep
            onStatic "80" deep
            onStatic "81" deep
            onStatic "82" deep
            onStatic "83" deep
            onStatic "84" deep
            onStatic "85" deep
            onStatic "86" deep
            onStatic "87" deep
            onStatic "88" deep
            onStatic "89" deep
            onStatic "90" deep
            onStatic "91" deep
            onStatic "92" deep
            onStatic "93" deep
            onStatic "94" deep
            onStatic "95" deep
            onStatic "96" deep
            onStatic "97" deep
            onStatic "98" deep
            onStatic "99" deep
            onStatic "100" deep

        onStatic "after" $ dispatchTo (return ("after" :: T.Text))
