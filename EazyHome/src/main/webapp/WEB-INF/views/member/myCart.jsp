<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<!-- Mirrored from www.ys2.co.kr/order/basket.html?&delvtype=A by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Sep 2021 07:44:18 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head><script>
(function(i, s, o, g, r, a, m) {
    a = s.createElement(o);
    m = s.getElementsByTagName(o)[0];
    a.src = g;
    a.onload = function() {
        i[r].init('https://js-error-tracer-api.cafe24.com/', {"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ5czJuLmNhZmUyNC5jb20iLCJhdWQiOiJqcy1lcnJvci10cmFjZXItYXBpLmNhZmUyNC5jb20iLCJtYWxsX2lkIjoieXMybiIsInNob3Bfbm8iOiIxIiwicGF0aF9yb2xlIjoiT1JERVJfQkFTS0VUIiwibGFuZ3VhZ2VfY29kZSI6ImtvX0tSIiwiY291bnRyeV9jb2RlIjoiS1IiLCJvcmlnaW4iOiJodHRwczpcL1wvd3d3LnlzMi5jby5rciIsImlzX2NvbnRhaW5lciI6ZmFsc2UsImhvc3RuYW1lIjoidWUwODIxIn0.ZtI0GLI6AsFwZuDqMg4Qi_TPBlnZfKNin8v_WhS02Bk","collectWindowErrors":true,"preventDuplicateReport":true,"storageKeyPrefix":"EC_JET.ORDER_BASKET"});
    };
    m.parentNode.insertBefore(a, m);
}(window, document, 'script', 'https://www.ys2.co.kr/ind-script/optimizer.php?filename=08_Iz03VNzQq0i8oyk8vSszVLy8v18_MS-EqTi7KLCjRz0oFY57czDyerGIA&amp;type=js&amp;k=f8c449ff82a3977059c3195db755507c2666c339&amp;t=1630468260', 'EC_JET'));
</script><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge"/><!-- PG크로스브라우징필수내용 --><meta http-equiv="Cache-Control" content="no-cache"/><meta http-equiv="Expires" content="0"/><meta http-equiv="Pragma" content="no-cache"/><!-- // PG크로스브라우징필수내용 --><!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. --><link href="https://fonts.googleapis.com/css?family=Poppins:400,700,800,900&amp;display=swap" rel="stylesheet"/><link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700,900&amp;display=swap&amp;subset=korean" rel="stylesheet"/><!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. --><link rel="canonical" href="http://ys2.co.kr/order/basket.html" />
<link rel="alternate" href="http://m.ys2.co.kr/order/basket.html" />
<meta property="og:url" content="http://ys2.co.kr/order/basket.html" />
<meta property="og:site_name" content="영숙이네 감귤밭" />
<meta property="og:type" content="website" />
<script type="text/javascript" src="https://www.ys2.co.kr/app/Eclog/js/cid.generate.js?vs=3cc0e0be954dc849581f9ff1817647de"></script>

            <script type='text/javascript'>
                var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {"common_member_id_crypt":""};
            </script>
            
