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
<meta name="keywords" content="영숙이네 감귤밭" /></head><body class="padding-body">
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
						    <c:when test="${sessionScope.id eq 'admin'}">
                        		<li class="nav-item"><a class="nav-link" href="/www/admin/adminPage">관리자</a></li>
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
        </nav><!-- //header -->
<hr class="layout"/><div id="wrap">
    <div id="container">
        <div id="contents">
            
<div class="path">
    <span>현재 위치</span>
    <ol><li><a href="/">홈</a></li>
        <li title="현재 위치"><strong>회원 정보 수정</strong></li>
    </ol></div>

<div class="titleArea">
    <h2>회원 정보 수정</h2>
</div>

<div class="xans-element- xans-myshop xans-myshop-asyncbenefit"><div class="ec-base-box typeMember gMessage ">
        <div class="information">
            <p class="thumbnail"><img src="" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag"/></p>
            <div class="description">
                <p>저희 쇼핑몰을 이용해 주셔서 감사합니다. <strong class="txtEm"><span class="authssl_member_name">*****</span></strong> 님은 <strong>[<span class="xans-member-var-group_name"></span><span class="myshop_benefit_ship_free_message"></span>]</strong> 회원이십니다.</p>
                <p class="displaynone myshop_benefit_display_no_benefit "><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price"></span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price"></span><span class="myshop_benefit_dc_type"></span></strong>을 <span class="myshop_benefit_use_dc"></span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_percent"></span></p>
                <p class="displaynone myshop_benefit_display_with_all "><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price_mileage"></span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price_mileage"></span><span class="myshop_benefit_dc_type_mileage"></span></strong>을 <span class="myshop_benefit_use_dc_mileage"></span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_mileage_percent"></span></p>
            </div>
        </div>
     </div>
</div>

<div class="xans-element- xans-member xans-member-updateeventlogon ec-base-box displaynone "><strong class="title">회원정보 수정 시 을 지급하는 이벤트를 진행중입니다.</strong>
<ul>
<li>이벤트 기간 : </li>
         <li>아래의 조건을 충족한 경우  지급됩니다.<br/></li>
    </ul>
</div>

<form id="editForm" name="editForm" action="/exec/front/Member/edit/" method="post" target="_self" enctype="multipart/form-data" >
<input id="useSimpleSignin" name="useSimpleSignin" value="F" type="hidden"  />
<input id="is_certification" name="is_certification" value="F" type="hidden"  />
<input id="is_email_auth_use" name="is_email_auth_use" value="F" type="hidden"  />
<input id="emailDuplCheck" name="emailDuplCheck" value="T" type="hidden"  />
<input id="login_id_type" name="login_id_type" value="id" type="hidden"  />
<input id="is_display_register_name" name="is_display_register_name" value="T" type="hidden"  />
<input id="display_required_name" name="display_required_name" value="T" type="hidden"  />
<input id="is_display_register_name_phonetic" name="is_display_register_name_phonetic" value="F" type="hidden"  />
<input id="display_required_name_phonetic" name="display_required_name_phonetic" value="F" type="hidden"  />
<input id="is_display_register_eng_name" name="is_display_register_eng_name" value="F" type="hidden"  />
<input id="display_required_name_en" name="display_required_name_en" value="F" type="hidden"  />
<input id="passwd_type" name="passwd_type" value="A" type="hidden"  />
<input id="is_display_register_addr" name="is_display_register_addr" value="T" type="hidden"  />
<input id="is_display_register_addr2" name="is_display_register_addr2" value="T" type="hidden"  />
<input id="__addr1" name="__addr1" value="" type="hidden"  />
<input id="__city_name" name="__city_name" value="" type="hidden"  />
<input id="__state_name" name="__state_name" value="" type="hidden"  />
<input id="__isRuleBasedAddrForm" name="__isRuleBasedAddrForm" value="F" type="hidden"  />
<input id="display_required_address" name="display_required_address" value="T" type="hidden"  />
<input id="display_required_address2" name="display_required_address2" value="T" type="hidden"  />
<input id="is_display_register_mobile" name="is_display_register_mobile" value="T" type="hidden"  />
<input id="display_required_cell" name="display_required_cell" value="T" type="hidden"  />
<input id="display_register_mobile" name="display_register_mobile" value="T" type="hidden"  />
<input id="use_checking_mobile_number_duplication" name="use_checking_mobile_number_duplication" value="F" type="hidden"  />
<input id="isMobileVerify" name="isMobileVerify" value="F" type="hidden"  />
<input id="is_display_register_phone" name="is_display_register_phone" value="F" type="hidden"  />
<input id="display_required_phone" name="display_required_phone" value="F" type="hidden"  />
<input id="display_register_phone" name="display_register_phone" value="T" type="hidden"  />
<input id="is_display_password_hint" name="is_display_password_hint" value="T" type="hidden"  />
<input id="required_is_sms_flag" name="required_is_sms_flag" value="F" type="hidden"  />
<input id="required_is_news_mail_flag" name="required_is_news_mail_flag" value="T" type="hidden"  />
<input id="is_display_register_birthday" name="is_display_register_birthday" value="F" type="hidden"  />
<input id="display_required_is_birthday" name="display_required_is_birthday" value="F" type="hidden"  />
<input id="display_required_sex" name="display_required_sex" value="F" type="hidden"  />
<input id="nick_name_flag" name="nick_name_flag" value="F" type="hidden"  />
<input id="nick_name_confirm" name="nick_name_confirm" value="F" type="hidden"  />
<input id="display_required_nick_name_flag" name="display_required_nick_name_flag" value="F" type="hidden"  />
<input id="is_display_register_wedding" name="is_display_register_wedding" value="F" type="hidden"  />
<input id="display_required_is_wedding_anniversary" name="display_required_is_wedding_anniversary" value="F" type="hidden"  />
<input id="is_display_register_life_partner" name="is_display_register_life_partner" value="F" type="hidden"  />
<input id="display_required_is_life_partner" name="display_required_is_life_partner" value="F" type="hidden"  />
<input id="display_required_job" name="display_required_job" value="F" type="hidden"  />
<input id="display_required_job_class" name="display_required_job_class" value="F" type="hidden"  />
<input id="display_required_school" name="display_required_school" value="F" type="hidden"  />
<input id="display_required_interest" name="display_required_interest" value="F" type="hidden"  />
<input id="display_required_region" name="display_required_region" value="F" type="hidden"  />
<input id="display_required_internet" name="display_required_internet" value="F" type="hidden"  />
<input id="display_required_child" name="display_required_child" value="F" type="hidden"  />
<input id="display_required_car" name="display_required_car" value="F" type="hidden"  />
<input id="display_required_earning" name="display_required_earning" value="F" type="hidden"  />
<input id="display_required_reco_id" name="display_required_reco_id" value="F" type="hidden"  />
<input id="display_required_add1" name="display_required_add1" value="F" type="hidden"  />
<input id="display_required_add2" name="display_required_add2" value="F" type="hidden"  />
<input id="display_required_add3" name="display_required_add3" value="F" type="hidden"  />
<input id="display_required_add4" name="display_required_add4" value="F" type="hidden"  />
<input id="returnUrl" name="returnUrl" value="/" type="hidden"  />
<input id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T" type="hidden"  />
<input id="sUseSeparationNameFlag" name="sUseSeparationNameFlag" value="F" type="hidden"  />
<input id="sEData" name="sEData" value="aOTTKK3R6erecEJFYfPD922nF8Bget5pQupcuHpvR3PBJuxUjfMgAJFxvB72199regt2pi+1KkTJZUNxn26yYu+PERQe6je26FeyQLp5R6p57bMRnorUfsd8gqXcLO71xy+tI5Wf5oovy4LhT2c9f5Aajs0RNyV7JPHdSXdU6ymXlwBw3bo3ntITyaxy4AuD3FqeORGCBt74fFyzE8EkQPFEyQFiEdhjYs1FJ407qa9hcoPr3ZkC9GtAddZf2LfKXBY3r55DcvyJMdfeVmqCufGKUMk1SWDOR2aaGBD3XfKy+YLGIjF/TDLE9DKUokGuWlK9MBklvTE9J87SPFsikHyWUJGfro51tmZZOThuXFTJN+QyUCKWfoM2qA2vBYPwSzD98VaGaIsnB12sIfMVtTcX12jkW5xHDHupNPeE2EQHEwYAUd5TnwimSh5yCQzICnwxfImyQu+KWzoc28FKJdfWi6zUJ9mSN6iKMZpLOlolnUdtBkCoxllvvTSNqd3YfbdXzmUc3lRkEhROHjb6xauKjW+oewPyQEnTwC8U+Bo62auCK09BJ78o9VaLa0vySfw4bcxihCW0i5UGxcAb/IWyFRT3gj5Tf0FNAd0RVq9foMMjwsrMlD0jeee7THVDrD2FM8pikju7RfULCHH9jaEZ7dUSDh/WOkluDxVEYkkCAhXYHNiGxdru/dGA6V5GVaD8xHrusYyQHZm1fp9bumiGOi3xqpVnNB5EUtD20+5rC28WaJdF4RvBdD4X3OXGUiAHSOtir5EFe7K2rAupbHUlSTFK7fGazVzBdU1mQtoz9+WiZ4tEBfuH286u13GjAH7cHPFVkA0eM8dhpaEIaLeNoWSmd4aXPSiP+Mkody3y2wADB4h2l2Sr7Zv3D5DBFofB4H2QwmaeCTOpFj4j7McmEqD1j8XbDvcTiddekQmkTi4T1tXewHnjAeRmIe1u+VsJHrJUfKpT5NveyP5GxxseU30u47Nj9uM1gpvbh/Dv51vjRmXU/x0eDVm1Iagrn652/NaxGNR4NL2rjRCcWBpWUpmRx//hwnoHRK0YiLvUOOGfUJsguoqI7v88aA1EKiIdiGlHqZ4WATu2FyAcf2PNfcIXuYoPAyl97wSBb6XKyWujbv7dyabmgQF4jvrvrjsxCnUX8sDSfW+rp8EZvLj+LIOYK7zbxzqdVCcV68JsncGH1+5ckm6uH1WZ8XLXBIR1r449yr/J06vOBPe3mf7hTT+ZVclteM/IQadD38sn0q92itiN7IGODWLHlv2tb6meD3fh3wDIMBKXeB2XsV9DGKoB5M04WDPenP+GOh8qeiukAJBhXlGJn+/SWitwY4nCYzlkg1lAHWXZiSHYE7VITbKHltdxA46yGrQrh0IbWbJkQHG7YpE87rtz8EAewGET7pgDd1rIo2YG1hbQSoioPSqqSwVwrNbukMLU0lBNtls3yyLhs+h1hH059lmnfsSebt3St1NlTxaYsQ0lr++xD7VsSRKyuT9JL5QdTinRqjboEBrOYXFdPJDprJFripquAxV+mL4Xds+TbokeFFIQTDcVxM9h+YEGtcxpS9qnHJj/oYvpxgo13lcPP6FugAx9WhEw7mtfAMNcdSBA37nQ6lE/blyRLiUac0FfcrfPY5hfaehM4eF4OesGru7tvmNVLgvgl7axRYOIgnA23/5/cchVu2HkdAa4I282mUU=" type="hidden"  />
<input id="sEDataDiff" name="sEDataDiff" value="eyJhZGQxIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQzIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQ0IjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJtZW1iZXJfaWQiOiIxOWNiNTBiM2EyNTZhYjRkMTc1M2UxMDY4ZGY1ZTc0MSIsImhpbnRfYW5zd2VyIjoiZGJjNTY1NzYxY2U4Y2IzMzZjODBmODBiZDFlMDZhMTYiLCJuYW1lX2NvbnRlbnRzIjoiNDRkYTZiMzdkNjVjNWNiNWJmMjhmOGY0YWE0MGQ4NWIiLCJzc25fY29udGVudHMiOiI1OGE0YTQ3YzQ3ZGRhMTE1MmFjNGYxOGIwZjE2M2U3NCIsInBvc3Rjb2RlMSI6IjM4Mzk4ZmFiMWRkM2NjY2YwZjYyNGQ5MzVhNTc4OThkIiwicG9zdGNvZGUyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGRyMSI6IjlkZmU3ZDZjNWJhYzk1OWMyMDc2M2RmYjgyZTYyYjA0IiwiYWRkcjIiOiIxYWFlMTg1NjEyM2JhMzJjMDA1ZGJiYjk5ZWIyOGY0MSIsImNpdHlfbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwic3RhdGVfbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGhvbmUyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJwaG9uZTMiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIm1vYmlsZTIiOiI2ODkwMTZmNmVlODBlZjUwN2UyZjVkNjc2MTRiNGJlOCIsIm1vYmlsZTMiOiJlNjFlYWEzOGFlZDYyMWRkNzc2ZDBlNjdjZmVlZTM2NiIsImVtYWlsMSI6IjE5Y2I1MGIzYTI1NmFiNGQxNzUzZTEwNjhkZjVlNzQxIiwiZW1haWwyIjoiMjAwYjBlNjg5NWU5OTNjMjlkZDA5ZGM3NGJjZTE3NzIiLCJlbWFpbDMiOiIyMDBiMGU2ODk1ZTk5M2MyOWRkMDlkYzc0YmNlMTc3MiIsImJpcnRoX3llYXIiOiI1ZWM4MjlkZWJlNTRiMTlhNWY3OGQ5YTY1YjkwMGEzOSIsImJpcnRoX21vbnRoIjoiYTJlZjQwNmUyYzIzNTFlMGI5ZTgwMDI5YzkwOTI0MmQiLCJiaXJ0aF9kYXkiOiJlNDVlZTdjZTdlODgxNDlhZjhkZDMyYjI3Zjk1MTJjZSIsIm1hcnJ5X3llYXIiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIm1hcnJ5X21vbnRoIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJtYXJyeV9kYXkiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInBhcnRuZXJfeWVhciI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGFydG5lcl9tb250aCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGFydG5lcl9kYXkiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIl9fYWRkcjEiOiI5ZGZlN2Q2YzViYWM5NTljMjA3NjNkZmI4MmU2MmIwNCIsIl9fY2l0eV9uYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJfX3N0YXRlX25hbWUiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInBob25lMSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwibW9iaWxlMSI6ImVhMjBhMDQzYzA4ZjUxNjhkNDQwOWZmNDE0NGYzMmUyIiwibmlja19uYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJpc19uZXdzX21haWwiOiI4MDA2MTg5NDMwMjUzMTVmODY5ZTRlMWYwOTQ3MTAxMiIsImlzX3NtcyI6IjgwMDYxODk0MzAyNTMxNWY4NjllNGUxZjA5NDcxMDEyIiwic2V4IjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJpc19zb2xhcl9jYWxlbmRhciI6ImI5ZWNlMThjOTUwYWZiZmE2YjBmZGJmYTRmZjczMWQzIiwicmVnaW9uIjoiMmE0MDRlM2YzNWNlM2RlMDM1Yzk1NTk2MDE0N2I4MTIiLCJpbnRlcmVzdCI6Ijg1M2FlOTBmMDM1MTMyNGJkNzNlYTYxNWU2NDg3NTE3IiwiaW50ZXJuZXQiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImNoaWxkIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJjYXIiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImF2YWlsX21pbGVhZ2UiOiJkNTBkOWE3YzNiZDNhYWQ5Njg4MGY4NjdkYzhlOTE4MCIsInJlY29faWQiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInppcGNvZGUiOiIzODM5OGZhYjFkZDNjY2NmMGY2MjRkOTM1YTU3ODk4ZCIsIm1lbWJlcl90eXBlIjoiODM4NzhjOTExNzEzMzg5MDJlMGZlMGZiOTdhOGM0N2EiLCJjb21wYW55X3R5cGUiOiI3MjE1ZWU5YzdkOWRjMjI5ZDI5MjFhNDBlODk5ZWM1ZiIsImNzc24iOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImJuYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJjbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwiYnNzbjEiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImZvcmVpZ25lcl90eXBlIjoiNzIxNWVlOWM3ZDlkYzIyOWQyOTIxYTQwZTg5OWVjNWYiLCJjaXRpemVuc2hpcCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGVyc29uYWxfdHlwZSI6IjcyMTVlZTljN2Q5ZGMyMjlkMjkyMWE0MGU4OTllYzVmIiwicmVmdW5kX2JhbmtfY29kZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwiY291bnRyeV9jb2RlIjoiMGFlMTY2ZGZmZGUwZTM2OGU5YzcxMzk2OGVhODNmYzciLCJpc19hZ3JlZWRfcHJvdmlkaW5nX2luZm9ybWF0aW9uIjoiODAwNjE4OTQzMDI1MzE1Zjg2OWU0ZTFmMDk0NzEwMTIiLCJpc19hZ3JlZWRfY29uc2lnbmluZ19pbmZvcm1hdGlvbiI6IjgwMDYxODk0MzAyNTMxNWY4NjllNGUxZjA5NDcxMDEyIiwiaXNfYXV0aGVudGljYXRlZF9ieV9lbWFpbCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwidG90YWxfZGVwb3NpdCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwiaXNfam9pbl9wcml2YWN5X3BvbGljeV9vcHRpb25hbCI6ImI5ZWNlMThjOTUwYWZiZmE2YjBmZGJmYTRmZjczMWQzIn0=" type="hidden"  />
<input id="display_agree_information_check_flag" name="display_agree_information_check_flag" value="F" type="hidden"  />
<input id="display_agree_consignment_check_flag" name="display_agree_consignment_check_flag" value="F" type="hidden"  />
<input id="display_agree_privacy_optional_check_flag" name="display_agree_privacy_optional_check_flag" value="F" type="hidden"  /><div class="xans-element- xans-member xans-member-edit"><!--
        $login_page = /member/login.html
     -->
