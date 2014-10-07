{-# LANGUAGE OverloadedStrings, TemplateHaskell, QuasiQuotes, TypeFamilies, ViewPatterns #-}
module Main (main, Widget, resourcesApp) where
import Yesod.Core
import Data.ByteString (ByteString)
import Data.Text (Text)
import System.Environment (getArgs)
import Network.Wai
import Network.Wai.Handler.Warp (run)
import Control.Concurrent (runInUnboundThread)
import Control.Monad.Trans.Resource (InternalState)
import System.IO.Unsafe (unsafePerformIO)
import Data.IORef (newIORef)
import Network.HTTP.Types (status200)
import Blaze.ByteString.Builder (fromByteString)
import Blaze.ByteString.Builder.Char.Utf8 (fromText)
import Data.Monoid (mempty, mappend)

fakeInternalState :: InternalState
fakeInternalState = unsafePerformIO $ newIORef $ error "fakeInternalState forced"
{-# NOINLINE fakeInternalState #-}

data App = App
instance Yesod App where
    makeSessionBackend _ = return Nothing
    shouldLog _ _ _ = False
    {-# INLINE shouldLog #-}
    yesodMiddleware = id
    {-# INLINE yesodMiddleware #-}
    cleanPath _ = Right
    {-# INLINE cleanPath #-}
    yesodWithInternalState _ _ = ($ fakeInternalState)
    {-# INLINE yesodWithInternalState #-}
    maximumContentLength _ _ = Nothing
    {-# INLINE maximumContentLength #-}

mkYesod "App" [parseRoutes|
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

returnBS :: ByteString -> Handler TypedContent
returnBS = sendWaiResponse
         . responseBuilder status200 [("Content-Type", "text/plain")]
         . fromByteString

handleNum0R :: Handler TypedContent; handleNum0R = returnBS "deep"
handleNum1R :: Handler TypedContent; handleNum1R = returnBS "deep"
handleNum2R :: Handler TypedContent; handleNum2R = returnBS "deep"
handleNum3R :: Handler TypedContent; handleNum3R = returnBS "deep"
handleNum4R :: Handler TypedContent; handleNum4R = returnBS "deep"
handleNum5R :: Handler TypedContent; handleNum5R = returnBS "deep"
handleNum6R :: Handler TypedContent; handleNum6R = returnBS "deep"
handleNum7R :: Handler TypedContent; handleNum7R = returnBS "deep"
handleNum8R :: Handler TypedContent; handleNum8R = returnBS "deep"
handleNum9R :: Handler TypedContent; handleNum9R = returnBS "deep"
handleNum10R :: Handler TypedContent; handleNum10R = returnBS "deep"
handleNum11R :: Handler TypedContent; handleNum11R = returnBS "deep"
handleNum12R :: Handler TypedContent; handleNum12R = returnBS "deep"
handleNum13R :: Handler TypedContent; handleNum13R = returnBS "deep"
handleNum14R :: Handler TypedContent; handleNum14R = returnBS "deep"
handleNum15R :: Handler TypedContent; handleNum15R = returnBS "deep"
handleNum16R :: Handler TypedContent; handleNum16R = returnBS "deep"
handleNum17R :: Handler TypedContent; handleNum17R = returnBS "deep"
handleNum18R :: Handler TypedContent; handleNum18R = returnBS "deep"
handleNum19R :: Handler TypedContent; handleNum19R = returnBS "deep"
handleNum20R :: Handler TypedContent; handleNum20R = returnBS "deep"
handleNum21R :: Handler TypedContent; handleNum21R = returnBS "deep"
handleNum22R :: Handler TypedContent; handleNum22R = returnBS "deep"
handleNum23R :: Handler TypedContent; handleNum23R = returnBS "deep"
handleNum24R :: Handler TypedContent; handleNum24R = returnBS "deep"
handleNum25R :: Handler TypedContent; handleNum25R = returnBS "deep"
handleNum26R :: Handler TypedContent; handleNum26R = returnBS "deep"
handleNum27R :: Handler TypedContent; handleNum27R = returnBS "deep"
handleNum28R :: Handler TypedContent; handleNum28R = returnBS "deep"
handleNum29R :: Handler TypedContent; handleNum29R = returnBS "deep"
handleNum30R :: Handler TypedContent; handleNum30R = returnBS "deep"
handleNum31R :: Handler TypedContent; handleNum31R = returnBS "deep"
handleNum32R :: Handler TypedContent; handleNum32R = returnBS "deep"
handleNum33R :: Handler TypedContent; handleNum33R = returnBS "deep"
handleNum34R :: Handler TypedContent; handleNum34R = returnBS "deep"
handleNum35R :: Handler TypedContent; handleNum35R = returnBS "deep"
handleNum36R :: Handler TypedContent; handleNum36R = returnBS "deep"
handleNum37R :: Handler TypedContent; handleNum37R = returnBS "deep"
handleNum38R :: Handler TypedContent; handleNum38R = returnBS "deep"
handleNum39R :: Handler TypedContent; handleNum39R = returnBS "deep"
handleNum40R :: Handler TypedContent; handleNum40R = returnBS "deep"
handleNum41R :: Handler TypedContent; handleNum41R = returnBS "deep"
handleNum42R :: Handler TypedContent; handleNum42R = returnBS "deep"
handleNum43R :: Handler TypedContent; handleNum43R = returnBS "deep"
handleNum44R :: Handler TypedContent; handleNum44R = returnBS "deep"
handleNum45R :: Handler TypedContent; handleNum45R = returnBS "deep"
handleNum46R :: Handler TypedContent; handleNum46R = returnBS "deep"
handleNum47R :: Handler TypedContent; handleNum47R = returnBS "deep"
handleNum48R :: Handler TypedContent; handleNum48R = returnBS "deep"
handleNum49R :: Handler TypedContent; handleNum49R = returnBS "deep"
handleNum50R :: Handler TypedContent; handleNum50R = returnBS "deep"
handleNum51R :: Handler TypedContent; handleNum51R = returnBS "deep"
handleNum52R :: Handler TypedContent; handleNum52R = returnBS "deep"
handleNum53R :: Handler TypedContent; handleNum53R = returnBS "deep"
handleNum54R :: Handler TypedContent; handleNum54R = returnBS "deep"
handleNum55R :: Handler TypedContent; handleNum55R = returnBS "deep"
handleNum56R :: Handler TypedContent; handleNum56R = returnBS "deep"
handleNum57R :: Handler TypedContent; handleNum57R = returnBS "deep"
handleNum58R :: Handler TypedContent; handleNum58R = returnBS "deep"
handleNum59R :: Handler TypedContent; handleNum59R = returnBS "deep"
handleNum60R :: Handler TypedContent; handleNum60R = returnBS "deep"
handleNum61R :: Handler TypedContent; handleNum61R = returnBS "deep"
handleNum62R :: Handler TypedContent; handleNum62R = returnBS "deep"
handleNum63R :: Handler TypedContent; handleNum63R = returnBS "deep"
handleNum64R :: Handler TypedContent; handleNum64R = returnBS "deep"
handleNum65R :: Handler TypedContent; handleNum65R = returnBS "deep"
handleNum66R :: Handler TypedContent; handleNum66R = returnBS "deep"
handleNum67R :: Handler TypedContent; handleNum67R = returnBS "deep"
handleNum68R :: Handler TypedContent; handleNum68R = returnBS "deep"
handleNum69R :: Handler TypedContent; handleNum69R = returnBS "deep"
handleNum70R :: Handler TypedContent; handleNum70R = returnBS "deep"
handleNum71R :: Handler TypedContent; handleNum71R = returnBS "deep"
handleNum72R :: Handler TypedContent; handleNum72R = returnBS "deep"
handleNum73R :: Handler TypedContent; handleNum73R = returnBS "deep"
handleNum74R :: Handler TypedContent; handleNum74R = returnBS "deep"
handleNum75R :: Handler TypedContent; handleNum75R = returnBS "deep"
handleNum76R :: Handler TypedContent; handleNum76R = returnBS "deep"
handleNum77R :: Handler TypedContent; handleNum77R = returnBS "deep"
handleNum78R :: Handler TypedContent; handleNum78R = returnBS "deep"
handleNum79R :: Handler TypedContent; handleNum79R = returnBS "deep"
handleNum80R :: Handler TypedContent; handleNum80R = returnBS "deep"
handleNum81R :: Handler TypedContent; handleNum81R = returnBS "deep"
handleNum82R :: Handler TypedContent; handleNum82R = returnBS "deep"
handleNum83R :: Handler TypedContent; handleNum83R = returnBS "deep"
handleNum84R :: Handler TypedContent; handleNum84R = returnBS "deep"
handleNum85R :: Handler TypedContent; handleNum85R = returnBS "deep"
handleNum86R :: Handler TypedContent; handleNum86R = returnBS "deep"
handleNum87R :: Handler TypedContent; handleNum87R = returnBS "deep"
handleNum88R :: Handler TypedContent; handleNum88R = returnBS "deep"
handleNum89R :: Handler TypedContent; handleNum89R = returnBS "deep"
handleNum90R :: Handler TypedContent; handleNum90R = returnBS "deep"
handleNum91R :: Handler TypedContent; handleNum91R = returnBS "deep"
handleNum92R :: Handler TypedContent; handleNum92R = returnBS "deep"
handleNum93R :: Handler TypedContent; handleNum93R = returnBS "deep"
handleNum94R :: Handler TypedContent; handleNum94R = returnBS "deep"
handleNum95R :: Handler TypedContent; handleNum95R = returnBS "deep"
handleNum96R :: Handler TypedContent; handleNum96R = returnBS "deep"
handleNum97R :: Handler TypedContent; handleNum97R = returnBS "deep"
handleNum98R :: Handler TypedContent; handleNum98R = returnBS "deep"
handleNum99R :: Handler TypedContent; handleNum99R = returnBS "deep"
handleNum100R :: Handler TypedContent; handleNum100R = returnBS "deep"

handleHelloWorldR :: Handler TypedContent
handleHelloWorldR = returnBS "Hello World"

handleAfterR :: Handler TypedContent
handleAfterR = returnBS "after"

handlePlainR :: Text -> Int -> Handler ()
handlePlainR p i =
    sendWaiResponse
  $ responseBuilder status200 [("Content-Type", "text/plain")] builder
  where
    p' = fromText p
    builder =
        loop i
      where
        loop 0 = mempty
        loop 1 = p'
        loop x = p' `mappend` loop (x - 1)

main :: IO ()
main = do
    port:_ <- getArgs
    app <- toWaiAppPlain App
    runInUnboundThread $ run (read port) app
