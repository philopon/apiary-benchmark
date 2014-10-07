{-# LANGUAGE OverloadedStrings #-}

import System.Environment
import Web.Scotty
import qualified Data.ByteString as S
import qualified Data.ByteString.Lazy as L
import Network.Wai.Handler.Warp (run)
import Control.Concurrent (runInUnboundThread)

deep :: ActionM ()
deep = do
    setHeader "Content-Type" "text/plain"
    raw "deep"
{-# INLINE deep #-}

main :: IO ()
main = do
    port:_ <- getArgs
    (>>= runInUnboundThread . run (read port)) . scottyApp $ do
        get "/echo/hello-world" $ do
            setHeader "Content-Type" "text/plain"
            raw "Hello World"
        get "/echo/plain/:param/:int" $ do
            p <- param "param"
            i <- param "int"
            setHeader "Content-Type" "text/plain"
            raw . L.fromChunks $ replicate i p

        get "/deep/foo/bar/baz/0" $ deep
        get "/deep/foo/bar/baz/1" $ deep
        get "/deep/foo/bar/baz/2" $ deep
        get "/deep/foo/bar/baz/3" $ deep
        get "/deep/foo/bar/baz/4" $ deep
        get "/deep/foo/bar/baz/5" $ deep
        get "/deep/foo/bar/baz/6" $ deep
        get "/deep/foo/bar/baz/7" $ deep
        get "/deep/foo/bar/baz/8" $ deep
        get "/deep/foo/bar/baz/9" $ deep
        get "/deep/foo/bar/baz/10" $ deep
        get "/deep/foo/bar/baz/11" $ deep
        get "/deep/foo/bar/baz/12" $ deep
        get "/deep/foo/bar/baz/13" $ deep
        get "/deep/foo/bar/baz/14" $ deep
        get "/deep/foo/bar/baz/15" $ deep
        get "/deep/foo/bar/baz/16" $ deep
        get "/deep/foo/bar/baz/17" $ deep
        get "/deep/foo/bar/baz/18" $ deep
        get "/deep/foo/bar/baz/19" $ deep
        get "/deep/foo/bar/baz/20" $ deep
        get "/deep/foo/bar/baz/21" $ deep
        get "/deep/foo/bar/baz/22" $ deep
        get "/deep/foo/bar/baz/23" $ deep
        get "/deep/foo/bar/baz/24" $ deep
        get "/deep/foo/bar/baz/25" $ deep
        get "/deep/foo/bar/baz/26" $ deep
        get "/deep/foo/bar/baz/27" $ deep
        get "/deep/foo/bar/baz/28" $ deep
        get "/deep/foo/bar/baz/29" $ deep
        get "/deep/foo/bar/baz/30" $ deep
        get "/deep/foo/bar/baz/31" $ deep
        get "/deep/foo/bar/baz/32" $ deep
        get "/deep/foo/bar/baz/33" $ deep
        get "/deep/foo/bar/baz/34" $ deep
        get "/deep/foo/bar/baz/35" $ deep
        get "/deep/foo/bar/baz/36" $ deep
        get "/deep/foo/bar/baz/37" $ deep
        get "/deep/foo/bar/baz/38" $ deep
        get "/deep/foo/bar/baz/39" $ deep
        get "/deep/foo/bar/baz/40" $ deep
        get "/deep/foo/bar/baz/41" $ deep
        get "/deep/foo/bar/baz/42" $ deep
        get "/deep/foo/bar/baz/43" $ deep
        get "/deep/foo/bar/baz/44" $ deep
        get "/deep/foo/bar/baz/45" $ deep
        get "/deep/foo/bar/baz/46" $ deep
        get "/deep/foo/bar/baz/47" $ deep
        get "/deep/foo/bar/baz/48" $ deep
        get "/deep/foo/bar/baz/49" $ deep
        get "/deep/foo/bar/baz/50" $ deep
        get "/deep/foo/bar/baz/51" $ deep
        get "/deep/foo/bar/baz/52" $ deep
        get "/deep/foo/bar/baz/53" $ deep
        get "/deep/foo/bar/baz/54" $ deep
        get "/deep/foo/bar/baz/55" $ deep
        get "/deep/foo/bar/baz/56" $ deep
        get "/deep/foo/bar/baz/57" $ deep
        get "/deep/foo/bar/baz/58" $ deep
        get "/deep/foo/bar/baz/59" $ deep
        get "/deep/foo/bar/baz/60" $ deep
        get "/deep/foo/bar/baz/61" $ deep
        get "/deep/foo/bar/baz/62" $ deep
        get "/deep/foo/bar/baz/63" $ deep
        get "/deep/foo/bar/baz/64" $ deep
        get "/deep/foo/bar/baz/65" $ deep
        get "/deep/foo/bar/baz/66" $ deep
        get "/deep/foo/bar/baz/67" $ deep
        get "/deep/foo/bar/baz/68" $ deep
        get "/deep/foo/bar/baz/69" $ deep
        get "/deep/foo/bar/baz/70" $ deep
        get "/deep/foo/bar/baz/71" $ deep
        get "/deep/foo/bar/baz/72" $ deep
        get "/deep/foo/bar/baz/73" $ deep
        get "/deep/foo/bar/baz/74" $ deep
        get "/deep/foo/bar/baz/75" $ deep
        get "/deep/foo/bar/baz/76" $ deep
        get "/deep/foo/bar/baz/77" $ deep
        get "/deep/foo/bar/baz/78" $ deep
        get "/deep/foo/bar/baz/79" $ deep
        get "/deep/foo/bar/baz/80" $ deep
        get "/deep/foo/bar/baz/81" $ deep
        get "/deep/foo/bar/baz/82" $ deep
        get "/deep/foo/bar/baz/83" $ deep
        get "/deep/foo/bar/baz/84" $ deep
        get "/deep/foo/bar/baz/85" $ deep
        get "/deep/foo/bar/baz/86" $ deep
        get "/deep/foo/bar/baz/87" $ deep
        get "/deep/foo/bar/baz/88" $ deep
        get "/deep/foo/bar/baz/89" $ deep
        get "/deep/foo/bar/baz/90" $ deep
        get "/deep/foo/bar/baz/91" $ deep
        get "/deep/foo/bar/baz/92" $ deep
        get "/deep/foo/bar/baz/93" $ deep
        get "/deep/foo/bar/baz/94" $ deep
        get "/deep/foo/bar/baz/95" $ deep
        get "/deep/foo/bar/baz/96" $ deep
        get "/deep/foo/bar/baz/97" $ deep
        get "/deep/foo/bar/baz/98" $ deep
        get "/deep/foo/bar/baz/99" $ deep
        get "/deep/foo/bar/baz/100" $ deep

        get "/after" $ do
            setHeader "Content-Type" "text/plain"
            raw "after"