<script type="text/javascript">var CAFE24API = { instance : [], MALL_ID : 'ys2n', SHOP_NO : 1, init : function (appInfo) { if (typeof appInfo == 'object') { if (appInfo.hasOwnProperty('client_id')) { var appKey = appInfo.client_id; } } else { var appKey = appInfo; } if (appKey) { if (!this.instance[appKey]) { CAFE24API.clientId = appKey; if (appInfo.hasOwnProperty('version')) { CAFE24API.version = appInfo.version; } var copyObject = CAFE24API.constructor(); for (var attr in CAFE24API) { if (CAFE24API.hasOwnProperty(attr)) { copyObject[attr] = CAFE24API[attr]; } } this.instance[appKey] = copyObject; } return this.instance[appKey]; } }, initializeXhr : function () { try { return new XMLHttpRequest(); } catch (error) { return new window.ActiveXObject('Microsoft.XMLHTTP'); } }, fullPath: function (url) { var API_PRIVATE_URL = []; for (var i in API_PRIVATE_URL) { var regExp = new RegExp('/api/v2' + API_PRIVATE_URL[i] + '($|[?]|[/]$)'); if (regExp.test(url) == true) { return 'https://' + window.location.hostname + url; } } return url; }, getMemberID: function (callback) { if (!CAPP_ASYNC_METHODS.IS_LOGIN) { callback(null); } else { callback(CAPP_ASYNC_METHODS.AppCommon.getMemberID()); } }, getEncryptedMemberId: function (client_id, member_id, callback) { if (!CAFE24API.__scopeErr(callback, 'customer')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getEncryptedMemberId(client_id, member_id)); }, getMemberInfo: function (callback) { callback({'id': CAPP_ASYNC_METHODS.AppCommon.getMemberInfo()}); }, getCustomerIDInfo: function (callback) { if (!CAFE24API.__scopeErr(callback, 'application')) { return; } callback(null, {'id': CAPP_ASYNC_METHODS.AppCommon.getCustomerIDInfo()}); }, getCustomerInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'customer': CAPP_ASYNC_METHODS.AppCommon.getCustomerInfo()}); }, getMileageInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'mileage': CAPP_ASYNC_METHODS.AppCommon.getMileageInfo()}); }, getPointInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'point': CAPP_ASYNC_METHODS.AppCommon.getPointInfo()}); }, getDepositInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'deposit': CAPP_ASYNC_METHODS.AppCommon.getDepositInfo()}); }, getCreditInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'customer')) { return; } callback(null, {'credit': CAPP_ASYNC_METHODS.AppCommon.getCreditInfo()}); }, getCartList: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, {'carts': CAPP_ASYNC_METHODS.AppCommon.getCartList()}); }, getCartInfo: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, {'cart': CAPP_ASYNC_METHODS.AppCommon.getCartInfo()}); }, getCartItemList: function (callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } callback(null, {'items': CAPP_ASYNC_METHODS.AppCommon.getCartItemList()}); }, getCartCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getCartCount()); }, getCouponCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'promotion')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getCouponCount()); }, getWishCount: function (callback) { if (!CAFE24API.__chkValidSessionScope(callback, 'personal')) { return; } callback(null, CAPP_ASYNC_METHODS.AppCommon.getWishCount()); }, getShopInfo: function (callback) { if (!CAFE24API.__scopeErr(callback, 'store')) { return; } callback(null, {'shop': CAPP_ASYNC_METHODS.AppCommon.getShopInfo()}); }, addCurrentProductToCart: function (mall_id, time, app_key, member_id, hmac, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.addCurrentProductToCart(mall_id, time, app_key, member_id, hmac).then(function(data){ callback(null, {'cart': data}); }).catch(function (data) { callback(new Error(422), {'error': {code: 422, message: 'This sdk is not available on the current page'}}); }); }, precreateOrder: function (mall_id, time, app_key, member_id, hmac, callback) { if (!CAFE24API.__scopeErr(callback, 'order')) { return; } CAPP_ASYNC_METHODS.AppCommon.precreateOrder(mall_id, time, app_key, member_id, hmac).then(function(data){ callback(null, {'order': data}); }).catch(function (data) { callback(new Error(422), {'error': {code: 422, message: 'This sdk is not available on the current page'}}); }); }, get : function(url, callback) { return CAFE24API.complete('GET', url, this, null, callback); }, post : function(url, params, callback) { return CAFE24API.complete('POST', url, this, params, callback); }, put : function(url, params, callback) { return CAFE24API.complete('PUT', url, this, params, callback); }, delete : function(url, callback) { return CAFE24API.complete('DELETE', url, this, null, callback); }, complete : function(method, url, obj, params, callback) { var xhr = CAFE24API.sendXhr(method, url, obj, params, callback); xhr.onreadystatechange = function () { if (xhr.readyState === XMLHttpRequest.DONE) { if (xhr.status >= 200 && xhr.status <= 208) { callback(null, JSON.parse(xhr.responseText)); } else { callback(new Error(xhr.status), JSON.parse(xhr.responseText)); } } }; }, sendXhr : function (method, url, obj, params, callback) { var url = obj.fullPath(url); var xhr = obj.initializeXhr(); xhr.open(method, url, true); if (obj.clientId) xhr.setRequestHeader('X-Cafe24-App-Key', obj.clientId); if (obj.version) xhr.setRequestHeader('X-Cafe24-Api-Version', obj.version); if (method != 'GET') { xhr.setRequestHeader('Content-type','application/json; charset=utf-8'); } if (typeof params == 'object') { params = JSON.stringify(params); } xhr.send(params || null); return xhr; }, __sessionErr: function (callback) { callback(new Error(403), {'error': {code: 403, message: 'Failed to get session. Only available when log in.'}}); }, __scopeErr: function (callback, scope) { if ( typeof EC_APPSCRIPT_SDK_DATA != "undefined" && jQuery.inArray(scope, EC_APPSCRIPT_SDK_DATA ) > -1 ) { return true; } callback(new Error(403), {'error': {code: 403, message: 'You do not have the necessary authority(scope) to use the SDK.'}}); }, __chkValidSessionScope: function (callback, scope) { if (!CAPP_ASYNC_METHODS.IS_LOGIN) { CAFE24API.__sessionErr(callback); return false; } if (!CAFE24API.__scopeErr(callback, scope)) { return false; } return true; } };</script>
<script type="text/javascript">
window.CAFE24 = window.CAFE24 || {};
CAFE24.SKIN_CODE = "skin4";
var EC_SDE_SHOP_NUM = 1;var SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },getTimezone: function() { return "Asia/Seoul" },getDateFormat: function() { return "Y-m-d" },isMultiShop : function() { return false; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isPH : function() { return false; },getCountryAndLangMap : function() { return {
"KR": "ko_KR",
"US": "en_US",
"JP": "ja_JP",
"CN": "zh_CN",
"TW": "zh_TW",
"VN": "vi_VN",
"PH": "en_PH"
}},isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return false; },getModeName : function() {return false; },isMobileAdmin : function() {return false; },isExperienceMall : function() { return false; },getAdminID : function() {return ''},getMallID : function() {return 'ys2n'},getCurrencyFormat : function(sPriceTxt, bIsNumberFormat) { 
sPriceTxt = String(sPriceTxt);
var aCurrencySymbol = ["","\uc6d0",false];
if (typeof SHOP_PRICE !== 'undefined' && isNaN(sPriceTxt.replace(/[,]/gi, '')) === false && bIsNumberFormat === true) {
// bIsNumberFormat 사용하려면 Ui(':libUipackCurrency')->plugin('Currency') 화폐 라이브러리 추가 필요
sPriceTxt = SHOP_PRICE.toShopPrice(sPriceTxt.replace(/[,]/gi, ''), true, EC_SDE_SHOP_NUM);
}
try {
var sPlusMinusSign = (sPriceTxt.toString()).substr(0, 1);
if (sPlusMinusSign === '-' || sPlusMinusSign === '+') {
sPriceTxt = (sPriceTxt.toString()).substr(1);
return sPlusMinusSign + aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
} else {
return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
}
} catch (e) {
return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
}
}};var EC_COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'https'; },moveSsl : function() { if (EC_COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } },setEcCookie : function(sKey, sValue, iExpire) {var exdate = new Date();exdate.setDate(exdate.getDate() + iExpire);var setValue = escape(sValue) + "; domain=." + EC_GLOBAL_INFO.getBaseDomain() + "; path=/;expires=" + exdate.toUTCString();document.cookie = sKey + "=" + setValue;}};var EC_SHOP_LIB_INFO = {getBankInfo : function() { 
var oBankInfo = "";
$.ajax({
type: "GET",
url: "/exec/front/Shop/Bankinfo",
dataType: "json",
async: false,
success: function(oResponse) {
oBankInfo = oResponse;
}
});
return oBankInfo; }};
var EC_ROOT_DOMAIN = "cafe24.com";
var EC_API_DOMAIN = "cafe24api.com";
var EC_TRANSLATE_LOG_STATUS = "F";
var EC_GLOBAL_INFO = (function() {
var oData = {"base_domain":"ys2n.cafe24.com","root_domain":"cafe24.com","api_domain":"cafe24api.com","is_global":false,"is_global_standard":false,"country_code":"KR","language_code":"ko_KR","admin_language_code":"ko_KR"};
return {
getBaseDomain: function() {
return oData['base_domain'];
},
getRootDomain: function() {
return oData['root_domain'];
},
getApiDomain: function() {
return oData['api_domain'];
},
isGlobal: function() {
return oData['is_global'];
},
isGlobalStandard: function() {
return oData['is_global_standard'];
},
getCountryCode: function() {
return oData['country_code'];
},
getLanguageCode: function() {
return oData['language_code'];
},
getAdminLanguageCode: function() {
return oData['admin_language_code'];
}
};
})();
var EC_AVAILABLE_LANGUAGE = ["ko_KR","zh_CN","en_US","zh_TW","es_ES","pt_PT","vi_VN","ja_JP","en_PH"];
var EC_AVAILABLE_LANGUAGE_CODES = {"ko_KR":"KOR","zh_CN":"CHN","en_US":"ENG","zh_TW":"TWN","es_ES":"ESP","pt_PT":"PRT","vi_VN":"VNM","ja_JP":"JPN","en_PH":"PHL"};
var EC_GLOBAL_PRODUCT_LANGUAGE_CODES  = {  
sClearanceCategoryCode : '',
sManualLink : '//serviceguide.cafe24shop.com/ko_KR/PR.PD.GA.html',
sHsCodePopupLink : 'https://www.wcotradetools.org/en/harmonized-system',
aCustomRegex : '"PHL" : "^[0-9]{8}[A-Z]?$"',
sCountryCodeData : 'kor',
sEnglishExampleURlForGlobal : '',
aReverseAddressCountryCode: ["VNM","PHL"],
aSizeGuideCountryAlign: '["US","UK","EU","KR","JP","CN"]'
}; 
var EC_GLOBAL_ORDER_LANGUAGE_CODES  = {
aModifyOrderLanguage: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","VN":"vi_VN","PH":"en_PH"},
aUseIdCardKeyCountry: ["CN","TW"],
aLanguageWithCountryCode: {"zh_CN":["CN","CHN","HK","HNK"],"ja_JP":["JP","JPN"],"zh_TW":["TW","TWN"],"ko_KR":["KR","KOR"],"vi_VN":["VN","VNM"],"en_PH":["PH","PHL"]},
aCheckDisplayRequiredIcon: ["ja_JP","zh_CN","zh_TW","en_US","vi_VN","en_PH"],
aSetReceiverName: {"zh_CN":{"sCountry":"CN","bUseLastName":true},"zh_TW":{"sCountry":"TW","bUseLastName":false},"ja_JP":{"sCountry":"JP","bUseLastName":true}},
aSetDeferPaymethodLanguage: {"ja_JP":"\uc77c\ubcf8","zh_CN":"\uc911\uad6d"},
aUseDeferPaymethod: ["ja_JP","zh_CN"],
aCheckShippingCompanyAndPaymethod: ["ja_JP","zh_CN"],
aSetDeferPaymethodLanguageForShipping: {"ja_JP":"\u65e5\u672c","zh_CN":"\uc911\uad6d"},
aCheckStoreByPaymethod : ["ja_JP","zh_CN"],
aCheckIsEmailRequiredForJs: ["en_US","zh_CN","zh_TW","ja_JP","vi_VN","en_PH"],
aSetIdCardKeyCountryLanguage: {"CN":"\uc911\uad6d\uc758","TW":"\ub300\ub9cc\uc758"},
aReverseGlobalAddress: ["en_PH","vi_VN","PHL","VNM","VN","PH"],
aNoCheckZipCode: ["KOR","JPN"],
aNotPostCodeAPICountryList : ["en_US","es_ES","pt_PT","en_PH"],
aEnableSearchExchangeAddr: ["KR","JP","CN","VN","TW","PH"],
aDuplicatedBaseAddr : ["TW","JP"],
aReverseAddressCountryCode: ["VN","PH"],
aCheckZipCode: ["PHL","en_PH","PH"]
}; 
var EC_GLOBAL_MEMBER_LANGUAGE_CODES  = {  
sAdminWebEditorLanguageCode : 'ko' ,
oNotAvailDecimalPointLanguages :  ["ko_KR","ja_JP","zh_TW","vi_VN"],
oAddressCountryCode :  {"KOR":"ko_KR","JPN":"ja_JP","CHN":"zh_CN","TWN":"zh_TW","VNM":"vi_VN","PHL":"en_PH"},
}; 
var EC_GLOBAL_BOARD_LANGUAGE_CODES  = {  
bUseLegacyBoard: true
}; 
var EC_GLOBAL_MALL_LANGUAGE_CODES  = {
oDesign: {
oDesignAddReplaceInfo: {"group_id":"SKIN.ADD.ADMIN.DESIGNDETAIL","replacement":{"KR":"KOREAN","US":"ENGLISH","JP":"JAPANESE","CN":"SIMPLIFIED.CHINESE","TW":"TRADITIONAL.CHINESE","ES":"SPANISH","PT":"PORTUGUESE","PH":"ENGLISH"}},
oDesignDetailLanguageCountryMap: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","US":"en_US","ES":"es_ES","PT":"pt_PT","PH":"en_PH"},
oSmartDesignSwitchTipLink: {"edibot":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/img_editor_dnd.png","link":"\/\/ecsupport.cafe24.com\/board\/free\/list.html?board_act=list&board_no=12&category_no=9&cate_no=9"},"smart":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/ko_KR\/img_editor_smart.png","link":"\/\/sdsupport.cafe24.com"}},
oSmartDesignDecoShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"],
oSmartDesignDecoMultilingual: {"list":{"ko_KR":"KOREAN","en_US":"ENGLISH","ja_JP":"JAPANESE","zh_CN":"SIMPLIFIED.CHINESE","zh_TW":"TRADITIONAL.CHINESE","es_ES":"SPANISH","pt_PT":"PORTUGUESE","vi_VN":"VIETNAMESE"},"group_id":"EDITOR.LAYER.EDITING.DECO"},
aSmartDesignModuleShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"]
},
oStore: {
oMultiShopCurrencyInfo: {"en_US":{"currency":"USD"},"zh_CN":{"currency":"USD","sub_currency":"CNY"},"ja_JP":{"currency":"JPY"},"zh_TW":{"currency":"TWD"},"es_ES":{"currency":"EUR"},"pt_PT":{"currency":"EUR"},"ko_KR":{"currency":"KRW"},"vi_VN":{"currency":"VND"},"en_PH":{"currency":"PHP"}},
oBrowserRedirectLanguage: {"ko":{"primary":"ko_KR","secondary":"en_US"},"en":{"detail":{"en-ph":{"primary":"en_PH","secondary":"en_US"},"en-us":{"primary":"en_US","secondary":"es_ES"},"default":{"primary":"en_US","secondary":"es_ES"}}},"ja":{"primary":"ja_JP","secondary":"en_US"},"zh":{"detail":{"zh-cn":{"primary":"zh_CN","secondary":"en_US"},"zh-tw":{"primary":"zh_TW","secondary":"zh_CN"},"default":{"primary":"en_US","secondary":"ko_KR"}}},"es":{"primary":"es_ES","secondary":"en_US"},"pt":{"primary":"pt_PT","secondary":"en_US"},"vi":{"primary":"vi_VN","secondary":"en_US"},"default":{"primary":"en_US","secondary":"ko_KR"}},
aChangeableLanguages: ["en_US","vi_VN","ja_JP","ko_KR"],
aNoZipCodeLanguage: ["ko_KR","ja_JP"]
},
oMobile: {
sSmartWebAppFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1832&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
sAmpFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1864&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
},
oPromotion: {
bQrCodeAvailable: true,
bSnsMarketingAvailable: true
},
oShippingReverseAddressLanguage : ["vi_VN","en_PH"] ,
oGlobalStandardSwitchHelpCodeLink: {"SH.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/SH.DS.html"},"PR.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PR.DS.html"},"OR.SM.BO":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/OR.SM.BO.html"},"CU.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/CU.DS.html"},"DE.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/DE.DS.html"},"MB.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/MB.DS.html"},"PM.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PM.DS.html"}},
getAdminMainLocaleLanguage : function(sSkinLocaleCode) {
var oLocaleData = [];
var locale = "";
var shopLangName = ""; 
if (sSkinLocaleCode == "US") {
locale = "en_US";
shopLangName = "ENGLISH";
} else if (sSkinLocaleCode == "JP") {
locale = "ja_JP";
shopLangName = "JAPANESE";
} else if (sSkinLocaleCode == "CN") {
locale = "zh_CN";
shopLangName = "SIMPLIFIED.CHINESE";
} else if (sSkinLocaleCode == "TW") {
locale = "zh_TW";
shopLangName = "TRADITIONAL.CHINESE";
} else if (sSkinLocaleCode == "ES") {
locale = "es_ES";
shopLangName = "SPANISH";
} else if (sSkinLocaleCode == "PT") {
locale = "pt_PT";
shopLangName = "PORTUGUESE";
} else if (sSkinLocaleCode == "VN") {
locale = "vi_VN";
shopLangName = "VIETNAMESE";
} else if(sSkinLocaleCode == "PH") {
locale = "en_PH";
shopLangName = "ENGLISH.PH";
}
oLocaleData["locale"] = locale;
oLocaleData["shopLangName"] = shopLangName;
return  oLocaleData;
}
};
var EC_GLOBAL_DATETIME_INFO = {
oConstants: {"STANDARD_DATE_REGEX":"\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/","IN_ZONE":"inZone","OUT_ZONE":"outZone","IN_FORMAT":"inFormat","OUT_FORMAT":"outFormat","IN_DATE_FORMAT":"inDateFormat","IN_TIME_FORMAT":"inTimeFormat","OUT_DATE_FORMAT":"outDateFormat","OUT_TIME_FORMAT":"outTimeFormat","IN_FORMAT_DATE_ONLY":1,"IN_FORMAT_TIME_ONLY":2,"IN_FORMAT_ALL":3,"OUT_FORMAT_DATE_ONLY":1,"OUT_FORMAT_TIME_ONLY":2,"OUT_FORMAT_ALL":3,"DATE_ONLY":"YYYY-MM-DD","TIME_ONLY":"HH:mm:ss","FULL_TIME":"YYYY-MM-DD HH:mm:ss","ISO_8601":"YYYY-MM-DD[T]HH:mm:ssZ","YEAR_ONLY":"YYYY","MONTH_ONLY":"MM","DAY_ONLY":"DD","WEEK_ONLY":"e","TIME_H_I_ONLY":"HH:mm","TIME_HOUR_ONLY":"HH","TIME_MINUTE_ONLY":"mm","POSTGRE_FULL_TIME":"YYYY-MM-DD HH24:MI:SS","POSTGRE_TIME_ONLY":" HH24:MI:SS","MICRO_SECOND_ONLY":"u","SEOUL":"Asia\/Seoul","TOKYO":"Asia\/Tokyo","SHANGHAI":"Asia\/Shanghai","TAIPEI":"Asia\/Taipei","HANOI":"Asia\/Bangkok","LOS_ANGELES":"America\/Los_Angeles","LISBON":"Europe\/Lisbon","MADRID":"Europe\/Madrid","SINGAPORE":"Asia\/Singapore","UTC":"Etc\/UTC","MAX_DATETIME":"9999-12-31 23:59:59"},
oOptions: {"inZone":"Asia\/Seoul","inFormat":"YYYY-MM-DD HH:mm:ss","inDateFormat":"YYYY-MM-DD","inTimeFormat":"HH:mm:ss","outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"},
oPolicies: {"shop":{"outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"}},
sOverrideTimezone: '',
sMomentNamespace: 'EC_GLOBAL_MOMENT'
};
var EC_FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"ys2n","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogOffFlag":"F"};
var EC_FRONT_JS_CONFIG_MEMBER = {"sAuthUrl":"https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"};
typeof window.CAFE24 === "undefined" && (window.CAFE24 = {});
CAFE24.frontend = {"FW_MANIFEST_CACHE_REVISION":2109011251,"IS_WEB_VIEW":"F"};
</script>