<div class="displaynone">
        <h3>회원인증</h3>
        <div class="ec-base-table typeWrite">
            <table border="1" summary="">
<caption>회원인증</caption>
            <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr class="displaynone">
<th scope="row">회원구분</th>
                    <td></td>
                </tr>
<tr>
<th scope="row">인증여부</th>
                    <td>
                        <strong class="txtEm">미인증</strong>
                        <ul class="certifInfo">
                                                    </ul>
</td>
                </tr>
<tr class="">
<th scope="row">회원인증</th>
                    <td>
                                                <div class="certifForm" id="ipinWrap">
                            <a href="#none" class="btnNormal" onclick=""><img src="//img.echosting.cafe24.com/skin/base/common/btn_icon_ipin.gif" alt=""/> 아이핀인증</a>
                            <p class="certifInfo">아이핀이란, 회원님의 개인정보 보호를 위해 웹사이트에 주민등록번호를 제공하지 않고 본인임을 확인하는 인터넷상의 개인식별번호 서비스입니다.<br/>아이핀을 통한 가입을 원하시면 아이핀 인증 버튼을 눌러 진행해 주십시오.</p>
                        </div>
                        <div class="certifForm" id="mobileWrap">
                            <a href="#none" class="btnNormal" onclick=""><img src="//img.echosting.cafe24.com/skin/base/common/btn_icon_mobile.gif" alt=""/> 휴대폰인증</a>
                            <p class="certifInfo">본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
                        </div>
                        <div class="certifForm" id="emailWrap">
                            <p class="certifInfo">기본정보 &gt; 이메일 항목에 입력하신 정보로 본인인증을 진행합니다.<br/>정보수정 후에 입력하신 이메일 주소로 인증 메일이 발송되오니, 확인해 주시기 바랍니다.</p>
                        </div>
                    </td>
                </tr>
</tbody>
</table>
</div>
    </div>
<h3 class=" ">기본정보</h3>
<p class="required "><img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/> 필수입력사항</p>
<div class="ec-base-table typeWrite">
        <table border="1" summary="">
<caption>회원 기본정보</caption>
        <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td>
                    <input id="member_id" name="member_id" fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"  />                     (영문소문자/숫자, 4~16자)
                </td>
            </tr>
<tr>
<th scope="row">비밀번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="" alt="필수"/></th>
                <td>
                    <div class="eTooltip">
                        <input id="passwd" name="passwd" fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 0="disabled" value="" type="password"  />                        <div class="ec-base-tooltip typeUpper ">
                            <div class="content">
                                <strong class="txtWarn">※ 비밀번호 입력 조건</strong>
                                <ul class="ec-base-help typeDash gBlank10 txtWarn">
                                    
                - 대소문자/숫자 4자~16자<br>
                - 특수문자 및 공백 입력 불가능                                </ul>
</div>
                            <a href="#none" class="btnClose"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기"/></a>
                            <span class="edge"></span>
                        </div>
                    </div>
                    (영문 대소문자/숫자 4자~16자)                </td>
            </tr>
<tr class="">
<th scope="row">비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><input id="user_passwd_confirm" name="user_passwd_confirm" fw-filter="isFill&isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" 0="disabled" value="" type="password"  /> <span id="pwConfirmMsg"></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호</th>
                <td>
                    <div class="eTooltip">
                        <input id="new_passwd" name="new_passwd" fw-filter="isFill&isMin[4]&isMax[16]" fw-label="새 비밀번호" fw-msg="" maxlength="16" 0="disabled" value="" type="password"  />                        <div class="ec-base-tooltip typeUpper">
                            <div class="content">
                                <strong class="txtWarn">※ 비밀번호 입력 조건</strong>
                                <ul class="ec-base-help typeDash gBlank10 txtWarn">
                                    
                - 대소문자/숫자 4자~16자<br>
                - 특수문자 및 공백 입력 불가능                                </ul>
</div>
                            <a href="#none" class="btnClose"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기"/></a>
                            <span class="edge"></span>
                        </div>
                    </div>
                    (영문 대소문자/숫자 4자~16자)                </td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호 확인</th>
                <td><input id="new_passwd_confirm" name="new_passwd_confirm" fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호" fw-msg="" maxlength="16" 0="disabled" value="" type="password"  /> <span id="new_pwConfirmMsg"></span>
</td>
            </tr>
<tr class="">
<th scope="row">비밀번호 확인 질문 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><select id="hint" name="hint" fw-filter="isFill" fw-label="hint" fw-msg="" >
<option value="hint_01">기억에 남는 추억의 장소는?</option>
<option value="hint_02">자신의 인생 좌우명은?</option>
<option value="hint_03">자신의 보물 제1호는?</option>
<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value="hint_06" selected="selected">추억하고 싶은 날짜가 있다면?</option>
<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
<option value="hint_15">내가 좋아하는 캐릭터는?</option>
</select></td>
            </tr>
<tr class="">
<th scope="row">비밀번호 확인 답변 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><input id="hint_answer" name="hint_answer" fw-filter="isFill" fw-label="비밀번호 확인시 답변" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></td>
            </tr>
<tr style="display:1">
<th scope="row" id="">이름 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><input id="name" name="name" fw-filter="isFill&isMax[30]" fw-label="이름" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" readonly="readonly" value="이다현" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row">이름(영문) <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="name_en" name="name_en" fw-filter="isMax[30]&isAlphaSpace" fw-label="이름(영문)" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" value="" type="text"  /> (이름 - 성 형식으로 입력해 주세요.)</td>
            </tr>
<tr class="displaynone">
<th scope="row"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">상호명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">사업자번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">국적 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="">
<th scope="row">주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="" alt="필수"/></th>
                <td>
                    <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"  />                    <a href="#none" class="btnNormal" onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'ko_KR');" id="postBtn">우편번호</a><br/>
                    <input id="addr1" name="addr1" fw-filter="isFill" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"  /> 기본주소<br/>
                    <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /> 나머지주소                 </td>
            </tr>
<tr class="">
<th scope="row">일반전화 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="phone1" name="phone[]" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" >
<option value="02">02</option>
<option value="031">031</option>
<option value="032">032</option>
<option value="033">033</option>
<option value="041">041</option>
<option value="042">042</option>
<option value="043">043</option>
<option value="044">044</option>
<option value="051">051</option>
<option value="052">052</option>
<option value="053">053</option>
<option value="054">054</option>
<option value="055">055</option>
<option value="061">061</option>
<option value="062">062</option>
<option value="063">063</option>
<option value="064">064</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="070">070</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
<option value="0508">0508</option>
</select>-<input id="phone2" name="phone[]" maxlength="4" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"  />-<input id="phone3" name="phone[]" maxlength="4" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"  /></td>
            </tr>
<tr class="">
<th scope="row">휴대전화 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="" alt="필수"/></th>
                <td><select id="mobile1" name="mobile[]" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" >
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  />-<input id="mobile3" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row">SMS 수신여부 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><input id="is_sms0" name="is_sms" fw-filter="" fw-label="is_sms" fw-msg="" value="T" type="radio"  /><label for="is_sms0" >수신함</label>
<input id="is_sms1" name="is_sms" fw-filter="" fw-label="is_sms" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_sms1" >수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
</td>
            </tr>
<tr>
<th scope="row">이메일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td>
                    <input id="email1" name="email1" fw-filter="isFill&isEmail" fw-label="이메일" fw-alone="N" fw-msg="" value="" type="text"  /> <span id="emailMsg"></span>
                    <p class="displaynone">이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br/>인증 메일은 24시간 동안 유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서 재발송 요청을 해주시기 바랍니다.</p>
                </td>
            </tr>
<tr class="">
<th scope="row">이메일 수신여부 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"/></th>
                <td><input id="is_news_mail0" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="T" type="radio"  /><label for="is_news_mail0" >수신함</label>
<input id="is_news_mail1" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_news_mail1" >수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">평생회원</th>
                <td>
                    <input id="is_lifetime0" name="is_lifetime" fw-filter="" fw-label="is_lifetime" fw-msg="" value="T" type="radio"  /><label for="is_lifetime0" >동의함</label>
