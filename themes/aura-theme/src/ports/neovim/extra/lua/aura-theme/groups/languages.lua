local function createLanguagesGroup(palette, aura)
  return {
    -- CSS
    cssTagName = aura.Purple,
    cssSelectorOp = aura.Purple,
    cssSelectorOp2 = aura.Purple,
    cssClassName = aura.Blue,
    cssClassNameDot = aura.Blue,
    cssIdentifier = aura.Green,
    cssUnitDecorators = aura.Purple,
    cssColor = aura.Purple,
    cssImportant = aura.Purple,
    cssFunction = aura.Orange,
    cssProp = aura.Pink,
    cssAttr = aura.Foreground,
    cssPseudoClassId = aura.Pink,
    cssNoise = aura.Pink,
    cssCustomProp = aura.Foreground,
    cssMediaType = aura.Purple,

    -- HTML
    htmlTag = aura.Foreground,
    htmlEndTag = aura.Foreground,
    htmlTagName = aura.Purple,
    htmlArg = aura.Pink,
    htmlScriptTag = aura.Purple,
    htmlTagN = aura.Purple,
    htmlSpecialTagName = aura.Purple,
    htmlTitle = aura.Foreground,
    htmlH1 = aura.Foreground,
    htmlSpecialChar = aura.Green,
    htmlLink = aura.ForegroundUnderline,
    htmlBold = aura.ForegroundBold,
    htmlBoldUnderline = { fg = palette.white, gui = "bold,underline" },
    htmlBoldItalic = { fg = palette.white, gui = "bold,italic" },
    htmlBoldUnderlineItalic = { fg = palette.white, gui = "bold,italic" },
    htmlItalic = { fg = palette.white, gui = "italic" },

    -- JAVASCRIPT
    javaScriptMember = aura.Foreground,
    javaScriptOperator = aura.Purple,
    javaScriptType = aura.Blue,
    javaScriptParens = aura.Orange,
    javaScriptBraces = aura.Orange,
    javaScriptIdentifier = aura.Purple,
    javaScriptNull = aura.Purple,
    javaScriptReserved = aura.Purple,
    javaScriptRepeat = aura.Purple,
    javaScriptConditional = aura.Purple,
    javaScriptException = aura.Purple,
    javaScriptStatement = aura.Purple,
    javaScriptStringD = aura.Green,
    javaScriptStringT = aura.Green,
    javaScriptGlobal = aura.Foreground,
    javaScriptLabel = aura.Purple,
    javaScriptBranch = aura.Purple,
    javaScriptFunction = aura.Orange,
    javaScriptBoolean = aura.Purple,

    -- JAVASCRIPTREACT
    jsxTagName = aura.Purple,
    jsxComponentName = aura.Orange,
    jsxCloseString = aura.Foreground,
    jsxAttrib = aura.Pink,
    jsxEqual = aura.Purple,

    -- JSON
    jsonKeyword = aura.Purple,
    jsonQuote = aura.Green,
    jsonBraces = aura.Pink,
    jsonString = aura.Green,
    jsonNoise = aura.Pink,
    jsonBoolean = aura.Green,
    jsonNull = aura.Green,

    -- MARKDOWN
    markdownItalic = { fg = palette.white, gui = "italic" },
    markdownBold = aura.ForegroundBold,
    markdownBoldItalic = { fg = palette.white, gui = "bold,italic" },
    markdownH1 = aura.Orange,
    markdownH2 = aura.Orange,
    markdownH3 = aura.Orange,
    markdownH4 = aura.Orange,
    markdownH5 = aura.Orange,
    markdownH6 = aura.Orange,
    markdownBlockquote = aura.Gray,
    markdownListMarker = aura.Purple,
    markdownOrderedListMarker = aura.Gray,
    markdownRule = aura.Gray,
    markdownHeadingRule = aura.Gray,
    markdownUrlDelimiter = aura.Foreground,
    markdownLinkDelimiter = aura.Foreground,
    markdownLinkTextDelimiter = aura.Foreground,
    markdownHeadingDelimiter = aura.Purple,
    markdownUrl = aura.PurpleUnderline,
    markdownUrlTitleDelimiter = aura.Foreground,
    markdownLinkText = aura.Green,
    markdownIdDeclaration = aura.GreenUnderline,
    markdownCode = aura.Green,

    -- SASS
    sassVariable = aura.Foreground,

    -- TYPESCRIPT
    typescriptDestructureVariable = aura.Foreground,
    typescriptAssign = aura.Purple,
    typescriptReserved = aura.Purple,
    typescriptLabel = aura.Pink,
    typescriptDestructureLabel = aura.Foreground,
    typescriptObjectDestructure = aura.Foreground,
    typescriptTupleLable = aura.Foreground,
    typescriptFuncKeyword = aura.Purple,
    typescriptIdentifier = aura.Orange,
    typescriptBraces = aura.Orange,
    typescriptEndColons = aura.Foreground,
    typescriptLogicSymbols = aura.Orange,
    typescriptDocSeeTag = aura.Gray,
    typescriptDocParam = aura.Gray,
    typescriptDocTags = aura.Gray,
    typescriptParens = aura.Orange,
    typescriptOpSymbols = aura.Orange,
    typescriptNull = aura.Purple,
    typescriptInterpolationDelimiter = aura.Purple,
    typescriptArrowFunc = aura.Purple,
    typescriptCharacter = aura.Orange,
    typescriptUnion = aura.Orange,
    typescriptDotNotation = aura.Orange,
    typescriptGlobalObjectDot = aura.Orange,
    typescriptStatementKeyword = aura.Purple,
    typescriptInterfaceName = aura.Blue,
    typescriptMember = aura.Pink,
    typescriptType = aura.Purple,
    typescriptPredefinedType = aura.Purple,
    typescriptFuncType = aura.Blue,
    typescriptFuncTypeArrow = aura.Blue,
    typescriptFuncName = aura.Orange,
    typescriptCastKeyword = aura.Purple,
    typescriptGlobal = aura.Blue,
    typescriptTypeReference = aura.Blue,
    typescriptAliasDeclaration = aura.Blue,
    typescriptVariable = aura.Purple,
    typescriptCall = aura.Foreground,
    typescriptModule = aura.Purple,
    typescriptEnum = aura.Blue,
    typescriptForOperator = aura.Purple,
    typescriptBranch = aura.Purple,
    typescriptAmbientDeclaration = aura.Purple,
    typescriptTypeBracket = aura.Pink,
    typescriptFuncComma = aura.Pink,
    typescriptDefaultParam = aura.Purple,
    typescriptGlobalMethod = aura.Orange,
    typescriptNumberStaticProp = aura.Foreground,
    typescriptNumberStaticMethod = aura.Orange,
    typescriptNumberMethod = aura.Orange,
    typescriptStringMethod = aura.Orange,
    typescriptArrayMethod = aura.Orange,
    typescriptObjectStaticMethod = aura.Orange,
    typescriptObjectMethod = aura.Orange,
    typescriptSymbolStaticProp = aura.Orange,
    typescriptSymbolStaticMethod = aura.Orange,
    typescriptFunctionMethod = aura.Orange,
    typescriptMathStaticMethod = aura.Orange,
    typescriptDateMethod = aura.Orange,
    typescriptDateStaticMethod = aura.Orange,
    typescriptJSONStaticMethod = aura.Orange,
    typescriptRegExpMethod = aura.Orange,
    typescriptES6MapMethod = aura.Orange,
    typescriptES6MapProp = aura.Pink,
    typescriptES6SetProp = aura.Pink,
    typescriptES6SetMethod = aura.Orange,
    typescriptProxyAPI = aura.Orange,
    typescriptPromiseStaticMethod = aura.Orange,
    typescriptPromiseMethod = aura.Orange,
    typescriptReflectMethod = aura.Orange,
    typescriptIntlMethod = aura.Orange,
    typescriptTestGlobal = aura.Orange,
    typescriptNodeGlobal = aura.Foreground,
    typescriptBOM = aura.Blue,
    typescriptBOMWindowProp = aura.Foreground,
    typescriptBOMWindowMethod = aura.Orange,
    typescriptBOMWindowEvent = aura.Orange,
    typescriptBOMNavigatorMethod = aura.Orange,
    typescriptServiceWorkerMethod = aura.Orange,
    typescriptBOMLocationMethod = aura.Orange,
    typescriptBOMNavigatorProp = aura.Foreground,
    typescriptBOMLocationProp = aura.Foreground,
    typescriptBOMHistoryProp = aura.Foreground,
    typescriptBOMHistoryMethod = aura.Orange,
    typescriptConsoleMethod = aura.Orange,
    typescriptXHRProp = aura.Pink,
    typescriptXHRMethod = aura.Orange,
    typescriptFileMethod = aura.Orange,
    typescriptFileReaderProp = aura.Pink,
    typescriptFileReaderMethod = aura.Orange,
    typescriptFileListMethod = aura.Orange,
    typescriptBlobMethod = aura.Orange,
    typescriptURLUtilsProp = aura.Pink,
    typescriptURLStaticMethod = aura.Orange,
    typescriptSubtleCryptoMethod = aura.Orange,
    typescriptCryptoProp = aura.Pink,
    typescriptCryptoMethod = aura.Orange,
    typescriptHeadersMethod = aura.Orange,
    typescriptRequestProp = aura.Pink,
    typescriptRequestMethod = aura.Orange,
    typescriptResponseProp = aura.Pink,
    typescriptResponseMethod = aura.Orange,
    typescriptServiceWorkerProp = aura.Pink,
    typescriptCacheMethod = aura.Orange,
    typescriptEncodingProp = aura.Pink,
    typescriptEncodingMethod = aura.Orange,
    typescriptGeolocationMethod = aura.Orange,
    typescriptBOMNetworkProp = aura.Pink,
    typescriptPaymentMethod = aura.Orange,
    typescriptPaymentProp = aura.Pink,
    typescriptPaymentEvent = aura.Orange,
    typescriptPaymentResponseMethod = aura.Orange,
    typescriptPaymentResponseProp = aura.Pink,
    typescriptPaymentAddressProp = aura.Pink,
    typescriptPaymentShippingOptionProp = aura.Pink,
    typescriptDOMNodeProp = aura.Pink,
    typescriptDOMNodeMethod = aura.Orange,
    typescriptDOMNodeType = aura.Purple,
    typescriptDOMElemAttrs = aura.Pink,
    typescriptDOMElemFuncs = aura.Orange,
    typescriptDOMDocProp = aura.Pink,
    typescriptDOMDocMethod = aura.Orange,
    typescriptDOMEventTargetMethod = aura.Orange,
    typescriptDOMEventCons = aura.Blue,
    typescriptDOMEventProp = aura.Pink,
    typescriptDOMEventMethod = aura.Orange,
    typescriptDOMStorage = aura.Pink,
    typescriptDOMStorageProp = aura.Pink,
    typescriptDOMStorageMethod = aura.Orange,
    typescriptDOMFormProp = aura.Pink,
    typescriptDOMFormMethod = aura.Orange,
    typescriptDOMStyle = aura.Pink,
    typescriptUnaryOp = aura.Purple,
    typescriptTernary = aura.Purple,
    typescriptBinaryOp = aura.Purple,
    typescriptMethodAccessor = aura.Purple,

    -- TYPESCRIPTREACT
    tsxRegion = aura.Foreground,
    tsxAttrib = aura.Pink,

    -- YAML
    yamlBlockMappingKey = aura.Purple,
    yamlConstant = aura.Pink,
    yamlBlockCollectionItemStart = aura.Foreground,
    yamlFlowIndicator = aura.Orange,
    yamlKeyValueDelimiter = aura.Pink,
  }
end

return {
  create = createLanguagesGroup,
}
