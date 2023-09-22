-- Para usar Basta selecionar o processo do jogo Lies Of P, colocar este script no Show Cheat Table Lua Script do Cheat engine
-- Para usar Basta selecionar o processo do jogo Lies Of P, colocar este script no Show Cheat Table Lua Script do Cheat engine
-- Para usar Basta selecionar o processo do jogo Lies Of P, colocar este script no Show Cheat Table Lua Script do Cheat engine

local form = createForm()
form.Caption = "Lawrence"
form.Width = 400
form.Left = 200
form.Top = 150

local EditValue = createEdit(form)
EditValue.Caption = "0"
EditValue.Width = 140

local ValorAtual = createLabel(form)
ValorAtual.Caption = "0"
ValorAtual.Caption = "Valor Atual: "
ValorAtual.Top = 60
ValorAtual.Left = 1
ValorAtual.WIdth = 20

local btn5 = createButton(form)
btn5.Caption = "Quartzo"
btn5.Top = 30
btn5.Left = 310
btn5.OnClick = function(form)
local textoEditValue = EditValue.Text
if textoEditValue ~= "" then
local valorQrz = tonumber(EditValue.Text)
local enderecoQrz = 0x79BC5180
writeInteger(enderecoQrz, valorQrz)

ValorAtual.Caption = "Valor Atual: " .. tostring(valorQrz)
else
ValorAtual.Caption = "Nenhum Valor Adicionado"
end
end

local btn4 = createButton(form)
btn4.Caption = "Lua Crescente"
btn4.Top = 30
btn4.Left = 200
btn4.Width = 100
btn4.OnClick = function()
    local textoEditValue = EditValue.Text
    if textoEditValue ~= "" then
    local valorCrs = tonumber(EditValue.Text)
    local enderecoCrs = 0x0F7DEA80
    writeInteger(enderecoCrs, valorCrs)

    ValorAtual.Caption = "Valor Atual: " .. tostring(valorCrs)
    else
    ValorAtual.Caption = "Nenhum Valor Adicionado"
    end
end

local btn3 = createButton(form)
btn3.Caption = "Lua Oculta"
btn3.Top = 30
btn3.Left = 110
btn3.OnClick = function()
    local textoEditValue = EditValue.Text
    if textoEditValue ~= "" then
    local valorlua = tonumber(EditValue.Text)
    local enderecolua = 0xFDDA1940
    writeInteger(enderecolua, valorlua)

    ValorAtual.Caption = "Valor Atual: " .. tostring(valorlua)
    else
    ValorAtual.Caption = "Nenhum Valor Adicionado"
    end
end

local btn2 = createButton(form)
btn2.Caption = "Informações"
btn2.Left = 2
btn2.Top = 90
local btn2 = createButton(form)
btn2.Caption = "Informações"
btn2.Left = 2
btn2.Top = 90
btn2.OnClick = function()
    local doc = createForm()
    doc.Caption = "Informações"
    doc.Width = 500
    doc.Height = 300

    local docLabel = createLabel(doc)
    docLabel.Caption = "Feito Para o Jogo Lies Of P, Uma GUI bem simples progamada em lua"
    docLabel.Width = 480
    docLabel.Height = 200
    docLabel.Left = 10
    docLabel.Top = 10

    local creditos = createLabel(doc)
    creditos.Caption = "Desenvolvedor: Lawrence"
    creditos.Width = 480
    creditos.Left = 20
    creditos.Top = 40

    local contatos = createLabel(doc)
    contatos.Caption = "Se quiser pode me chamar no discord: lawrencelud"
    contatos.Left = 20
    contatos.Top = 60
end

local btn1 = createButton(form)
btn1.Caption = "Frascos"
btn1.OnClick = function()
local textoEditValue = EditValue.Text
if textoEditValue ~= "" then
local valor = tonumber(EditValue.Text)
local endereco = 0x10292A040
writeInteger(endereco, valor)

ValorAtual.Caption = "Valor Atual: " .. tostring(valor)
else
ValorAtual.Caption = "Nenhum Valor Adicionado"
end
end
btn1.Top = 30
btn1.Left = 1
btn1.Width = 100

form.show()