<link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=nc1LCoAwDIThvbj1HEFv1Ib4gKYjSQp6e_UG0u3wfwztUKF5MToNmyUlE0czFmJ3Wg01iKGKOr7DRH964cFRWhyoQ8bVCVtE72lJt1gfjZSLfPQB&amp;type=css&amp;k=6ff09804d00b24cef12b4ab8b2a6e5c2fc3eb52b&amp;t=1630468260" /><link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=rdRNTgUhDADg_Ru3nqOJ8RLuTDwBdOrQDFBCizqeXiY-V670dcnfF9pCIUkhIFyGUlc49KFCGzEzLslKBl1pWUl5q6A710fI4ZBhEIMyAqrOs5c5oMtcoH43Z-7hr-bJFFlHJpC-Uj_1new54B42cjJXfKqvcjNWDk3S4J01ZVb7n_criSilSHXCfioy2Bk0kWzcnNVE2ZtsfRYLzVsNG9dg5J3VEJ3FOMzcX1OUD__As3cy5y50Ir8nbm4YV7eM-XXO1vGSuDWumxeMUt_mWZbavCLHoSaFP6-3_AI&amp;type=css&amp;k=dd901fd93b5fee9f026e4daf245cd2f8c5f2f977&amp;t=1571612613&amp;user=T" />


        <title>Eazy Home</title>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet"/> 
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/>
<meta name="path_role" content="ORDER_BASKET" />
<meta name="keywords" content="영숙이네 감귤밭" /></head>
<body class="padding-body">
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/www/">Eazy Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	<li class="nav-item"><a class="nav-link" href="/www/company">회사소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/item/itemList">스마트홈 기기</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/#service">서비스 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/board/list">커뮤니티</a></li>
                        
                       	<c:choose>
						    <c:when test="${sessionScope.id eq null}">
                        		<li class="nav-item"><a class="nav-link" href="/www/member/loginForm">로그인</a></li>
						    </c:when>
						    <c:when test="${sessionScope.id eq 'admin@naver.com'}">
                        		<li class="nav-item"><a class="nav-link" href="/www/admin/adminPage">관리자</a></li>
                        		<li class="nav-item"><a class="nav-link" href="/www/member/logout">로그아웃</a></li>
						    </c:when>
						    <c:otherwise>
	                       		<li class="nav-item"><a class="nav-link" href="/www/member/logout">로그아웃</a></li>
	                       		<li class="nav-item"><a class="nav-link" href="/www/member/mypage">마이페이지</a></li>
						    </c:otherwise>
						</c:choose>
                    </ul>
                    <form class="d-flex">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/www/member/myCart">
                            <i class="bi-cart-fill me-1">장바구니</i> </a></div>
                        
                    </form>
                </div>
            </div>
        </nav>