<input id="is_lifetime1" name="is_lifetime" fw-filter="" fw-label="is_lifetime" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_lifetime1" >동의안함</label>                    <ul class="txtDesc">
<li>평생회원은 <strong>영숙이네 감귤밭</strong> 회원 탈퇴시까지 휴면회원으로 전환되지 않습니다.</li>
                        <li class="displaynone">지금 평생회원으로 전환하시면 쿠폰혜택을 드립니다.(전환시 최초 1회)</li>
                        <li class="displaynone">평생회원 쿠폰혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.</li>
                    </ul>
</td>
            </tr>
</tbody>
</table>
</div>
<h3 class=" ">추가정보</h3>
<div class="ec-base-table typeWrite ">
        <table border="1" summary="">
<caption>회원 추가정보</caption>
        <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr class="displaynone">
<th scope="row">별명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="nick_name" name="nick_name" fw-filter="" fw-label="별명" fw-msg="" class="inputTypeText" placeholder="" maxlength="20" value="" type="text"  /> (한글2~10자/영문 대소문자4~20자/숫자 혼용가능)</td>
            </tr>
<tr class="displaynone">
<th scope="row">성별 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" 0="disabled" value="M" type="radio"  /><label for="is_sex0" >남자</label>
<input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" 0="disabled" value="F" type="radio"  /><label for="is_sex1" >여자</label></td>
            </tr>
<tr class="">
<th scope="row">생년월일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="birth_year" name="birth_year" fw-filter="" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"  /> 년 <input id="birth_month" name="birth_month" fw-filter="" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 월 <input id="birth_day" name="birth_day" fw-filter="" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 일 <span class="gIndent20 displaynone"><input id="is_solar_calendar0" name="is_solar_calendar" fw-filter="" fw-label="생년월일" fw-msg="" value="T" type="radio" checked="checked"  /><label for="is_solar_calendar0" >양력</label>
<input id="is_solar_calendar1" name="is_solar_calendar" fw-filter="" fw-label="생년월일" fw-msg="" value="F" type="radio"  /><label for="is_solar_calendar1" >음력</label></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">결혼기념일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="marry_year" name="marry_year" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"  /> 년 <input id="marry_month" name="marry_month" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 월 <input id="marry_day" name="marry_day" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 일</td>
            </tr>
<tr class="displaynone">
<th scope="row">배우자생일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="partner_year" name="partner_year" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"  /> 년 <input id="partner_month" name="partner_month" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 월 <input id="partner_day" name="partner_day" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 일</td>
            </tr>
<tr class="displaynone">
<th scope="row">자녀 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="child" name="child" fw-filter="" fw-label="자녀" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="child_01">없음</option>
<option value="child_02">1</option>
<option value="child_03">2</option>
<option value="child_04">3</option>
<option value="child_05">4</option>
<option value="child_06">5</option>
<option value="child_07">6</option>
<option value="child_08">7</option>
<option value="child_09">8</option>
<option value="child_10">9</option>
<option value="child_11">10 이상</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">최종학력 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="school" name="school" fw-filter="" fw-label="최종학력" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="school_01">초등학교재학</option>
<option value="school_02">초등학교졸업</option>
<option value="school_03">중학교재학</option>
<option value="school_04">중학교졸업</option>
<option value="school_05">고등학교재학</option>
<option value="school_06">고등학교졸업</option>
<option value="school_07">대학교재학</option>
<option value="school_08">대학교졸업</option>
<option value="school_09">대학원재학</option>
<option value="school_10">대학원졸업이상</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">직종 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="job_class" name="job_class" fw-filter="" fw-label="직종" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="job_class_05">서비스</option>
<option value="job_class_06">교육</option>
<option value="job_class_07">부동산/운송</option>
<option value="job_class_08">농/임/수/광업</option>
<option value="job_class_09">금융</option>
<option value="job_class_10">유통</option>
<option value="job_class_11">예술</option>
<option value="job_class_12">의료</option>
<option value="job_class_13">법률</option>
<option value="job_class_14">제조/무역</option>
<option value="job_class_15">건설업</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">직업 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="job" name="job" fw-filter="" fw-label="직업" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="job_01">학생</option>
<option value="job_02">회사원</option>
<option value="job_03">자영업</option>
<option value="job_04">무직</option>
<option value="job_05">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">연소득 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="earning" name="earning" fw-filter="" fw-label="연소득" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="earning_01">없음</option>
<option value="earning_02">1000만원 이하</option>
<option value="earning_03">1200만원 이하</option>
<option value="earning_04">1500만원 이하</option>
<option value="earning_05">1800만원 이하</option>
<option value="earning_06">2000만원 이하</option>
<option value="earning_07">2500만원 이하</option>
<option value="earning_08">3000만원 이하</option>
<option value="earning_09">4000만원 이하</option>
<option value="earning_10">5000만원 이하</option>
<option value="earning_11">5000만원 이상</option>
<option value="earning_12">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">자동차 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="car" name="car" fw-filter="" fw-label="자동차" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="car_01">없음</option>
<option value="car_02">1000cc 이하</option>
<option value="car_03">1000cc ~ 1500cc</option>
<option value="car_04">1500cc ~ 2000cc</option>
<option value="car_05">2000cc ~ 3000cc</option>
<option value="car_06">3000cc ~ 4000cc</option>
<option value="car_07">4000cc 이상</option>
</select></td>
            </tr>
<tr class="">
<th scope="row">지역 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="region" name="region" fw-filter="" fw-label="지역" fw-msg="" >
<option value="">선택</option>
<option value="region_01" selected="selected">경기</option>
<option value="region_02">서울</option>
<option value="region_03">인천</option>
<option value="region_04">강원</option>
<option value="region_05">충남</option>
<option value="region_06">충북</option>
<option value="region_07">대전</option>
<option value="region_08">경북</option>
<option value="region_09">경남</option>
<option value="region_10">대구</option>
<option value="region_11">부산</option>
<option value="region_12">울산</option>
<option value="region_13">전북</option>
<option value="region_14">전남</option>
<option value="region_15">광주</option>
<option value="region_16">제주</option>
<option value="region_17">해외</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">인터넷 이용장소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><select id="internet" name="internet" fw-filter="" fw-label="인터넷" fw-msg="" >
<option value="" selected="selected">선택</option>
<option value="internet_01">집</option>
<option value="internet_02">회사</option>
<option value="internet_03">PC방</option>
<option value="internet_04">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">관심분야 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><div class="interest"><input id="inter_check0" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="0" type="checkbox"  /><label for="inter_check0" >애니메이션</label>
<input id="inter_check1" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="1" type="checkbox"  /><label for="inter_check1" >영화/연극</label>
<input id="inter_check2" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="2" type="checkbox"  /><label for="inter_check2" >놀이공원</label>
<input id="inter_check3" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="3" type="checkbox"  /><label for="inter_check3" >경품정보</label>
<input id="inter_check4" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="4" type="checkbox"  /><label for="inter_check4" >미술전시회</label>
<input id="inter_check5" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="5" type="checkbox"  /><label for="inter_check5" >클래식 콘서트</label>
<input id="inter_check6" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="6" type="checkbox"  /><label for="inter_check6" >패션/미용</label>
<input id="inter_check7" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="7" type="checkbox"  /><label for="inter_check7" >정치</label>
<input id="inter_check8" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="8" type="checkbox"  /><label for="inter_check8" >IT/정보통신</label>
<input id="inter_check9" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="9" type="checkbox"  /><label for="inter_check9" >스포츠</label>
<input id="inter_check10" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="10" type="checkbox"  /><label for="inter_check10" >요리/음식</label>
<input id="inter_check11" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="11" type="checkbox"  /><label for="inter_check11" >연예인</label>
<input id="inter_check12" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="12" type="checkbox"  /><label for="inter_check12" >여성/주부</label>
<input id="inter_check13" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="13" type="checkbox"  /><label for="inter_check13" >육아</label>
<input id="inter_check14" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="14" type="checkbox"  /><label for="inter_check14" >비즈니스/금융/부동산</label>
<input id="inter_check15" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="15" type="checkbox"  /><label for="inter_check15" >주식/증권</label>
<input id="inter_check16" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="16" type="checkbox"  /><label for="inter_check16" >스포츠/레져/취미</label>
<input id="inter_check17" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="17" type="checkbox"  /><label for="inter_check17" >경매/공동구매</label>
<input id="inter_check18" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="18" type="checkbox"  /><label for="inter_check18" >뉴스/정보</label>
<input id="inter_check19" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="19" type="checkbox"  /><label for="inter_check19" >컴퓨터/게임</label>
<input id="inter_check20" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="20" type="checkbox"  /><label for="inter_check20" >대학교/대학원정보</label>
<input id="inter_check21" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="21" type="checkbox"  /><label for="inter_check21" >건강/의료</label>
<input id="inter_check22" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="22" type="checkbox"  /><label for="inter_check22" >자동차/여행</label>
<input id="inter_check23" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="23" type="checkbox"  /><label for="inter_check23" >쇼핑/전자상거래</label>
<input id="inter_check24" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="24" type="checkbox"  /><label for="inter_check24" >구인/구직</label>
<input id="inter_check25" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="25" type="checkbox"  /><label for="inter_check25" >어학강좌</label>
<input id="inter_check26" name="inter_check[]" fw-filter="" fw-label="관심분야" fw-msg="" value="26" type="checkbox"  /><label for="inter_check26" >기타등등</label></div></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add1" name="add1" fw-filter="" fw-label="추가항목1" fw-msg="" class="inputTypeText" placeholder="" maxlength="200" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add2" name="add2" fw-filter="" fw-label="추가항목2" fw-msg="" class="inputTypeText" placeholder="" maxlength="200" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add3" name="add3" fw-filter="" fw-label="추가항목3" fw-msg="" class="inputTypeText" placeholder="" maxlength="200" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add4" name="add4" fw-filter="" fw-label="추가항목4" fw-msg="" class="inputTypeText" placeholder="" maxlength="200" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">추천인 아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td><input id="reco_id" name="reco_id" fw-filter="" fw-label="추천인 ID" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row">환불계좌 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수"/></th>
                <td>
                    <span id=""></span> <a href="#none" class="btnNormal gIndent10" ><span id="id_has_bank_img" class="displaynone">환불계좌변경</span><span id="id_reg_bank_img" class="displaynone">환불계좌등록</span></a>
                </td>
            </tr>
</tbody>
</table>
</div>
<div class="displaynone">
        <h3>개인정보 제3자 제공 동의(선택)</h3>
        <div class="ec-base-box typeThinBg agreeArea">
            <div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br />
<br />
- 제공 받는 자 :<br />
- 제공 항목 :<br />
- 제공 목적 :<br />
- 보유 및 이용기간 :<br />
            </div>
            <p class="check"><span>개인정보 제3자 제공에 동의하십니까?</span> <input id="agree_information_check0" name="agree_information_check[]" fw-filter="" fw-label="개인정보 제3자 제공 동의" fw-msg="" value="1" type="checkbox"  /><label for="agree_information_check0" >동의함</label></p>
        </div>
    </div>
<div class="displaynone">
        <h3>개인정보 처리 위탁 동의(선택)</h3>
        <div class="ec-base-box typeThinBg agreeArea">
            <div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br />
<br />
- 위탁받는 자(수탁업체) :<br />
- 위탁업무의 내용:<br />
            </div>
            <p class="check"><span>개인정보 처리 위탁에 동의하십니까?</span> <input id="agree_consignment_check0" name="agree_consignment_check[]" fw-filter="" fw-label="개인정보 처리 위탁 동의" fw-msg="" value="1" type="checkbox"  /><label for="agree_consignment_check0" >동의함</label></p>
        </div>
    </div>
<div class="ec-base-button justify">
        <a href="./myModify" class="btnSubmitFix sizeM" >회원정보수정</a>
        <a href="/index.html" class="btnEmFix sizeM">취소</a>
        <span class="gRight">
            <a href="./myDel" class="btnNormal sizeS">회원탈퇴</a>
        </span>
    </div>

</div>
</form>			
<!-- //main_insta_box -->
		</div><hr class="layout"/><div id="sidebar">

<!-- 좌측 로고 수정하는곳 -->

			<div style="position:fixed; top: 300px; left: 300px;  right: 0;">
			<div class="xans-element- xans-custom xans-custom-moduleedit-6 xans-custom-moduleedit xans-custom-6 side_title ">MY PAGE</div>

			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myInfo">회원정보</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myCart">장바구니</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./myOrder">주문내역</a></div>
			</div>

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
 
<script type="text/javascript">var sAuthSSLDomain = "https://login2.cafe24ssl.com";</script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>
<script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&domain=front&v=2111031267" charset="utf-8"></script>

