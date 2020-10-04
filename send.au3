main()

Func main()

$vAccessToken = "YOUR TOKEN"
$notif = '{"type": "note", "title": "Title", "body": "Message"}'
$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
                        $oHTTP.Open("POST", "https://api.pushbullet.com/v2/pushes", False)
                        $oHTTP.setRequestHeader("Authorization", "Bearer " & $vAccessToken)
                        $oHTTP.SetRequestHeader("Content-Type", "application/json")
                        $oHTTP.Send($notif)
                        TrayTip("Notif", "Sended", 1)
Sleep(2000)
Exit                   

EndFunc