<hr class="layout"/><div id="wrap">
    <div id="container">
        <div id="contents">
            
<div class="path">
    <span>현재 위치</span>
    <ol><li><a href="https://www.ys2.co.kr/">홈</a></li>
        <li title="현재 위치"><strong>장바구니</strong></li>
    </ol></div>

<div class="titleArea">
    <h2>장바구니</h2>
</div>

<div class="xans-element- xans-order xans-order-basketpackage "><p class="orderStep"><img src="./img.echosting.cafe24.com/skin/base_ko_KR/order/img_order_step1.gif" alt="01 장바구니"/></p>
<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight "><ul class="menu">
<li class="selected "><a href="https://www.ys2.co.kr/order/basket.html">국내배송상품 </a></li>
        </ul>
<p class="right displaynone">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
</div>
<%/* 
List<ItemBean> list = new ArrayList<ItemBean>();
list=(List)request.getAttribute("list");
int total_pay = ((Integer)request.getAttribute("total_pay")).intValue();
if(list.size()==0){ */
%>
<div class="xans-element- xans-order xans-order-empty "><p>장바구니가 비어 있습니다.</p>
</div>
<%/* }else{ */%>
<div class="orderListArea ec-base-table typeList gBorder">
        <div class="xans-element- xans-order xans-order-normtitle title "><h3>일반상품</h3>
