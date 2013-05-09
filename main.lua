
local _W = display.contentWidth
local _H = display.contentHeight

--ボタン
local BTN

--テキスト
local modelText

--変数
local isTall

isTall = (("iPhone" == system.getInfo("model") or "iPod touch" == system.getInfo("model")) and ( display.pixelHeight > 960 ) )

BTN = display.newRect(0, 0, 100, 100)
BTN:setFillColor(250,130,10)
BTN.x = _W/2
if(isTall)then
	BTN.y = display.pixelHeight -100
else
	BTN.y = _H -100
end


modelText = display.newText( "", 0, 0, nil, 50)
--端末のピクセルHを取得
modelText.text = display.pixelHeight
--端末のモデルを取得
--modelText.text = system.getInfo("model")

modelText.x = _W/2
if(isTall)then
	modelText.y = display.screenOriginY +100
else
	modelText.y = 100
end

