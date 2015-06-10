{-# LANGUAGE OverloadedStrings, TemplateHaskell, QuasiQuotes, TypeFamilies, ViewPatterns, MultiParamTypeClasses #-}
module Main (main, resourcesApp) where

import Network.Wai.Middleware.Routes
import Network.Wai.Handler.Warp
import qualified Data.Text.Lazy as T
import Data.Text.Lazy (Text)
import System.Environment (getArgs)
import Data.Monoid (mempty, mappend)
import Control.Concurrent (runInUnboundThread)

data App = App

mkRoute "App" [parseRoutes|
/echo EchoR:
    /hello-world HelloWorldR
    /plain/#Text/#Int PlainR
/deep/foo/bar/baz DeepR:
    /0 Num0R
    /1 Num1R
    /2 Num2R
    /3 Num3R
    /4 Num4R
    /5 Num5R
    /6 Num6R
    /7 Num7R
    /8 Num8R
    /9 Num9R
    /10 Num10R
    /11 Num11R
    /12 Num12R
    /13 Num13R
    /14 Num14R
    /15 Num15R
    /16 Num16R
    /17 Num17R
    /18 Num18R
    /19 Num19R
    /20 Num20R
    /21 Num21R
    /22 Num22R
    /23 Num23R
    /24 Num24R
    /25 Num25R
    /26 Num26R
    /27 Num27R
    /28 Num28R
    /29 Num29R
    /30 Num30R
    /31 Num31R
    /32 Num32R
    /33 Num33R
    /34 Num34R
    /35 Num35R
    /36 Num36R
    /37 Num37R
    /38 Num38R
    /39 Num39R
    /40 Num40R
    /41 Num41R
    /42 Num42R
    /43 Num43R
    /44 Num44R
    /45 Num45R
    /46 Num46R
    /47 Num47R
    /48 Num48R
    /49 Num49R
    /50 Num50R
    /51 Num51R
    /52 Num52R
    /53 Num53R
    /54 Num54R
    /55 Num55R
    /56 Num56R
    /57 Num57R
    /58 Num58R
    /59 Num59R
    /60 Num60R
    /61 Num61R
    /62 Num62R
    /63 Num63R
    /64 Num64R
    /65 Num65R
    /66 Num66R
    /67 Num67R
    /68 Num68R
    /69 Num69R
    /70 Num70R
    /71 Num71R
    /72 Num72R
    /73 Num73R
    /74 Num74R
    /75 Num75R
    /76 Num76R
    /77 Num77R
    /78 Num78R
    /79 Num79R
    /80 Num80R
    /81 Num81R
    /82 Num82R
    /83 Num83R
    /84 Num84R
    /85 Num85R
    /86 Num86R
    /87 Num87R
    /88 Num88R
    /89 Num89R
    /90 Num90R
    /91 Num91R
    /92 Num92R
    /93 Num93R
    /94 Num94R
    /95 Num95R
    /96 Num96R
    /97 Num97R
    /98 Num98R
    /99 Num99R
    /100 Num100R
/after AfterR
|]

returnT :: Text -> Handler App
returnT = runHandlerM . text

handleNum0R :: Handler App; handleNum0R = returnT "deep"
handleNum1R :: Handler App; handleNum1R = returnT "deep"
handleNum2R :: Handler App; handleNum2R = returnT "deep"
handleNum3R :: Handler App; handleNum3R = returnT "deep"
handleNum4R :: Handler App; handleNum4R = returnT "deep"
handleNum5R :: Handler App; handleNum5R = returnT "deep"
handleNum6R :: Handler App; handleNum6R = returnT "deep"
handleNum7R :: Handler App; handleNum7R = returnT "deep"
handleNum8R :: Handler App; handleNum8R = returnT "deep"
handleNum9R :: Handler App; handleNum9R = returnT "deep"
handleNum10R :: Handler App; handleNum10R = returnT "deep"
handleNum11R :: Handler App; handleNum11R = returnT "deep"
handleNum12R :: Handler App; handleNum12R = returnT "deep"
handleNum13R :: Handler App; handleNum13R = returnT "deep"
handleNum14R :: Handler App; handleNum14R = returnT "deep"
handleNum15R :: Handler App; handleNum15R = returnT "deep"
handleNum16R :: Handler App; handleNum16R = returnT "deep"
handleNum17R :: Handler App; handleNum17R = returnT "deep"
handleNum18R :: Handler App; handleNum18R = returnT "deep"
handleNum19R :: Handler App; handleNum19R = returnT "deep"
handleNum20R :: Handler App; handleNum20R = returnT "deep"
handleNum21R :: Handler App; handleNum21R = returnT "deep"
handleNum22R :: Handler App; handleNum22R = returnT "deep"
handleNum23R :: Handler App; handleNum23R = returnT "deep"
handleNum24R :: Handler App; handleNum24R = returnT "deep"
handleNum25R :: Handler App; handleNum25R = returnT "deep"
handleNum26R :: Handler App; handleNum26R = returnT "deep"
handleNum27R :: Handler App; handleNum27R = returnT "deep"
handleNum28R :: Handler App; handleNum28R = returnT "deep"
handleNum29R :: Handler App; handleNum29R = returnT "deep"
handleNum30R :: Handler App; handleNum30R = returnT "deep"
handleNum31R :: Handler App; handleNum31R = returnT "deep"
handleNum32R :: Handler App; handleNum32R = returnT "deep"
handleNum33R :: Handler App; handleNum33R = returnT "deep"
handleNum34R :: Handler App; handleNum34R = returnT "deep"
handleNum35R :: Handler App; handleNum35R = returnT "deep"
handleNum36R :: Handler App; handleNum36R = returnT "deep"
handleNum37R :: Handler App; handleNum37R = returnT "deep"
handleNum38R :: Handler App; handleNum38R = returnT "deep"
handleNum39R :: Handler App; handleNum39R = returnT "deep"
handleNum40R :: Handler App; handleNum40R = returnT "deep"
handleNum41R :: Handler App; handleNum41R = returnT "deep"
handleNum42R :: Handler App; handleNum42R = returnT "deep"
handleNum43R :: Handler App; handleNum43R = returnT "deep"
handleNum44R :: Handler App; handleNum44R = returnT "deep"
handleNum45R :: Handler App; handleNum45R = returnT "deep"
handleNum46R :: Handler App; handleNum46R = returnT "deep"
handleNum47R :: Handler App; handleNum47R = returnT "deep"
handleNum48R :: Handler App; handleNum48R = returnT "deep"
handleNum49R :: Handler App; handleNum49R = returnT "deep"
handleNum50R :: Handler App; handleNum50R = returnT "deep"
handleNum51R :: Handler App; handleNum51R = returnT "deep"
handleNum52R :: Handler App; handleNum52R = returnT "deep"
handleNum53R :: Handler App; handleNum53R = returnT "deep"
handleNum54R :: Handler App; handleNum54R = returnT "deep"
handleNum55R :: Handler App; handleNum55R = returnT "deep"
handleNum56R :: Handler App; handleNum56R = returnT "deep"
handleNum57R :: Handler App; handleNum57R = returnT "deep"
handleNum58R :: Handler App; handleNum58R = returnT "deep"
handleNum59R :: Handler App; handleNum59R = returnT "deep"
handleNum60R :: Handler App; handleNum60R = returnT "deep"
handleNum61R :: Handler App; handleNum61R = returnT "deep"
handleNum62R :: Handler App; handleNum62R = returnT "deep"
handleNum63R :: Handler App; handleNum63R = returnT "deep"
handleNum64R :: Handler App; handleNum64R = returnT "deep"
handleNum65R :: Handler App; handleNum65R = returnT "deep"
handleNum66R :: Handler App; handleNum66R = returnT "deep"
handleNum67R :: Handler App; handleNum67R = returnT "deep"
handleNum68R :: Handler App; handleNum68R = returnT "deep"
handleNum69R :: Handler App; handleNum69R = returnT "deep"
handleNum70R :: Handler App; handleNum70R = returnT "deep"
handleNum71R :: Handler App; handleNum71R = returnT "deep"
handleNum72R :: Handler App; handleNum72R = returnT "deep"
handleNum73R :: Handler App; handleNum73R = returnT "deep"
handleNum74R :: Handler App; handleNum74R = returnT "deep"
handleNum75R :: Handler App; handleNum75R = returnT "deep"
handleNum76R :: Handler App; handleNum76R = returnT "deep"
handleNum77R :: Handler App; handleNum77R = returnT "deep"
handleNum78R :: Handler App; handleNum78R = returnT "deep"
handleNum79R :: Handler App; handleNum79R = returnT "deep"
handleNum80R :: Handler App; handleNum80R = returnT "deep"
handleNum81R :: Handler App; handleNum81R = returnT "deep"
handleNum82R :: Handler App; handleNum82R = returnT "deep"
handleNum83R :: Handler App; handleNum83R = returnT "deep"
handleNum84R :: Handler App; handleNum84R = returnT "deep"
handleNum85R :: Handler App; handleNum85R = returnT "deep"
handleNum86R :: Handler App; handleNum86R = returnT "deep"
handleNum87R :: Handler App; handleNum87R = returnT "deep"
handleNum88R :: Handler App; handleNum88R = returnT "deep"
handleNum89R :: Handler App; handleNum89R = returnT "deep"
handleNum90R :: Handler App; handleNum90R = returnT "deep"
handleNum91R :: Handler App; handleNum91R = returnT "deep"
handleNum92R :: Handler App; handleNum92R = returnT "deep"
handleNum93R :: Handler App; handleNum93R = returnT "deep"
handleNum94R :: Handler App; handleNum94R = returnT "deep"
handleNum95R :: Handler App; handleNum95R = returnT "deep"
handleNum96R :: Handler App; handleNum96R = returnT "deep"
handleNum97R :: Handler App; handleNum97R = returnT "deep"
handleNum98R :: Handler App; handleNum98R = returnT "deep"
handleNum99R :: Handler App; handleNum99R = returnT "deep"
handleNum100R :: Handler App; handleNum100R = returnT "deep"

handleHelloWorldR :: Handler App
handleHelloWorldR = returnT "Hello World"

handleAfterR :: Handler App
handleAfterR = returnT "after"

handlePlainR :: Text -> Int -> Handler App
handlePlainR p i = returnT builder
  where
    builder =
        loop i
      where
        loop 0 = mempty
        loop 1 = p
        loop x = p `mappend` loop (x - 1)

main :: IO ()
main = do
    port:_ <- getArgs
    toWaiApp (route App) >>= runInUnboundThread . run (read port)