</div>

        <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-"><caption>기본배송</caption>
<colgroup>
<col style="width:27px"/>
<col style="width:92px"/>
<col style="width:auto"/>
<col style="width:98px"/>
<col style="width:75px"/>
<col style="width:98px"/>
<col style="width:98px"/>
<col style="width:85px"/>
<col style="width:98px"/>
<col style="width:110px"/>
</colgroup>
<thead><tr>
                    <th scope="col">이미지</th>
                    <th scope="col">상품정보</th>
                    <th scope="col">판매가</th>
                    <th scope="col">수량</th>
                    <th scope="col">재고</th>
                    <th scope="col">배송구분</th>
                    <th scope="col">배송비</th>
                    <th scope="col">합계</th>
                    <th scope="col">삭제</th>
                </tr></thead>
<tfoot class="right"><tr>
<td colspan="10">
<span class="gLeft">[기본배송]</span> 상품구매금액 <strong> <span class="displaynone">()</span></strong><span class="displaynone"> </span><span class="displaynone"> + 부가세 <span class="displaynone"> </span></span> + 배송비 <span id="normal_normal_ship_fee">0 (무료)</span><span class="displaynone"> </span> <span id="normal_normal_benefit_price_area" class="displaynone"> - 상품할인금액 <span id="normal_normal_benefit_price">7,050</span> </span> = 합계 : <strong class="txtEm gIndent10"><span id="normal_normal_ship_fee_sum" class="txt18"></span>원</strong> <span class="displaynone"> </span>
</td>
                </tr></tfoot>
                <tbody class="xans-element- xans-order xans-order-list center">