<script src="/ind-script/optimizer.php?filename=zVhNc9s2EL3bvPZ3sG47nV5txW6byo3GdpKZ3pbgklwTBFAAlKz8-i4pOYkSEyJBeabjGZKm8B6-dt9bMK10g-nFTzYtLDS40bZOLTrdWoHpo0vp4jeVPLof0lC7lgyIOn38t0W73d9-Tn5NfpyIxCePVoF0-xeJ0LomnMvSWhk1hQRFUqhoqNJCq0KS8FEUF8kv_BfVOf_qtf1m3YzVJeMPdjcHj564QcOtlE9R3PYPH8lXD5_egIekITWBR1LGKHzg5-MoZywpX4yg16LthnWjbbPQylstJdrjuJVs3aUxV5bycsR4Wk_yeKvC6n6lzpyWjNDqzGtzJknhWQZKjRnXjkLoptFqbOsnUJyNikPbWPTje-lxHhsjeV9eBoEx6a3OSGJ69xV-N77AqgzgGp23_MptyEzrsGiV6Ba0a5e3nDbNYBCPZQgMgkM1fb_Lnq8pJHzaSg35JFDTeuj6fZc5tOuhzRkAGy23BcnRoZdjAa303RK4Bqy_eiHqpotkVlIP-n9Ids4CohyvqJvLhOBIlXNZGvSQd3I4GI33lTYH23rTb9ZfUINO6-66oieUIS0K0Cz6XHwfTMUB6B0WaFEJXLS2u29XlsQINYTWV87J53tS4VBSdJ1f7lvffc-QODHdiZooH-q0aidYa5DEnNpGgd6aKbAPz7AbEHzdRmGn-Brkud3Lc2eJ4AMiiU2G9lCs-lcf0FKx3WloBPytJrWoUNR_k6gj8AvnVAws4JlB4HVOvovR-_vlnNmuNnPQ1w0EvXRw1j04bsX6iZcWscunSHwEbImwxkshdBvq9R8yQuffeDipfLKdGdmWxIXO5wx-Fu4vOsAP4GbTds6gcvc9PTMYtit8vR4qlAZffR4VqFyeYP0HO1j3wvN6_FxK-ZMtk9QCuMas9XFRnuA4R4VoqApgkyzZYJbkAkl1pcHmh0ZsTJJ1bwOJDArKw0TcYCZ1OamUfS4xUscTODfDhcYovNj_d14ETG78SE5FM-6YWPlGsuKSJ3STlh3cVondNRq30-Bo-DvLCiyCdhEmuAJXo5_PEIig0Ryr_VEwlmWhWxb2OXO55RILyvh5vEGjHcX3_5FcFZaMEQRHnPwIg0WBM-B3PfxBe5CLWePoIzs-oFBhQXODegnbGWP43UIeH0rsPJo1kERPwzaziY_qVnpaadOaeAp2shr3CTpvYw-oZgX7ktYoSdXBY8aIKPuDuo-w2xPE657pAbKT8PzpsYlcIQO-4kMqnh8pdsYss4Zp5YiJ0PGdD55zGUPTdtNtEi78ZChPr_ffiA4PL32dxj87Ycn4ieju-0562dV_BkX_rbeAkP-9SHKQ7sZ8PjH_Bw&type=js&k=8521312471cac64806c53c164aa0bec1de6e69a7&t=1636001785" ></script><script src="/ind-script/optimizer.php?filename=rdAxDsIwDAXQA6Qr57CEuAknSBOTuI3jECeg3r6VEEs3SgdLXv7TtyEKI6AzXbEqLHrNUPqYyJnYOIF6NB6VQgadKd8g2UV6g9EqOZj0swyTXuBXaQs7YZZ8NM3ie8Jvo2cnN5sX4fuQt7-L_-i2tyhrsw9EPzCdKJptajvne842DFKXczTuqZFGKfdIpVAOG7sC&type=js&k=b51979d49f32e49f6547961abf0a7c484bb7bc96&t=1571612613&user=T" ></script>
<script type="text/javascript">
var EC_MOBILE = false;
var EC_MOBILE_DEVICE = false;
var EC_MOBILE_USE = true;
var mobileWeb = false;
AUTHSSL_SC.decrypt("CiIzHLZbyK2C\/ybmHxacsEjlvxzfbbUbnfHeZ\/S420XsHhOMvzz4E5kMpDG7Zh4lJ1F6MBQx1VzFSvPZP69OCM2DXEzAkiZLqN\/qUvlwKI8duc4qHSQjzFNov4VbFuEZ798OC7E2xwWl+JQuPI5gUtIULhgICn4CE\/BIBmkGM6M453J0vQxKACGP6eYxHKtNGMUpzwEVOjYLpt0cQ\/h3yFK4CLrZnLdyrzWh7PL2TaA+6RkaGj65E1HN0K4v8DVrMw8Yjdl704y7FDDeS12EuxSsEBli3fQOpZzQAN4ql8dMRf2W+QVTQx7aUnMebYU8Qjy0Y3iiMrTuY0JI+EuPgnqqa97mulvonBXEE8h6QVpOSGWTs1NoHBnl5txRnLmHSCSmVK4hkwpP5x42rlNR1btBgfm7GKWNgALia04newRYO3DLfHPkIYdyHb6hG1QVsmrb6Z4jgzHApJC+N9UKsFAKBbMlwBV6ihR6PXIVft5JQe3dC9GfgMdt9MCJUklJ");
AUTHSSL_SC.setAppAction('Edit');
AUTHSSL_SC.decrypt("xdCM7M38gte+z+TeWvIc8swSyu65Xy6gbVrrf6vqszYwgBvN1ubNN0BSxNZQ0hZdSTzYgFrsE+\/pdaQfqAATl1mliMwrxyxWvnC0Sbv38M75jEymq11XShlM1Gb73Vp2iJ4qdJb+V3CSSNeH9S9T9LiThTelL4qHToiBNMJCitS65h62mGuqV1m7c+Jj+kdPkVL+O2hxw\/Z4KeZvb3qIN76AktJ82o9pwfIKOHFa+WZ2Yg4KI03rKPU8ECG3DnAgF834yDVptDV5tUpEQTyhAebtguuvARkIXV+KouvGO7MzeQVtYAs\/51ClKDB4MAX9s3HKjePxRvCCwk6q0duZnCVSKLAixEGYmrmZqReRxL2gTnylmujpKmr0VVblOGGA3lbi\/XwW2m8EArlSQ3u60wyk9sbE63qCdiZ\/9vp6T5aHOxojVT4v0kZyBLIhSDuMp1XBKEnA6PggvefYYseo8yQlbYshsav\/Va4reyK\/Cii6uZvU8Z\/0LJV5rRCudB\/Q");
try {
loadContainer.init();
loadContainer.load();
if (window.addEventListener) {
window.addEventListener('load', loadContainer.remove, false);
} else if (window.attachEvent) {
window.attachEvent('onload', loadContainer.remove);
}
} catch (e) {}
var registerOptionalList = {"show_name":{"sDomId":["name","last_name"],"is_required_dom":"is_display_register_name"},"show_name_phonetic":{"sDomId":["name_phonetic","last_name_phonetic"],"is_required_dom":"is_display_register_name_phonetic"},"show_name_en":{"sDomId":["name_en","last_name_en"],"is_required_dom":"is_display_register_eng_name"},"show_address":{"sDomId":["addr1","__addr1","__city_name","__state_name","postcode1"],"is_required_dom":"is_display_register_addr"},"addr2":{"sDomId":["addr2"],"is_required_dom":"is_display_register_addr2"},"show_cell":{"sDomId":["mobile1","mobile2","mobile3"],"is_required_dom":"is_display_register_mobile"},"phone":{"sDomId":["phone1","phone2","phone3"],"is_required_dom":"is_display_register_phone"},"is_sms":{"sDomId":"is_sms","is_required":"F","is_required_dom":"required_is_sms_flag"},"is_news_mail":{"sDomId":"is_news_mail","is_required":"F","is_required_dom":"required_is_news_mail_flag"},"is_birthday":{"sDomId":["birth_year","birth_month","birth_day","is_solar_calendar"],"is_required_dom":"is_display_register_birthday"},"is_sex":{"sDomId":"is_sex","is_required_dom":"display_required_sex"},"nick_name_flag":{"sDomId":"nick_name","is_required_dom":"display_required_nick_name_flag"},"is_wedding_anniversary":{"sDomId":["marry_year","marry_month","marry_day"],"is_required_dom":"is_display_register_wedding"},"is_life_partner":{"sDomId":["partner_year","partner_month","partner_day"],"is_required_dom":"is_display_register_life_partner"},"show_bank_account_no":{"sDomId":["bank_account_owner","refund_bank_code","bank_account_no"],"is_required_dom":"display_required_bank_account_no"},"job":{"sDomId":"job","is_required_dom":"display_required_job","default_value":"job_00"},"job_class":{"sDomId":"job_class","is_required_dom":"display_required_job_class","default_value":"job_class_04"},"school":{"sDomId":"school","is_required_dom":"display_required_school","default_value":"school_00"},"interest":{"sDomId":["inter_check0","inter_check1","inter_check2","inter_check3","inter_check4","inter_check5","inter_check6","inter_check7","inter_check8","inter_check9","inter_check10","inter_check11","inter_check12","inter_check13","inter_check14","inter_check15","inter_check16","inter_check17","inter_check18","inter_check19","inter_check20","inter_check21","inter_check22","inter_check23","inter_check24","inter_check25","inter_check26"],"name":"inter_check[]","is_required_dom":"display_required_interest"},"region":{"sDomId":"region","is_required_dom":"display_required_region","default_value":"region_00"},"internet":{"sDomId":"internet","is_required_dom":"display_required_internet","default_value":"internet_00"},"child":{"sDomId":"child","is_required_dom":"display_required_child","default_value":"child_00"},"car":{"sDomId":"car","is_required_dom":"display_required_car","default_value":"car_00"},"earning":{"sDomId":"earning","is_required_dom":"display_required_earning","default_value":"earning_00"},"reco_id":{"sDomId":"reco_id","is_required_dom":"display_required_reco_id"},"add1":{"sDomId":"add1","is_required_dom":"display_required_add1"},"add2":{"sDomId":"add2","is_required_dom":"display_required_add2"},"add3":{"sDomId":"add3","is_required_dom":"display_required_add3"},"add4":{"sDomId":"add4","is_required_dom":"display_required_add4"},"is_lifetime":{"sDomId":"is_lifetime","is_required":"F","is_required_dom":""}}
var isCountryOfLanguage = 'F'
var sMallDepositName = '예치금';
var sIsLeaveReason = 'F';
$(document).ready(function() {
ZipcodeFinder.Opener.setLanguage({"apply":"","close":""});
ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer',  'city_name' , 'state_name', 'ko_KR', 'addr2', '', '');
});
var common_aAddrInfo = {"aPageType":["fmodify"],"aAllCountryFormat":{"DEFAULT":{"format_type":"\uae30\ubcf8 \ud3ec\ub9f7","format":["country","baseAddr","detailAddr","city","state","zipcode_zipcodeCheck_zipcodeCheckLabel"],"select":["country"],"display_text":["baseAddr","detailAddr","city","state"]},"KR_FOREIGN":{"format_type":"\ud55c\uad6d\ubab0 \ud574\uc678\ubc30\uc1a1","format":["country","zipcode_zipcodeBtn","baseAddr","detailAddr"],"select":["country"],"readonly":["zipcode","baseAddr"],"display_text":["baseAddr","detailAddr"]},"CA":{"format_type":"\uce90\ub098\ub2e4","format":["country","baseAddr","detailAddr","city","state","zipcode_zipcodeCheck_zipcodeCheckLabel"],"select":["country","state"],"display_text":["baseAddr","detailAddr","city","state"]},"CN":{"format_type":"\uc911\uad6d","format":["country","state_city_street","detailAddr","zipcode"],"select":["country","state","city","street"],"display_text":["state","city","street","detailAddr"]},"JP":{"format_type":"\uc77c\ubcf8","format":["country","zipcode_zipcodeBtn","baseAddr","detailAddr"],"select":["country"],"display_text":["baseAddr","detailAddr"],"readonly":["baseAddr"]},"KR":{"format_type":"\ud55c\uad6d","format":["zipcode_zipcodeBtn","baseAddr","detailAddr"],"readonly":["zipcode","baseAddr"],"display_text":["baseAddr","detailAddr"]},"TW":{"format_type":"\ub300\ub9cc","format":["country","state_street","detailAddr","zipcode"],"select":["country","state","street"],"display_text":["state","street","detailAddr"]},"US":{"format_type":"\ubbf8\uad6d","format":["country","baseAddr","detailAddr","city","state","zipcode_zipcodeCheck_zipcodeCheckLabel"],"select":["country","state"],"display_text":["baseAddr","detailAddr","city","state"]},"VN":{"format_type":"\ubca0\ud2b8\ub0a8","format":["country","state_city_street","detailAddr","zipcode_zipcodeCheck_zipcodeCheckLabel"],"select":["country","state","city","street"],"display_text":["detailAddr","street","city","state"]},"PH":{"format_type":"\ud544\ub9ac\ud540","format":["country","detailAddr","state_city_street","zipcode_zipcodeCheck_zipcodeCheckLabel"],"select":["country","state","city","street"],"display_text":["detailAddr","street","city","state"],"checked":["zipcodeCheck"],"disabled":["zipcode"]}},"aAllStateList":{"CA":[{"Alberta":"Alberta"},{"British Columbia":"British Columbia"},{"Manitoba":"Manitoba"},{"Newfoundland and Labrador":"Newfoundland and Labrador"},{"New Brunswick":"New Brunswick"},{"Nova Scotia":"Nova Scotia"},{"Northwest Territories":"Northwest Territories"},{"Nunavut":"Nunavut"},{"Ontario":"Ontario"},{"Prince Edward Island":"Prince Edward Island"},{"Quebec":"Quebec"},{"Saskatchewan":"Saskatchewan"},{"Yukon Territories":"Yukon Territories"}],"CN":[{"\u5e7f\u4e1c":"\u5e7f\u4e1c"},{"\u6e56\u5357":"\u6e56\u5357"},{"\u6d77\u5357":"\u6d77\u5357"},{"\u65b0\u7586":"\u65b0\u7586"},{"\u4e0a\u6d77":"\u4e0a\u6d77"},{"\u5b81\u590f":"\u5b81\u590f"},{"\u56db\u5ddd":"\u56db\u5ddd"},{"\u6d59\u6c5f":"\u6d59\u6c5f"},{"\u8d35\u5dde":"\u8d35\u5dde"},{"\u8fbd\u5b81":"\u8fbd\u5b81"},{"\u6c5f\u82cf":"\u6c5f\u82cf"},{"\u9655\u897f":"\u9655\u897f"},{"\u6fb3\u95e8":"\u6fb3\u95e8"},{"\u5185\u8499\u53e4":"\u5185\u8499\u53e4"},{"\u7518\u8083":"\u7518\u8083"},{"\u5e7f\u897f":"\u5e7f\u897f"},{"\u9ed1\u9f99\u6c5f":"\u9ed1\u9f99\u6c5f"},{"\u5929\u6d25":"\u5929\u6d25"},{"\u5c71\u897f":"\u5c71\u897f"},{"\u6cb3\u5317":"\u6cb3\u5317"},{"\u91cd\u5e86":"\u91cd\u5e86"},{"\u9999\u6e2f":"\u9999\u6e2f"},{"\u5b89\u5fbd":"\u5b89\u5fbd"},{"\u9752\u6d77":"\u9752\u6d77"},{"\u798f\u5efa":"\u798f\u5efa"},{"\u897f\u85cf":"\u897f\u85cf"},{"\u5409\u6797":"\u5409\u6797"},{"\u6cb3\u5357":"\u6cb3\u5357"},{"\u5c71\u4e1c":"\u5c71\u4e1c"},{"\u53f0\u6e7e":"\u53f0\u6e7e"},{"\u6c5f\u897f":"\u6c5f\u897f"},{"\u5317\u4eac":"\u5317\u4eac"},{"\u4e91\u5357":"\u4e91\u5357"},{"\u6e56\u5317":"\u6e56\u5317"}],"TW":[{"\u81fa\u6771\u7e23":"\u81fa\u6771\u7e23"},{"\u82b1\u84ee\u7e23":"\u82b1\u84ee\u7e23"},{"\u91e3\u9b5a\u81fa":"\u91e3\u9b5a\u81fa"},{"\u5b9c\u862d\u7e23":"\u5b9c\u862d\u7e23"},{"\u5357\u6295\u7e23":"\u5357\u6295\u7e23"},{"\u5357\u6d77\u5cf6":"\u5357\u6d77\u5cf6"},{"\u91d1\u9580\u7e23":"\u91d1\u9580\u7e23"},{"\u5609\u7fa9\u7e23":"\u5609\u7fa9\u7e23"},{"\u57fa\u9686\u5e02":"\u57fa\u9686\u5e02"},{"\u5f70\u5316\u7e23":"\u5f70\u5316\u7e23"},{"\u81fa\u4e2d\u5e02":"\u81fa\u4e2d\u5e02"},{"\u96f2\u6797\u7e23":"\u96f2\u6797\u7e23"},{"\u81fa\u5317\u5e02":"\u81fa\u5317\u5e02"},{"\u9ad8\u96c4\u5e02":"\u9ad8\u96c4\u5e02"},{"\u65b0\u7af9\u7e23":"\u65b0\u7af9\u7e23"},{"\u65b0\u7af9\u5e02":"\u65b0\u7af9\u5e02"},{"\u81fa\u5357\u5e02":"\u81fa\u5357\u5e02"},{"\u82d7\u6817\u7e23":"\u82d7\u6817\u7e23"},{"\u65b0\u5317\u5e02":"\u65b0\u5317\u5e02"},{"\u9023\u6c5f\u7e23":"\u9023\u6c5f\u7e23"},{"\u6843\u5712\u5e02":"\u6843\u5712\u5e02"},{"\u5c4f\u6771\u7e23":"\u5c4f\u6771\u7e23"},{"\u5609\u7fa9\u5e02":"\u5609\u7fa9\u5e02"},{"\u6f8e\u6e56\u7e23":"\u6f8e\u6e56\u7e23"}],"US":[{"Alabama":"Alabama"},{"Alaska":"Alaska"},{"Arizona":"Arizona"},{"Arkansas":"Arkansas"},{"Armed Forces Africa":"Armed Forces Africa"},{"Armed Forces Americas":"Armed Forces Americas"},{"Armed Forces Canada":"Armed Forces Canada"},{"Armed Forces Europe":"Armed Forces Europe"},{"Armed Forces Middle East":"Armed Forces Middle East"},{"Armed Forces Pacific":"Armed Forces Pacific"},{"California":"California"},{"Colorado":"Colorado"},{"Connecticut":"Connecticut"},{"Delaware":"Delaware"},{"District of Columbia":"District of Columbia"},{"Federated States Of Micronesia":"Federated States Of Micronesia"},{"Florida":"Florida"},{"Georgia":"Georgia"},{"Hawaii":"Hawaii"},{"Idaho":"Idaho"},{"Illinois":"Illinois"},{"Indiana":"Indiana"},{"Iowa":"Iowa"},{"Kansas":"Kansas"},{"Kentucky":"Kentucky"},{"Louisiana":"Louisiana"},{"Maine":"Maine"},{"Maryland":"Maryland"},{"Massachusetts":"Massachusetts"},{"Michigan":"Michigan"},{"Minnesota":"Minnesota"},{"Mississippi":"Mississippi"},{"Missouri":"Missouri"},{"Montana":"Montana"},{"Nebraska":"Nebraska"},{"Nevada":"Nevada"},{"New Hampshire":"New Hampshire"},{"New Jersey":"New Jersey"},{"New Mexico":"New Mexico"},{"New York":"New York"},{"North Carolina":"North Carolina"},{"North Dakota":"North Dakota"},{"Ohio":"Ohio"},{"Oklahoma":"Oklahoma"},{"Oregon":"Oregon"},{"Pennsylvania":"Pennsylvania"},{"Rhode Island":"Rhode Island"},{"South Carolina":"South Carolina"},{"South Dakota":"South Dakota"},{"Tennessee":"Tennessee"},{"Texas":"Texas"},{"Utah":"Utah"},{"Vermont":"Vermont"},{"Virginia":"Virginia"},{"Washington":"Washington"},{"West Virginia":"West Virginia"},{"Wisconsin":"Wisconsin"},{"Wyoming":"Wyoming"}],"VN":[{"TP. H\u1ed3 Ch\u00ed Minh":"TP. H\u1ed3 Ch\u00ed Minh"},{"H\u00e0 N\u1ed9i":"H\u00e0 N\u1ed9i"},{"\u0110\u00e0 N\u1eb5ng":"\u0110\u00e0 N\u1eb5ng"},{"C\u1ea7n Th\u01a1":"C\u1ea7n Th\u01a1"},{"H\u1ea3i Ph\u00f2ng":"H\u1ea3i Ph\u00f2ng"},{"An Giang":"An Giang"},{"B\u00e0 R\u1ecba - V\u0169ng T\u00e0u":"B\u00e0 R\u1ecba - V\u0169ng T\u00e0u"},{"B\u1ea1c Li\u00eau":"B\u1ea1c Li\u00eau"},{"B\u1eafc K\u1ea1n":"B\u1eafc K\u1ea1n"},{"B\u1eafc Giang":"B\u1eafc Giang"},{"B\u1eafc Ninh":"B\u1eafc Ninh"},{"B\u1ebfn Tre":"B\u1ebfn Tre"},{"B\u00ecnh D\u01b0\u01a1ng":"B\u00ecnh D\u01b0\u01a1ng"},{"B\u00ecnh \u0110\u1ecbnh":"B\u00ecnh \u0110\u1ecbnh"},{"B\u00ecnh Ph\u01b0\u1edbc":"B\u00ecnh Ph\u01b0\u1edbc"},{"B\u00ecnh Thu\u1eadn":"B\u00ecnh Thu\u1eadn"},{"C\u00e0 Mau":"C\u00e0 Mau"},{"Cao B\u1eb1ng":"Cao B\u1eb1ng"},{"\u0110\u1eafk L\u1eafk":"\u0110\u1eafk L\u1eafk"},{"\u0110\u1eafk N\u00f4ng":"\u0110\u1eafk N\u00f4ng"},{"\u0110i\u1ec7n Bi\u00ean":"\u0110i\u1ec7n Bi\u00ean"},{"\u0110\u1ed3ng Nai":"\u0110\u1ed3ng Nai"},{"\u0110\u1ed3ng Th\u00e1p":"\u0110\u1ed3ng Th\u00e1p"},{"Gia Lai":"Gia Lai"},{"H\u00e0 Giang":"H\u00e0 Giang"},{"H\u00e0 Nam":"H\u00e0 Nam"},{"H\u00e0 T\u0129nh":"H\u00e0 T\u0129nh"},{"H\u1ea3i D\u01b0\u01a1ng":"H\u1ea3i D\u01b0\u01a1ng"},{"H\u1eadu Giang":"H\u1eadu Giang"},{"H\u00f2a B\u00ecnh":"H\u00f2a B\u00ecnh"},{"H\u01b0ng Y\u00ean":"H\u01b0ng Y\u00ean"},{"Kh\u00e1nh H\u00f2a":"Kh\u00e1nh H\u00f2a"},{"Ki\u00ean Giang":"Ki\u00ean Giang"},{"Kon Tum":"Kon Tum"},{"Lai Ch\u00e2u":"Lai Ch\u00e2u"},{"L\u1ea1ng S\u01a1n":"L\u1ea1ng S\u01a1n"},{"L\u00e0o Cai":"L\u00e0o Cai"},{"L\u00e2m \u0110\u1ed3ng":"L\u00e2m \u0110\u1ed3ng"},{"Long An":"Long An"},{"Nam \u0110\u1ecbnh":"Nam \u0110\u1ecbnh"},{"Ngh\u1ec7 An":"Ngh\u1ec7 An"},{"Ninh B\u00ecnh":"Ninh B\u00ecnh"},{"Ninh Thu\u1eadn":"Ninh Thu\u1eadn"},{"Ph\u00fa Th\u1ecd":"Ph\u00fa Th\u1ecd"},{"Ph\u00fa Y\u00ean":"Ph\u00fa Y\u00ean"},{"Qu\u1ea3ng B\u00ecnh":"Qu\u1ea3ng B\u00ecnh"},{"Qu\u1ea3ng Nam":"Qu\u1ea3ng Nam"},{"Qu\u1ea3ng Ng\u00e3i":"Qu\u1ea3ng Ng\u00e3i"},{"Qu\u1ea3ng Ninh":"Qu\u1ea3ng Ninh"},{"Qu\u1ea3ng Tr\u1ecb":"Qu\u1ea3ng Tr\u1ecb"},{"S\u00f3c Tr\u0103ng":"S\u00f3c Tr\u0103ng"},{"S\u01a1n La":"S\u01a1n La"},{"T\u00e2y Ninh":"T\u00e2y Ninh"},{"Th\u00e1i B\u00ecnh":"Th\u00e1i B\u00ecnh"},{"Th\u00e1i Nguy\u00ean":"Th\u00e1i Nguy\u00ean"},{"Thanh H\u00f3a":"Thanh H\u00f3a"},{"Th\u1eeba Thi\u00ean - Hu\u1ebf":"Th\u1eeba Thi\u00ean - Hu\u1ebf"},{"Ti\u1ec1n Giang":"Ti\u1ec1n Giang"},{"Tr\u00e0 Vinh":"Tr\u00e0 Vinh"},{"Tuy\u00ean Quang":"Tuy\u00ean Quang"},{"V\u0129nh Long":"V\u0129nh Long"},{"V\u0129nh Ph\u00fac":"V\u0129nh Ph\u00fac"},{"Y\u00ean B\u00e1i":"Y\u00ean B\u00e1i"}],"PH":[{"ABRA":"ABRA"},{"AGUSAN DEL NORTE":"AGUSAN DEL NORTE"},{"AGUSAN DEL SUR":"AGUSAN DEL SUR"},{"AKLAN":"AKLAN"},{"ALBAY":"ALBAY"},{"ANTIQUE":"ANTIQUE"},{"APAYAO":"APAYAO"},{"AURORA":"AURORA"},{"BASILAN":"BASILAN"},{"BATAAN":"BATAAN"},{"BATANES":"BATANES"},{"BATANGAS":"BATANGAS"},{"BENGUET":"BENGUET"},{"BILIRAN":"BILIRAN"},{"BOHOL":"BOHOL"},{"BUKIDNON":"BUKIDNON"},{"BULACAN":"BULACAN"},{"CAGAYAN":"CAGAYAN"},{"CAMARINES NORTE":"CAMARINES NORTE"},{"CAMARINES SUR":"CAMARINES SUR"},{"CAMIGUIN":"CAMIGUIN"},{"CAPIZ":"CAPIZ"},{"CATANDUANES":"CATANDUANES"},{"CAVITE":"CAVITE"},{"CEBU":"CEBU"},{"CITY OF ISABELA (Not a Province)":"CITY OF ISABELA (Not a Province)"},{"COMPOSTELA VALLEY":"COMPOSTELA VALLEY"},{"COTABATO (NORTH COTABATO)":"COTABATO (NORTH COTABATO)"},{"COTABATO CITY (Not a Province)":"COTABATO CITY (Not a Province)"},{"DAVAO DEL NORTE":"DAVAO DEL NORTE"},{"DAVAO DEL SUR":"DAVAO DEL SUR"},{"DAVAO ORIENTAL":"DAVAO ORIENTAL"},{"DINAGAT ISLANDS":"DINAGAT ISLANDS"},{"EASTERN SAMAR":"EASTERN SAMAR"},{"GUIMARAS":"GUIMARAS"},{"IFUGAO":"IFUGAO"},{"ILOCOS NORTE":"ILOCOS NORTE"},{"ILOCOS SUR":"ILOCOS SUR"},{"ILOILO":"ILOILO"},{"ISABELA":"ISABELA"},{"KALINGA":"KALINGA"},{"LA UNION":"LA UNION"},{"LAGUNA":"LAGUNA"},{"LANAO DEL NORTE":"LANAO DEL NORTE"},{"LANAO DEL SUR":"LANAO DEL SUR"},{"LEYTE":"LEYTE"},{"MAGUINDANAO":"MAGUINDANAO"},{"MARINDUQUE":"MARINDUQUE"},{"MASBATE":"MASBATE"},{"METRO MANILA":"METRO MANILA"},{"MISAMIS OCCIDENTAL":"MISAMIS OCCIDENTAL"},{"MISAMIS ORIENTAL":"MISAMIS ORIENTAL"},{"MOUNTAIN PROVINCE":"MOUNTAIN PROVINCE"},{"NEGROS OCCIDENTAL":"NEGROS OCCIDENTAL"},{"NEGROS ORIENTAL":"NEGROS ORIENTAL"},{"NORTHERN SAMAR":"NORTHERN SAMAR"},{"NUEVA ECIJA":"NUEVA ECIJA"},{"NUEVA VIZCAYA":"NUEVA VIZCAYA"},{"OCCIDENTAL MINDORO":"OCCIDENTAL MINDORO"},{"ORIENTAL MINDORO":"ORIENTAL MINDORO"},{"PALAWAN":"PALAWAN"},{"PAMPANGA":"PAMPANGA"},{"PANGASINAN":"PANGASINAN"},{"QUEZON":"QUEZON"},{"QUIRINO":"QUIRINO"},{"RIZAL":"RIZAL"},{"ROMBLON":"ROMBLON"},{"SAMAR (WESTERN SAMAR)":"SAMAR (WESTERN SAMAR)"},{"SARANGANI":"SARANGANI"},{"SIQUIJOR":"SIQUIJOR"},{"SORSOGON":"SORSOGON"},{"SOUTH COTABATO":"SOUTH COTABATO"},{"SOUTHERN LEYTE":"SOUTHERN LEYTE"},{"SULTAN KUDARAT":"SULTAN KUDARAT"},{"SULU":"SULU"},{"SURIGAO DEL NORTE":"SURIGAO DEL NORTE"},{"SURIGAO DEL SUR":"SURIGAO DEL SUR"},{"TARLAC":"TARLAC"},{"TAWI-TAWI":"TAWI-TAWI"},{"ZAMBALES":"ZAMBALES"},{"ZAMBOANGA DEL NORTE":"ZAMBOANGA DEL NORTE"},{"ZAMBOANGA DEL SUR":"ZAMBOANGA DEL SUR"},{"ZAMBOANGA SIBUGAY":"ZAMBOANGA SIBUGAY"}]},"sIsRuleBasedAddrForm":"F","aCountryList":{"GH":{"country_name":"\uac00\ub098(GHANA)","country_code":"GHA"},"GA":{"country_name":"\uac00\ubd09(GABON)","country_code":"GAB"},"GY":{"country_name":"\uac00\uc774\uc544\ub098(GUYANA)","country_code":"GUY"},"GM":{"country_name":"\uac10\ube44\uc544(GAMBIA)","country_code":"GMB"},"GT":{"country_name":"\uacfc\ud14c\ub9d0\ub77c(GUATEMALA)","country_code":"GTM"},"GD":{"country_name":"\uadf8\ub808\ub098\ub2e4(GRENADA)","country_code":"GRD"},"GE":{"country_name":"\uadf8\ub8e8\uc9c0\uc57c(GEORGIA)","country_code":"GEO"},"GR":{"country_name":"\uadf8\ub9ac\uc2a4(GREECE)","country_code":"GRC"},"GN":{"country_name":"\uae30\ub2c8(GUINEA)","country_code":"GIN"},"GW":{"country_name":"\uae30\ub2c8\ube44\uc18c(GUINEA-BISSAU)","country_code":"GNB"},"NA":{"country_name":"\ub098\ubbf8\ube44\uc544(NAMIBIA)","country_code":"NAM"},"NG":{"country_name":"\ub098\uc774\uc9c0\ub9ac\uc544(NIGERIA)","country_code":"NGA"},"ZA":{"country_name":"\ub0a8\uc544\ud504\ub9ac\uce74\uacf5\ud654\uad6d(SOUTH AFRICA)","country_code":"ZAF"},"AN":{"country_name":"\ub124\ub35c\ub780\ub4dc(\ub124\ub35c\ub780\ub4dc\ub839\uc564\ud2f8\ub9ac\uc2a4)(NETHERLANDS(ANTILLES))","country_code":"ANT"},"NL":{"country_name":"\ub124\ub35c\ub780\ub4dc(\ub124\ub378\ub780\ub4dc)(NETHERLANDS)","country_code":"NLD"},"AW":{"country_name":"\ub124\ub35c\ub780\ub4dc(\uc544\ub8e8\ubc14\uc12c)(ARUBA)","country_code":"ABW"},"NP":{"country_name":"\ub124\ud314(NEPAL)","country_code":"NPL"},"NO":{"country_name":"\ub178\ub974\uc6e8\uc774(NORWAY)","country_code":"NOR"},"NZ":{"country_name":"\ub274\uc9c8\ub780\ub4dc(NEW ZEALAND)","country_code":"NZL"},"NE":{"country_name":"\ub2c8\uc81c\ub974(NIGER)","country_code":"NER"},"NI":{"country_name":"\ub2c8\uce74\ub77c\uacfc(NICARAGUA)","country_code":"NIC"},"KR":{"country_name":"\ub300\ud55c\ubbfc\uad6d(KOREA (REP OF,))","country_code":"KOR"},"DK":{"country_name":"\ub374\ub9c8\ud06c(DENMARK)","country_code":"DNK"},"GL":{"country_name":"\ub374\ub9c8\ud06c(\uadf8\ub9b0\ub780\ub4dc)(GREENLAND)","country_code":"GRL"},"FO":{"country_name":"\ub374\ub9c8\ud06c(\ud398\ub85c\uc988\uc81c\ub3c4)(FAROE ISLANDS)","country_code":"FRO"},"DO":{"country_name":"\ub3c4\ubbf8\ub2c8\uce74\uacf5\ud654\uad6d(DOMINICAN REPUBLIC)","country_code":"DOM"},"DM":{"country_name":"\ub3c4\ubbf8\ub2c8\uce74\uc5f0\ubc29(DOMINICA)","country_code":"DMA"},"DE":{"country_name":"\ub3c5\uc77c(GERMANY)","country_code":"DEU"},"TL":{"country_name":"\ub3d9\ud2f0\ubaa8\ub974(TIMOR-LESTE)","country_code":"TLS"},"LA":{"country_name":"\ub77c\uc624\uc2a4(LAO PEOPLE'S DEM REP)","country_code":"LAO"},"LR":{"country_name":"\ub77c\uc774\ubca0\ub9ac\uc544(LIBERIA)","country_code":"LBR"},"LV":{"country_name":"\ub77c\ud2b8\ube44\uc544(LATVIA)","country_code":"LVA"},"RU":{"country_name":"\ub7ec\uc2dc\uc544(RUSSIAN FEDERATION)","country_code":"RUS"},"LB":{"country_name":"\ub808\ubc14\ub17c(LEBANON)","country_code":"LBN"},"LS":{"country_name":"\ub808\uc18c\ud1a0(LESOTHO)","country_code":"LSO"},"RO":{"country_name":"\ub8e8\ub9c8\ub2c8\uc544(ROMANIA)","country_code":"ROU"},"LU":{"country_name":"\ub8e9\uc148\ubd80\ub974\ud06c(LUXEMBOURG)","country_code":"LUX"},"RW":{"country_name":"\ub974\uc644\ub2e4(RWANDA)","country_code":"RWA"},"LY":{"country_name":"\ub9ac\ube44\uc544(LIBYAN ARAB JAMAHIRIYA)","country_code":"LBY"},"LI":{"country_name":"\ub9ac\uccb8\uc26c\ud14c\uc778(LIECHTENSTEIN)","country_code":"LIE"},"LT":{"country_name":"\ub9ac\ud22c\uc544\ub2c8\uc544(LITHUANIA)","country_code":"LTU"},"MG":{"country_name":"\ub9c8\ub2e4\uac00\uc2a4\uce74\ub974(MADAGASCAR)","country_code":"MDG"},"MK":{"country_name":"\ub9c8\ucf00\ub3c4\ub2c8\uc544(MACEDONIA)","country_code":"MKD"},"MW":{"country_name":"\ub9d0\ub77c\uc704(MALAWI)","country_code":"MWI"},"MY":{"country_name":"\ub9d0\ub808\uc774\uc9c0\uc544(MALAYSIA)","country_code":"MYS"},"ML":{"country_name":"\ub9d0\ub9ac(MALI)","country_code":"MLI"},"MX":{"country_name":"\uba55\uc2dc\ucf54(MEXICO)","country_code":"MEX"},"MC":{"country_name":"\ubaa8\ub098\ucf54(MONACO)","country_code":"MCO"},"MA":{"country_name":"\ubaa8\ub85c\ucf54(MOROCCO)","country_code":"MAR"},"MU":{"country_name":"\ubaa8\ub9ac\uc154\uc2a4(MAURITIUS)","country_code":"MUS"},"MR":{"country_name":"\ubaa8\ub9ac\ud0c0\ub2c8(MAURITANIA)","country_code":"MRT"},"MZ":{"country_name":"\ubaa8\uc7a0\ube44\ud06c(MOZAMBIQUE)","country_code":"MOZ"},"ME":{"country_name":"\ubaac\ud14c\ub124\uadf8\ub85c(MONTENEGRO)","country_code":"MNE"},"MD":{"country_name":"\ubab0\ub3c4\ubc14(MOLDOVA, REPUBLIC OF)","country_code":"MDA"},"MV":{"country_name":"\ubab0\ub514\ube0c(MALDIVES)","country_code":"MDV"},"MT":{"country_name":"\ubab0\ud0c0(MALTA)","country_code":"MLT"},"MN":{"country_name":"\ubabd\uace0(MONGOLIA)","country_code":"MNG"},"US":{"country_name":"\ubbf8\uad6d(U.S.A)","country_code":"USA"},"GU":{"country_name":"\ubbf8\uad6d(\uad0c)(GUAM)","country_code":"GUM"},"MH":{"country_name":"\ubbf8\uad6d(\ub9c8\uc544\uc0ec\uc81c\ub3c4)(MARSHALL ISLANDS)","country_code":"MHL"},"VI":{"country_name":"\ubbf8\uad6d(\ubc84\uc9c4\uc81c\ub3c4)(VIRGIN ISLANDS U.S.)","country_code":"VIR"},"WS":{"country_name":"\ubbf8\uad6d(\uc0ac\ubaa8\uc544, \uad6c \uc11c\uc0ac\ubaa8\uc544)(SAMOA)","country_code":"WSM"},"AS":{"country_name":"\ubbf8\uad6d(\uc0ac\ubaa8\uc544\uc81c\ub3c4)(AMERICAN SAMOA)","country_code":"ASM"},"MP":{"country_name":"\ubbf8\uad6d(\uc0ac\uc774\ud310)(NORTHERN MARIANA ISLANDS)","country_code":"MNP"},"PW":{"country_name":"\ubbf8\uad6d(\ud314\ub77c\uc6b0\uc12c)(PALAU)","country_code":"PLW"},"PR":{"country_name":"\ubbf8\uad6d(\ud478\uc5d0\ub974\ud1a0\ub9ac\ucf54\uc12c)(PUERTO RICO)","country_code":"PRI"},"MM":{"country_name":"\ubbf8\uc580\ub9c8(MYANMAR)","country_code":"MMR"},"FM":{"country_name":"\ubbf8\ud06c\ub85c\ub124\uc2dc\uc544(\ub9c8\uc774\ud06c\ub85c\ub124\uc2dc\uc544)(MICRONESIA)","country_code":"FSM"},"VU":{"country_name":"\ubc14\ub204\uc544\ud22c(VANUATU)","country_code":"VUT"},"BH":{"country_name":"\ubc14\ub808\uc778(BAHRAIN)","country_code":"BHR"},"BB":{"country_name":"\ubc14\ubca0\uc774\ub3c4\uc2a4(BARBADOS)","country_code":"BRB"},"BS":{"country_name":"\ubc14\ud558\ub9c8(BAHAMAS)","country_code":"BHS"},"BD":{"country_name":"\ubc29\uae00\ub77c\ub370\uc2dc(BANGLADESH)","country_code":"BGD"},"VE":{"country_name":"\ubca0\ub124\uc218\uc5d8\ub77c(VENEZUELA)","country_code":"VEN"},"BJ":{"country_name":"\ubca0\ub139(BENIN)","country_code":"BEN"},"VN":{"country_name":"\ubca0\ud2b8\ub0a8(VIET NAM)","country_code":"VNM"},"BE":{"country_name":"\ubca8\uae30\uc5d0(BELGIUM)","country_code":"BEL"},"BY":{"country_name":"\ubca8\ub77c\ub8e8\uc2a4(BELARUS)","country_code":"BLR"},"BZ":{"country_name":"\ubca8\ub9ac\uc138(BELIZE)","country_code":"BLZ"},"BA":{"country_name":"\ubcf4\uc2a4\ub2c8\uc544\ud5e4\ub974\uccb4\ucf54\ube44\ub098(Bosnia and Herzegovina)","country_code":"BIH"},"BW":{"country_name":"\ubcf4\uce20\uc640\ub098(BOTSWANA)","country_code":"BWA"},"BO":{"country_name":"\ubcfc\ub9ac\ube44\uc544(BOLIVIA)","country_code":"BOL"},"BF":{"country_name":"\ubd80\ub974\ud0a4\ub098\ud30c\uc18c(BURKINA FASO)","country_code":"BFA"},"BT":{"country_name":"\ubd80\ud0c4(BHUTAN)","country_code":"BTN"},"BG":{"country_name":"\ubd88\uac00\ub9ac\uc544(BULGARIA(REP))","country_code":"BGR"},"BR":{"country_name":"\ube0c\ub77c\uc9c8(BRAZIL)","country_code":"BRA"},"BN":{"country_name":"\ube0c\ub8e8\ub124\uc774(\ub098\uc774)(BRUNEI DARUSSALAM)","country_code":"BRN"},"BI":{"country_name":"\ube0c\ub8ec\ub514(BURUNDI)","country_code":"BDI"},"SA":{"country_name":"\uc0ac\uc6b0\ub514\uc544\ub77c\ube44\uc544(SAUDI ARABIA)","country_code":"SAU"},"CY":{"country_name":"\uc0ac\uc774\ud504\ub7ec\uc2a4(CYPRUS)","country_code":"CYP"},"SM":{"country_name":"\uc0b0\ub9c8\ub9ac\ub178(SAN MARINO)","country_code":"SMR"},"SN":{"country_name":"\uc138\ub124\uac08(SENEGAL)","country_code":"SEN"},"RS":{"country_name":"\uc138\ub974\ube44\uc544\/\ucf54\uc18c\ubcf4(SERBIA\/KOSOVO)","country_code":"SRB"},"SC":{"country_name":"\uc138\uc774\uc178(SEYCHELLES)","country_code":"SYC"},"LC":{"country_name":"\uc138\uc778\ud2b8 \ub8e8\uc2dc\uc544(SAINT LUCIA)","country_code":"LCA"},"VC":{"country_name":"\uc138\uc778\ud2b8\ube48\uc13c\ud2b8\uadf8\ub808\ub098\ub518(SAINT VINCENT AND THE GRENADINES)","country_code":"VCT"},"KN":{"country_name":"\uc138\uc778\ud2b8\ud0a4\uce20\ub124\ube44\uc2a4(SAINT KITTS AND NEVIS)","country_code":"KNA"},"SB":{"country_name":"\uc194\ub85c\ubaac\uc544\uc77c\ub780\ub4dc(SOLOMON ISLANDS)","country_code":"SLB"},"SR":{"country_name":"\uc218\ub9ac\ub0a8(SURINAME)","country_code":"SUR"},"LK":{"country_name":"\uc2a4\ub9ac\ub791\uce74(SRI LANKA)","country_code":"LKA"},"SZ":{"country_name":"\uc2a4\uc640\uc9c8\ub79c\ub4dc(SWAZILAND)","country_code":"SWZ"},"SE":{"country_name":"\uc2a4\uc6e8\ub374(SWEDEN)","country_code":"SWE"},"CH":{"country_name":"\uc2a4\uc704\uc2a4(SWITZERLAND)","country_code":"CHE"},"ES":{"country_name":"\uc2a4\ud398\uc778(\uc5d0\uc2a4\ud30c\ub2c8\uc544)(SPAIN)","country_code":"ESP"},"SK":{"country_name":"\uc2ac\ub85c\ubc14\ud0a4\uc544(SLOVAKIA)","country_code":"SVK"},"SI":{"country_name":"\uc2ac\ub85c\ubca0\ub2c8\uc544(SLOVENIA)","country_code":"SVN"},"SL":{"country_name":"\uc2dc\uc5d0\ub77c\ub9ac\uc628(SIERRA LEONE)","country_code":"SLE"},"SG":{"country_name":"\uc2f1\uac00\ud3ec\ub974(SINGAPORE)","country_code":"SGP"},"AE":{"country_name":"\uc544\ub78d\uc5d0\ubbf8\ub808\uc774\ud2b8\uc5f0\ud569\uad6d(UNITED ARAB EMIRATES)","country_code":"ARE"},"AM":{"country_name":"\uc544\ub974\uba54\ub2c8\uc544(ARMENIA)","country_code":"ARM"},"AR":{"country_name":"\uc544\ub974\ud5e8\ud2f0\ub098(ARGENTINA)","country_code":"ARG"},"IS":{"country_name":"\uc544\uc774\uc2ac\ub780\ub4dc(ICELAND)","country_code":"ISL"},"HT":{"country_name":"\uc544\uc774\ud2f0(HAITI)","country_code":"HTI"},"IE":{"country_name":"\uc544\uc77c\ub780\ub4dc(\uc5d0\uc774\ub808)(IRELAND)","country_code":"IRL"},"AZ":{"country_name":"\uc544\uc81c\ub974\ubc14\uc774\uc794(AZERBAIJAN)","country_code":"AZE"},"AF":{"country_name":"\uc544\ud504\uac00\ub2c8\uc2a4\ud0c4(AFGHANISTAN)","country_code":"AFG"},"AD":{"country_name":"\uc548\ub3c4\ub77c(ANDORRA)","country_code":"AND"},"AL":{"country_name":"\uc54c\ubc14\ub2c8\uc544(ALBANIA)","country_code":"ALB"},"DZ":{"country_name":"\uc54c\uc81c\ub9ac(ALGERIA)","country_code":"DZA"},"AO":{"country_name":"\uc559\uace8\ub77c(ANGOLA)","country_code":"AGO"},"AG":{"country_name":"\uc564\ud2f0\uacfc\ubc14\ubd80\ub2e4(ANTIGUA AND BARBUDA)","country_code":"ATG"},"ER":{"country_name":"\uc5d0\ub9ac\ud2b8\ub9ac\uc544(ERITREA)","country_code":"ERI"},"EE":{"country_name":"\uc5d0\uc2a4\ud1a0\ub2c8\uc544(ESTONIA)","country_code":"EST"},"EC":{"country_name":"\uc5d0\ucf70\ub3c4\ub974(ECUADOR)","country_code":"ECU"},"SV":{"country_name":"\uc5d8\uc0b4\ubc14\ub3c4\ub974(EL SALVADOR)","country_code":"SLV"},"GB":{"country_name":"\uc601\uad6d(UNITED KINGDOM)","country_code":"GBR"},"MS":{"country_name":"\uc601\uad6d(\ubabd\uc138\ub77c)(MONTSERRAT)","country_code":"MSR"},"BM":{"country_name":"\uc601\uad6d(\ubc84\ubba4\ub2e4\uc12c)(BERMUDA)","country_code":"BMU"},"VG":{"country_name":"\uc601\uad6d(\ubc84\uc9c4\uc81c\ub3c4)(VIRGIN ISLANDS BRITISH)","country_code":"VGB"},"AI":{"country_name":"\uc601\uad6d(\uc548\uadc8\ub77c\uc12c)(ANGUILLA)","country_code":"AIA"},"GI":{"country_name":"\uc601\uad6d(\uc9c0\ube0c\ub864\ud130)(GIBRALTAR)","country_code":"GIB"},"KY":{"country_name":"\uc601\uad6d(\ucf00\uc774\ub9cc\uc81c\ub3c4)(CAYMAN ISLANDS)","country_code":"CYM"},"TC":{"country_name":"\uc601\uad6d(\ud130\ud06c\uc2a4\ucf00\uc774\ucf54\uc2a4\uc81c\ub3c4)(TURKS AND CAICOS ISLANDS)","country_code":"TCA"},"YE":{"country_name":"\uc608\uba58(YEMEN)","country_code":"YEM"},"OM":{"country_name":"\uc624\ub9cc(OMAN)","country_code":"OMN"},"NF":{"country_name":"\uc624\uc2a4\ud2b8\ub808\uc77c\ub9ac\uc544(\ub178\ud37d\uc12c)(NORFOLK ISLAND)","country_code":"NFK"},"AU":{"country_name":"\uc624\uc2a4\ud2b8\ub808\uc77c\ub9ac\uc544(\ud638\uc8fc)(AUSTRALIA)","country_code":"AUS"},"AT":{"country_name":"\uc624\uc2a4\ud2b8\ub9ac\uc544(AUSTRIA)","country_code":"AUT"},"HN":{"country_name":"\uc628\ub450\ub77c\uc2a4(HONDURAS)","country_code":"HND"},"JO":{"country_name":"\uc694\ub974\ub2e8(JORDAN)","country_code":"JOR"},"UG":{"country_name":"\uc6b0\uac04\ub2e4(UGANDA)","country_code":"UGA"},"UY":{"country_name":"\uc6b0\ub8e8\uacfc\uc774(URUGUAY)","country_code":"URY"},"UZ":{"country_name":"\uc6b0\uc988\ubca0\ud06c(UZBEKISTAN)","country_code":"UZB"},"UA":{"country_name":"\uc6b0\ud06c\ub77c\uc774\ub098(UKRAINE)","country_code":"UKR"},"ET":{"country_name":"\uc774\ub514\uc624\ud53c\uc544(ETHIOPIA)","country_code":"ETH"},"IQ":{"country_name":"\uc774\ub77c\ud06c(IRAQ)","country_code":"IRQ"},"IR":{"country_name":"\uc774\ub780(IRAN(ISLAMIC REP))","country_code":"IRN"},"IL":{"country_name":"\uc774\uc2a4\ub77c\uc5d8(ISRAEL)","country_code":"ISR"},"EG":{"country_name":"\uc774\uc9d1\ud2b8(EGYPT)","country_code":"EGY"},"IT":{"country_name":"\uc774\ud0c8\ub9ac\uc544(\uc774\ud0dc\ub9ac)(ITALY)","country_code":"ITA"},"IN":{"country_name":"\uc778\ub3c4(INDIA)","country_code":"IND"},"ID":{"country_name":"\uc778\ub3c4\ub124\uc2dc\uc544(INDONESIA)","country_code":"IDN"},"JP":{"country_name":"\uc77c\ubcf8(JAPAN)","country_code":"JPN"},"JM":{"country_name":"\uc790\uba54\uc774\uce74(JAMAICA)","country_code":"JAM"},"ZM":{"country_name":"\uc7a0\ube44\uc544(ZAMBIA)","country_code":"ZMB"},"CN":{"country_name":"\uc911\uad6d(CHINA(PEOPLE'S REP))","country_code":"CHN"},"MO":{"country_name":"\uc911\uad6d(\ub9c8\uce74\uc624)(MACAU)","country_code":"MAC"},"HK":{"country_name":"\uc911\uad6d(\ud64d\ucf69)(HONG KONG)","country_code":"HKG"},"CF":{"country_name":"\uc911\uc559 \uc544\ud504\ub9ac\uce74(CENTRAL AFRICAN REPUBLIC)","country_code":"CAF"},"DJ":{"country_name":"\uc9c0\ubd80\ud2f0(DJIBOUTI)","country_code":"DJI"},"ZW":{"country_name":"\uc9d0\ubc14\ube0c\uc6e8(ZIMBABWE)","country_code":"ZWE"},"TD":{"country_name":"\ucc28\ub4dc(CHAD)","country_code":"TCD"},"CZ":{"country_name":"\uccb4\ucf54(CZECH REP)","country_code":"CZE"},"CL":{"country_name":"\uce60\ub808(CHILE)","country_code":"CHL"},"CM":{"country_name":"\uce74\uba54\ub8ec(CAMEROON)","country_code":"CMR"},"CV":{"country_name":"\uce74\ubcf4\ubca0\ub974\ub370(CAPE VERDE)","country_code":"CPV"},"KZ":{"country_name":"\uce74\uc790\ud750(KAZAKHSTAN)","country_code":"KAZ"},"QA":{"country_name":"\uce74\ud0c0\ub974(QATAR)","country_code":"QAT"},"KH":{"country_name":"\uce84\ubcf4\ub514\uc544(CAMBODIA)","country_code":"KHM"},"CA":{"country_name":"\uce90\ub098\ub2e4(CANADA)","country_code":"CAN"},"KE":{"country_name":"\ucf00\ub0d0(KENYA)","country_code":"KEN"},"CR":{"country_name":"\ucf54\uc2a4\ud0c0\ub9ac\uce74(COSTA RICA)","country_code":"CRI"},"CI":{"country_name":"\ucf54\ud2b8\ub514\ubd10\ub974(COTE D IVOIRE)","country_code":"CIV"},"CO":{"country_name":"\ucf5c\ub86c\ube44\uc544(COLOMBIA)","country_code":"COL"},"CG":{"country_name":"\ucf69\uace0(CONGO)","country_code":"COG"},"CU":{"country_name":"\ucfe0\ubc14(CUBA)","country_code":"CUB"},"KW":{"country_name":"\ucfe0\uc6e8\uc774\ud2b8(KUWAIT)","country_code":"KWT"},"HR":{"country_name":"\ud06c\ub85c\uc544\ud2f0\uc544(CROATIA)","country_code":"HRV"},"KG":{"country_name":"\ud0a4\ub974\ud0a4\uc988\uc2a4\ud0c4(KYRGYZSTAN)","country_code":"KGZ"},"KI":{"country_name":"\ud0a4\ub9ac\ubc14\ud2f0(KIRIBATI)","country_code":"KIR"},"TH":{"country_name":"\ud0c0\uc774(\ud0dc\uad6d)(THAILAND)","country_code":"THA"},"TW":{"country_name":"\ud0c0\uc774\uc644(\ub300\ub9cc)(TAIWAN)","country_code":"TWN"},"TJ":{"country_name":"\ud0c0\uc9c0\ud0a4\uc2a4\ud0c4(TAJIKISTAN)","country_code":"TJK"},"TZ":{"country_name":"\ud0c4\uc790\ub2c8\uc544(TANZANIA(UNITED REP))","country_code":"TZA"},"TR":{"country_name":"\ud130\ud0a4(TURKEY)","country_code":"TUR"},"TG":{"country_name":"\ud1a0\uace0(TOGO)","country_code":"TGO"},"TO":{"country_name":"\ud1b5\uac00(TONGA)","country_code":"TON"},"TM":{"country_name":"\ud22c\ub974\ud06c\uba54\ub2c8\uc2a4\ud0c4(TURKMENISTAN)","country_code":"TKM"},"TV":{"country_name":"\ud22c\ubc1c\ub8e8(TUVALU)","country_code":"TUV"},"TN":{"country_name":"\ud280\ub2c8\uc9c0(TUNISIA)","country_code":"TUN"},"TT":{"country_name":"\ud2b8\ub9ac\ub2c8\ub2e4\ub4dc\ud1a0\ubc14\uace0(TRINIDAD AND TOBAGO)","country_code":"TTO"},"PA":{"country_name":"\ud30c\ub098\ub9c8(PANAMA(REP))","country_code":"PAN"},"PY":{"country_name":"\ud30c\ub77c\uacfc\uc774(PARAGUAY)","country_code":"PRY"},"PK":{"country_name":"\ud30c\ud0a4\uc2a4\ud0c4(PAKISTAN)","country_code":"PAK"},"PG":{"country_name":"\ud30c\ud478\uc544\ub274\uae30\ub2c8(PAPUA NEW GUINEA)","country_code":"PNG"},"PE":{"country_name":"\ud398\ub8e8(PERU)","country_code":"PER"},"PT":{"country_name":"\ud3ec\ub974\ud22c\uac08(PORTUGAL)","country_code":"PRT"},"PL":{"country_name":"\ud3f4\ub780\ub4dc(POLAND(REP))","country_code":"POL"},"FR":{"country_name":"\ud504\ub791\uc2a4(FRANCE)","country_code":"FRA"},"GP":{"country_name":"\ud504\ub791\uc2a4(\uacfc\ub370\ub8e8\ud504\uc12c)(GUADELOUPE)","country_code":"GLP"},"GF":{"country_name":"\ud504\ub791\uc2a4(\uae30\uc544\ub098)(FRENCH GUIANA)","country_code":"GUF"},"NC":{"country_name":"\ud504\ub791\uc2a4(\ub274\uce7c\ub808\ub3c4\ub2c8\uc544\uc12c)(NEW CALEDONIA)","country_code":"NCL"},"RE":{"country_name":"\ud504\ub791\uc2a4(\ub808\uc704\ub2c8\uc639\uc12c)(REUNION)","country_code":"REU"},"MQ":{"country_name":"\ud504\ub791\uc2a4(\ub9c8\ub974\ud2f0\ub2c8\ud06c\uc12c)(MARTINIQUE)","country_code":"MTQ"},"PF":{"country_name":"\ud504\ub791\uc2a4(\ud3f4\ub9ac\ub124\uc2dc\uc544)(FRENCH POLYNESIA)","country_code":"PYF"},"FJ":{"country_name":"\ud53c\uc9c0(FIJI)","country_code":"FJI"},"FI":{"country_name":"\ud544\ub780\ub4dc(FINLAND)","country_code":"FIN"},"PH":{"country_name":"\ud544\ub9ac\ud540(PHILIPPINES)","country_code":"PHL"},"HU":{"country_name":"\ud5dd\uac00\ub9ac(HUNGARY(REP))","country_code":"HUN"}}}; var fmodify_aAddrInfo = {"aMarkupSettingData":{"show_address":"T","required_fields":["country","baseAddr","state","city","street","zipcode","detailAddr"],"country_selected":"T","is_foreign":"F","fixed_country_code":"","limited_country_list":"F","uncheck_zipcode":"F","sCountryDisable":"F"},"sCountryCode":"KR","aAddrFieldSelector":"{\"zipcode\":\"postcode1\",\"zipcodeBtn\":\"postBtn\",\"zipcodeCheck\":\"nozip\",\"zipcodeCheckLabel\":\"modify_zipcode_check_label\",\"country\":\"country\",\"baseAddr\":\"addr1\",\"detailAddr\":\"addr2\",\"state\":{\"DEFAULT\":\"state_name\",\"CA\":\"stateListCa\",\"US\":\"stateListUs\",\"AREA\":\"si_name_addr\"},\"city\":{\"DEFAULT\":\"city_name\",\"AREA\":\"ci_name_addr\"},\"street\":{\"DEFAULT\":\"street_name\",\"AREA\":\"gu_name_addr\"}}"};
var userOption= {"login_page":"\/member\/login.html"}
EC$(function() {
AuthSSLManager.weave({
'auth_mode' : 'decryptClient', //mode
'auth_string' : EC$('#sEData').val(), //auth_string
'auth_callbackName'  : 'MemberEditAuthtSSL.setMember' //callback function
});
});
var sFormId = 'editForm'
var sEleId = ["editForm::member_id","editForm::useSimpleSignin","editForm::passwd","editForm::is_certification","editForm::new_passwd","editForm::new_passwd_confirm","editForm::user_passwd_confirm","editForm::hint","editForm::hint_answer","editForm::postcode1","editForm::postcode2","editForm::addr1","editForm::addr2","editForm::phone1","editForm::phone2","editForm::phone3","editForm::mobile1","editForm::mobile2","editForm::mobile3","editForm::email1","editForm::email2","editForm::email3","editForm::is_email_auth_use","editForm::emailDuplCheck","editForm::login_id_type","editForm::name","editForm::is_display_register_name","editForm::display_required_name","editForm::name_phonetic","editForm::is_display_register_name_phonetic","editForm::display_required_name_phonetic","editForm::name_en","editForm::is_display_register_eng_name","editForm::display_required_name_en","editForm::passwd_type","editForm::city_name","editForm::state_name","editForm::country","editForm::is_display_register_addr","editForm::is_display_register_addr2","editForm::__addr1","editForm::__city_name","editForm::__state_name","editForm::__isRuleBasedAddrForm","editForm::direct_input_postcode1_addr[]","editForm::display_required_address","editForm::display_required_address2","editForm::is_display_register_mobile","editForm::display_required_cell","editForm::display_register_mobile","editForm::verify_sms_number","editForm::use_checking_mobile_number_duplication","editForm::isMobileVerify","editForm::is_display_register_phone","editForm::display_required_phone","editForm::display_register_phone","editForm::is_display_password_hint","editForm::is_sms","editForm::required_is_sms_flag","editForm::is_news_mail","editForm::required_is_news_mail_flag","editForm::birth_year","editForm::birth_month","editForm::birth_day","editForm::is_solar_calendar","editForm::is_display_register_birthday","editForm::display_required_is_birthday","editForm::is_sex","editForm::display_required_sex","editForm::nick_name","editForm::nick_name_flag","editForm::nick_name_confirm","editForm::display_required_nick_name_flag","editForm::marry_year","editForm::marry_month","editForm::marry_day","editForm::is_display_register_wedding","editForm::display_required_is_wedding_anniversary","editForm::partner_year","editForm::partner_month","editForm::partner_day","editForm::is_display_register_life_partner","editForm::display_required_is_life_partner","editForm::job","editForm::display_required_job","editForm::job_class","editForm::display_required_job_class","editForm::school","editForm::display_required_school","editForm::inter_check[]","editForm::display_required_interest","editForm::region","editForm::display_required_region","editForm::internet","editForm::display_required_internet","editForm::child","editForm::display_required_child","editForm::car","editForm::display_required_car","editForm::earning","editForm::display_required_earning","editForm::reco_id","editForm::display_required_reco_id","editForm::add1","editForm::display_required_add1","editForm::add2","editForm::display_required_add2","editForm::add3","editForm::display_required_add3","editForm::add4","editForm::display_required_add4","editForm::returnUrl","editForm::sUseCountryNumberFlag","editForm::sUseSeparationNameFlag","editForm::sEData","editForm::sEDataDiff","editForm::is_lifetime","editForm::agree_information_check[]","editForm::display_agree_information_check_flag","editForm::agree_consignment_check[]","editForm::display_agree_consignment_check_flag","editForm::agree_privacy_optional_check[]","editForm::display_agree_privacy_optional_check_flag"]
AuthSSL.Bind(sFormId, sEleId);
var aLogData = {"log_server1":"eclog2-033.cafe24.com","log_server2":"elg-db-svcm-061.cafe24.com","mid":"ys2n","stype":"e","domain":"","shop_no":"1","lang":"ko_KR","ver":2,"hash":"c749a91cabb24e463d865b15680c4010","ca":"cfa-js.cafe24.com\/cfa.js","etc":""};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
var EC_ASYNC_LIVELINKON_ID = '';
if (EC$('[async_section=before]').length > 0) {
EC$('[async_section=before]').addClass('displaynone');
}
var EC_APPSCRIPT_ASSIGN_DATA = EC_APPSCRIPT_ASSIGN_DATA || [{'src':'https://instagram-widget.wehost24.com/js/instagram-widget.js?vs=20191021102348.1&client_id=pOawpY4gJZ0oBnihDmiReG'},{'src':'https://file.cloudturing.com/cafe24/naver/bubble.js?vs=20191021111540.1&client_id=ejf67zQS5kk8qvPDJl7SKG'}];
var EC_APPSCRIPT_SDK_DATA = EC_APPSCRIPT_SDK_DATA || ['application','category','product','store'];
</script></body></html>