<%/* 
ItemBean itembean;
for(int i = 0;i<list.size();i++){
	itembean = list.get(i); */
%>
                <tr class="xans-record-">
                    <td class="thumb gClearLine"><a href="/Exam/ItemA.it?itemcode="><img src="./itemupload/" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""/></a></td>
                    <td class="left gClearLine">
                        <strong class="name"><a href = "/Exam/ItemA.it?itemcode" class="ec-product-name" ></a></strong> <span class="displaynone engName">(영문명 : )</span>
                        <ul class="xans-element- xans-order xans-order-optionall option"><li class="xans-record-">
<strong class="displaynone"></strong>[옵션: /] <span class="displaynone">(1개)</span><br/><span class=""><a href="#none" onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))" class="btnNormal gBlank5 displaynone">옵션변경</a></span>
                            </li>
</ul>
</td>
                    <td class="right">
                        <div id="product_price_div0" class="discount">
<strong></strong><p class="displaynone"></p>
</div>
                        <div id="product_sale_price_div0" class="displaynone">
<strong><span id="product_sale_price_front0">34,650</span>원</strong><p class="displaynone"></p>
</div>
                    </td>
                    <td>
                        <span class="">
                            <span class="ec-base-qty"></span>
                        </span>
                        <span class="displaynone">1</span>
                    </td>
                    <td></td>
                    <td><div class="txtInfo">기본배송<br/></div></td>
                    <td rowspan="1" class="">
<p class="displaynone">0원<span class="displaynone"><br/></span><br/></p>무료</td>
                    <td class="right">
<strong><span id="sum_price_front0"></span>원</strong><div class="displaynone"></div>
</td>
                    <td class="button">	
                        <a href="/Exam/cartDelete.it?itemcode=" class="btnNormal" ><i class="icoDelete"></i> 삭제</a>
                    </td>
                </tr>
<%/* } */%>
</tbody>
</table>

        </div>
<div class="orderListArea ec-base-table typeList gBorder">
        
        
        </div>
<div class="xans-element- xans-order xans-order-basketpriceinfoguide  "><p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
<p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인 가능합니다.</p>
<p class="info displaynone">추가증정 이벤트 상품의 옵션 및 수량 변경은 상품상세에서 가능합니다.</p>
</div>
<!-- 총 주문금액 : 국내배송상품 -->
<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  "><table border="1" summary="">
<caption>총 주문금액</caption>
            <colgroup>
<col style="width:17%;"/>
<col style="width:17%;" class="displaynone"/>
<col style="width:19%;"/>
<col style="width:17%;" class="displaynone"/>
<col style="width:auto;"/>
</colgroup>
<thead><tr>
<th scope="col"><strong>총 상품금액</strong></th>
                    <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
                    <th scope="col"><strong>총 배송비</strong></th>
                    <th scope="col" id="total_benefit_price_title_area" class="displaynone">
<strong>총 할인금액</strong> <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
</th>
                    <th scope="col"><strong>결제예정금액</strong></th>
                </tr></thead>
<tbody class="center"><tr>
<td><div class="box txt16">
<strong><span class="txt23"></span>원</strong> <span class="txt14 displaynone"></span>
</div></td>
                    <td class="displaynone"><div class="box txt16">
<strong><span class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
</div></td>
                    <td>
                        <div class="box shipping txt16">
                            <strong class="txt23">+ </strong><strong><span id="total_delv_price_front" class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
                            <div class="shippingArea displaynone">(<span></span>
                                <div class="shippingFee">
                                    <a href="#none" class="btnNormal" id="">자세히</a>)
                                    <div class="ec-base-tooltip">
                                        <h3>배송비할인</h3>
                                        <div class="content">
                                            <h4></h4>
                                            <table border="1" summary="">
<caption>배송비 할인 이벤트 정보</caption>
                                                <tbody>
<tr>
<th scope="row">혜택</th>
                                                        <td>
                                                            <strong class="txtEm"></strong>
                                                            <p></p>
                                                        </td>
                                                    </tr>
<tr class="displaynone">
<th scope="row">기간</th>
                                                        <td>
                                                            <strong class="txtEm"></strong>
                                                            <p></p>
                                                        </td>
                                                    </tr>
<tr class="displaynone">
<th scope="row">대상</th>
                                                        <td></td>
                                                    </tr>
</tbody>
</table>
</div>
                                        <a href="#none" class="btnClose"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기"/></a>
                                        <span class="edge"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td id="total_benefit_price_area" class="displaynone"><div class="box txt16">
<strong class="txt23">- </strong><strong><span id="total_product_discount_price_front" class="txt23">0</span>원</strong> <span class="txt14 displaynone"><span id="total_product_discount_price_back"></span></span>
</div></td>
                    <td><div class="box txtEm txt16">
<strong class="txt23">= </strong><strong><span id="total_order_price_front" class="txt23"></span>원</strong> <span class="txt14 displaynone"><span id="total_order_price_back"></span></span>
</div></td>
                </tr></tbody>
</table>

</div>
<!-- 총 주문금액 : 해외배송상품 -->
<div class="xans-element- xans-order xans-order-totaloversea ec-base-table typeList gBorder total displaynone "><table border="1" summary="">
<caption>총 주문금액</caption>
            <colgroup>
<col style="width:23%;"/>
<col style="width:21%;" class="displaynone"/>
<col style="width:21%;" class="displaynone"/>
<col style="width:auto"/>
</colgroup>
<thead><tr>
<th scope="col"><span>총 상품금액</span></th>
                    <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
                    <th scope="col" id="oversea_total_benefit_price_title_area" class="displaynone">총 할인금액 <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
</th>
                    <th scope="col">총 합계</th>
                </tr></thead>
<tbody class="center"><tr>
<td><div class="box txt16">
<strong><span class="txt23"></span>원</strong> <span class="txt14 displaynone"></span>
</div></td>
                    <td class="displaynone"><div class="box txt16">
<strong><span class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
</div></td>
                    <td id="oversea_total_benefit_price_area" class="displaynone"><div class="box txt16">
<strong>- <span id="oversea_total_product_discount_price_front" class="txt23">0</span>원</strong> <span class="txt14 displaynone"><span id="oversea_total_product_discount_price_back"></span></span>
</div></td>
                    <td><div class="box txtEm txt16">
<strong class="txt23">= </strong><strong><span id="oversea_total_order_price_front" class="txt23"></span>원</strong> <span class="txt14 displaynone"><span id="oversea_total_order_price_back"></span></span>
</div></td>
                </tr></tbody>
</table>

</div>
<% /* } */%>
<div class="orderListArea ec-base-table typeList gBorder">
        
        
        </div>
<div class="orderListArea ec-base-table typeList gBorder">
        
        
        </div>
<!-- 총 주문금액 : 국내배송상품 -->
<!-- 총 주문금액 : 해외배송상품 -->
<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify"><a href="../item/order" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnSubmitFix sizeM  ">전체상품주문</a>
		<span class="gRight">
            <a href="https://www.ys2.co.kr/" class="btnNormalFix sizeM">쇼핑계속하기</a>
        </span>
<!-- 네이버 체크아웃 구매 버튼  -->
<div id="NaverChk_Button"></div>
</div>
</div>

<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList displaynone xans-record-"><!--
        $login_page = /member/login.html
        $count = 5
        $mode = basket
    -->
<div class="title">
        <h3>관심상품</h3>
    </div>
<table border="1" summary="">
<caption>관심상품 목록</caption>
        <colgroup>
<col style="width:92px"/>
<col style="width:auto"/>
<col style="width:105px"/>
<col style="width:100px"/>
<col style="width:100px"/>
<col style="width:85px"/>
<col style="width:105px"/>
<col style="width:110px"/>
</colgroup>
<thead><tr>
<th scope="col">이미지</th>
                <th scope="col">상품정보</th>
                <th scope="col">판매가</th>
                <th scope="col">배송구분</th>
                <th scope="col">배송비</th>
                <th scope="col">합계</th>
                <th scope="col">선택</th>
            </tr></thead></table>
<p class="message ">관심상품 내역이 없습니다.</p>
</div>


<div class="xans-element- xans-order xans-order-basketguide ec-base-help "><h3>이용안내</h3>
<div class="inner">
        <h4>장바구니 이용안내</h4>
        <ol>
<li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
            <li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
            <li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
            <li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
            <li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
            <li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
        </ol>
<h4>무이자할부 이용안내</h4>
        <ol>
<li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
            <li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
            <li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
            <li class="item4">무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로 배송비가 표시됩니다.<br/>실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를 참고해주시기 바랍니다.</li>
        </ol>
</div>
</div>


<div id="ec-basketOptionModifyLayer" class="optionModify ec-base-layer" style="display:none;">
    <div class="header">
        <h3>옵션변경</h3>
    </div>
    <div class="content">
        <ul class="prdInfo"><li class="ec-basketOptionModifyLayer-productName">{$product_name}</li>
            <li class="ec-basketOptionModifyLayer-optionStr">{$layer_option_str}</li>
        </ul><div class="prdModify">
            <h4>상품옵션</h4>
            <ul><li class="ec-basketOptionModifyLayer-options" style="display:none;"><span>{$option_name}</span> {$form.option_value}</li>
                <li class="ec-basketOptionModifyLayer-addOptions" style="display:none;"><span>{$option_name}</span> {$form.option_value}</li>
            </ul></div>
    </div>
    <div class="ec-base-button">
        <a href="#none" class="btnSubmitFix sizeS ec-basketOptionModifyLayer-add">추가</a>
        <a href="#none" class="btnNormalFix sizeS ec-basketOptionModifyLayer-modify">변경</a>
    </div>
    <a href="#none" class="close" onclick="$('#ec-basketOptionModifyLayer').hide();"><img src="./img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"/></a>
</div>

<!-- //main_insta_box -->
		</div><hr class="layout"/><div id="sidebar">

			
<!-- //Layout_category -->
			<!-- 좌측 이벤트메뉴 수정하는곳 -->
			<div style="position:fixed; top: 300px; left: 250px;  right: 0;">
			<div class="xans-element- xans-custom xans-custom-moduleedit-6 xans-custom-moduleedit xans-custom-6 side_title ">MY PAGE</div>

			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myInfo">회원정보</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myCart">장바구니</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myOrder">주문내역</a></div>
			</div>
<!-- //Layout_BoardInfo -->
        </div><!-- //sidebar -->
    </div><!-- //container -->
	<hr class="layout"/><div id="quick"></div>
</div><!-- //wrap -->
<hr class="layout"/>

 <!-- Footer-->
 <footer class="py-5 bg-dark">
     <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
 </footer>
 <!-- Bootstrap core JS-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <!-- Core theme JS-->
 <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

<script type="text/javascript" src="https://www.ys2.co.kr/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2109011251" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=zVjJcttGEP0A4ZrvQBSnUrmKlOW4SopUphyfG4MG2eJsmUUU_PVpALQjOgIIDHBIsUhimfe6B_N6weQ7ozC__MXllQOFB-P2uUNvohOYP_mcLn_X2ZP_KR8aF8mC2OdPf0d09fHvXfZb9vNEJL4EdBqkP17IhDF7wrks0cmkKWQoskonQ7URRleSREiiuMx-5U-Scb4bjPvhuVlntow_Wd0SAgbiAYpH6ZCjuGsPvlDYPX69hgCZIj2BR1LBKHzk4_Mobx3pUI2gNyI2bt0Yp9ZGB2ekRHce9yCjv7J25ajcjvAnBpLnR1WOPciFUcrosaNfQHMoadaldRjGuP4KF1BZyQ_1bRBYm9-ZgiTmn17hO_8GptSDU6aMfMkfyE4zWEUtArFJHldG1rzqVeBYhgEnWGf55076rykkfK2lgXISSMUAjd37wqN77lucHrA1sq5IjtZNiRVEGZpH4BW4sAKtfzQ5PcMVW2pB_498W3L0a89P1M9lQvCkt3NZFAYom1zWq8bNztiTZb1pF2vdBtHnwRjqgf6Jh2_mn3xfopiAB0ngk1j4ey_1Pgl7b9uAfP8SHLRE7Xl7ujGyNDEsTfvgSODSpB8VbBcnvSbPabkmTs8LUn9kug1rXuIGJbb5cHnHHROvwO9x8eW7ibr8T8ROo_1OuB4osZOptF-EaEW6XIToOiUfvUX0F2eGEvp10lO31tE51KLOPZu6sP1RNwovjmcXFXdoEOZ6shRNTMncRVpgdPG0SUZynzoZ-dA1Shx0IrU0HCmu0jPNvySJAcsz51wqTNQhBbsGKQtWQ6rzX8jvJPkwc_I33M52ETnXkQ3O9eU2ZTprfsXYGlcPg1cGXHmC5qtZ0VwdaPZBcwE-QR2wkGZ7vmveBSX5zY8CoZ9kAHytRfebjFOoir73gRHwe1eiE0OqPkPQZYb5DHa4qRrFcZRWMsvaRGv0nLnccYQN9nFn8Ndojad0-018DgfHCIIzae4MAzduOAP-qYU_mgByPcuPVtnpgkKNFc0V9S3UM3z44KBMl9JVDIYbFBItDSfUQ7qqowz0YGy06RScs_f4vQjPWdgTqlliv6VnlKT3Q_VwjMr-oGYvs15Ar0emRygSeCyEnTMSL567ftukS--2d4OqB2wTUm9Xui64xtK0BfCHTED_9mqDen_cYDndvWubCL7thSMbJqKbPZammcs3FkW7UVrBUMl6k-QkQrkx_NaO_gM&type=js&k=b912e4fa94402ab0f54027f9ffb50aa594d13236&t=1630468260"></script><script type="text/javascript" src="https://www.ys2.co.kr/ind-script/optimizer.php?filename=rdAxDsIwDAXQA6Qr57CEuAknSBOTuI3jECeg3r6VEEs3SgdLXv7TtyEKI6AzXbEqLHrNUPqYyJnYOIF6NB6VQgadKd8g2UV6g9EqOZj0swyTXuBXaQs7YZZ8NM3ie8Jvo2cnN5sX4fuQt7-L_-i2tyhrsw9EPzCdKJptajvne842DFKXczTuqZFGKfdIpVAOG7sC&amp;type=js&amp;k=b51979d49f32e49f6547961abf0a7c484bb7bc96&amp;t=1571612613&amp;user=T"></script>
<script type="text/javascript">
var EC_MOBILE = false;
var EC_MOBILE_DEVICE = false;
var EC_MOBILE_USE = true;
var mobileWeb = false;
var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
if (typeof EC_SHOP_FRONT_NEW_OPTION_COMMON !== "undefined") {EC_SHOP_FRONT_NEW_OPTION_COMMON.initObject();}
if (typeof EC_SHOP_FRONT_NEW_OPTION_BIND !== "undefined") {EC_SHOP_FRONT_NEW_OPTION_BIND.initChooseBox();}
if (typeof EC_SHOP_FRONT_NEW_OPTION_DATA !== "undefined") {EC_SHOP_FRONT_NEW_OPTION_DATA.initData();}
var sBasketDelvType = 'A';
var bIsNewProduct = true;
var sUseBasketConfirm = 'F';
var sUsePaymentMethodPerProduct = 'F';
var sPage = "ORDER_BASKET";
var EC_BASKET_BENEFIT_INFO = '{"total_benefit_price_raw":null,"aBenefit":{"total_subscriptionpayseqsale_price":null,"total_periodsale_price":null,"total_membersale_price":null,"total_rebuysale_price":null,"total_bulksale_price":null,"total_newproductsale_price":null,"total_membergroupsale_price":null,"total_setproductsale_price":null,"total_shipfeesale_price":null}}'
var aBasketProductData = [];
var sViewWishListBasket = "F"
var sWishUrl = "https://www.ys2.co.kr/exec/front/Product/Wishlist/"
var sBlackType = ""
var set_option = {"setproduct_require":"setproduct_require","setproduct_option":"setproduct_option","setproduct_add_option":"setproduct_add_option","addproduct_option":"addproduct_option","addproduct_add_option":"addproduct_add_option","code_setproduct":"setproduct","code_addproduct":"addproduct"};
var aWishlistProductData = [];
var aLogData = {"log_server1":"eclog2-033.cafe24.com","log_server2":"elg-db-svcm-061.cafe24.com","mid":"ys2n","stype":"e","domain":"","shop_no":"1","lang":"ko_KR","ver":2,"hash":"","ca":"cfa-js.cafe24.com\/cfa.js","etc":""};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
var EC_ASYNC_LIVELINKON_ID = '';
if (EC$('[async_section=before]').length > 0) {
EC$('[async_section=before]').addClass('displaynone');
}
var EC_APPSCRIPT_ASSIGN_DATA = EC_APPSCRIPT_ASSIGN_DATA || [{'src':'https://instagram-widget.wehost24.com/js/instagram-widget.js?vs=20191021102348.1&client_id=pOawpY4gJZ0oBnihDmiReG'},{'src':'https://file.cloudturing.com/cafe24/naver/bubble.js?vs=20191021111540.1&client_id=ejf67zQS5kk8qvPDJl7SKG'}];
var EC_APPSCRIPT_SDK_DATA = EC_APPSCRIPT_SDK_DATA || ['application','category','product','store'];
</script></body>
<!-- Mirrored from www.ys2.co.kr/order/basket.html?&delvtype=A by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Sep 2021 07:44:19 GMT -->
</html>
