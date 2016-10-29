package com.twitter.library.commerce.model;

import bdc;
import com.twitter.android.mx;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public enum ServerErrorType {
    UNKNOWN(-1, bdc.commerce_error_unknown_error),
    NETWORK_ERROR(0, bdc.commerce_error_network_error),
    AUTH_ERROR(1, bdc.commerce_error_auth_error),
    BAD_REQUEST(2, bdc.commerce_error_bad_request),
    SERVICE_UNAVAILABLE(3, bdc.commerce_error_service_unavailable),
    SERVER_ERROR(4, bdc.commerce_error_server_error),
    INVALID_PARAMETER(5, bdc.commerce_error_invalid_parameters),
    EMAIL_CONFIRMATION_REQUIRED(6, bdc.commerce_error_email_confirmation_required),
    PRODUCT_NOT_AVAILABLE(7, bdc.commerce_error_product_unavailable),
    AMOUNT_CHANGED(8, bdc.commerce_error_amount_changed),
    NO_INVENTORY(9, bdc.commerce_error_invalid_inventory, true),
    INVALID_PRODUCT(10, bdc.commerce_error_invalid_product),
    PARTNER_ERROR(11, bdc.commerce_error_partner_error),
    ACCOUNT_NOT_FOUND(12, bdc.commerce_error_account_not_found),
    ACCOUNT_ALREADY_EXIST(13, bdc.commerce_error_account_duplicate),
    INVALID_ADDRESS(14, bdc.commerce_error_invalid_address_address),
    INVALID_AMOUNT(15, bdc.commerce_error_invalid_amount),
    INVALID_CC_NUMBER(16, bdc.commerce_error_invalid_card_number_invalid),
    INVALID_COUNTRY(17, bdc.commerce_error_invalid_address_country_unknown),
    INVALID_CURRENCY_TYPE(18, bdc.commerce_error_invalid_currency),
    INVALID_CVV_CODE(19, bdc.commerce_error_invalid_card_ccv_number),
    INVALID_EXPIRATION_DATE(20, bdc.commerce_error_invalid_card_date),
    INVALID_EXPIRATION_MONTH(21, bdc.commerce_error_invalid_card_month),
    INVALID_EXPIRATION_YEAR(22, bdc.commerce_error_invalid_card_year),
    INVALID_NUMBER(23, bdc.commerce_error_invalid_card_ccv_number),
    INVALID_PROFILE(24, bdc.commerce_error_invalid_profile),
    INVALID_EMAIL(25, bdc.commerce_error_invalid_address_email_unknown),
    INVALID_EMAIL_LENGTH(26, bdc.commerce_error_invalid_address_email_length),
    INVALID_CC_TYPE(27, bdc.commerce_error_invalid_card_type),
    INVALID_PAYMENT_TYPE(28, bdc.commerce_error_invalid_card_payment_type),
    DECLINED(29, bdc.commerce_error_invalid_card_declined),
    OFFER_NOT_FOUND(30, bdc.commerce_error_offer_not_found),
    OFFER_EXPIRED(31, bdc.commerce_error_offer_expired),
    OFFER_INACTIVE(32, bdc.commerce_error_offer_inactive),
    OFFER_ALREADY_SAVED(33, bdc.commerce_error_offer_already_saved),
    INVALID_COUNTRY_FOR_ITEM(34, bdc.commerce_error_address_not_supported),
    VERSION_NOT_SUPPORTED(35, bdc.commerce_error_version_not_supported);
    
    private final boolean mIsSoftError;
    private int mStringResId;
    private final int mValue;

    private ServerErrorType(int i, int i2) {
        this(r7, r8, i, i2, false);
    }

    private ServerErrorType(int i, int i2, boolean z) {
        this.mValue = i;
        this.mStringResId = i2;
        this.mIsSoftError = z;
    }

    public int a() {
        return this.mValue;
    }

    public static ServerErrorType a(int i) {
        for (ServerErrorType serverErrorType : values()) {
            if (serverErrorType.ordinal() == i) {
                return serverErrorType;
            }
        }
        return UNKNOWN;
    }

    public static ServerErrorType a(String str) {
        if (str == null) {
            return UNKNOWN;
        }
        Object obj = -1;
        switch (str.hashCode()) {
            case -1629590760:
                if (str.equals("InvalidProduct")) {
                    obj = 24;
                    break;
                }
                break;
            case -1596993199:
                if (str.equals("INVALID_CC_TYPE")) {
                    obj = 16;
                    break;
                }
                break;
            case -1582698592:
                if (str.equals("INVALID_CC_NUMBER")) {
                    obj = 5;
                    break;
                }
                break;
            case -1515255836:
                if (str.equals("AUTHENTICATION_FAILED")) {
                    obj = null;
                    break;
                }
                break;
            case -1262862066:
                if (str.equals("INVALID_COUNTRY")) {
                    obj = 6;
                    break;
                }
                break;
            case -1112393964:
                if (str.equals("INVALID_EMAIL")) {
                    obj = 14;
                    break;
                }
                break;
            case -1042373797:
                if (str.equals("INVALID_PAYMENT_TYPE")) {
                    obj = 17;
                    break;
                }
                break;
            case -969319733:
                if (str.equals("OfferNotFound")) {
                    obj = 26;
                    break;
                }
                break;
            case -951200418:
                if (str.equals("ACCOUNT_ALREADY_EXIST")) {
                    obj = 2;
                    break;
                }
                break;
            case -896186005:
                if (str.equals("OfferAlreadySaved")) {
                    obj = 29;
                    break;
                }
                break;
            case -559326903:
                if (str.equals("OfferExpired")) {
                    obj = 27;
                    break;
                }
                break;
            case -522615594:
                if (str.equals("INVALID_EXPIRATION_DATE")) {
                    obj = 9;
                    break;
                }
                break;
            case -521986715:
                if (str.equals("INVALID_EXPIRATION_YEAR")) {
                    obj = 11;
                    break;
                }
                break;
            case -238562368:
                if (str.equals("INVALID_AMOUNT")) {
                    obj = 4;
                    break;
                }
                break;
            case 85443364:
                if (str.equals("ACCOUNT_NOT_FOUND")) {
                    obj = 1;
                    break;
                }
                break;
            case 140926641:
                if (str.equals("INVALID_NUMBER")) {
                    obj = 12;
                    break;
                }
                break;
            case 302192192:
                if (str.equals("PartnerError")) {
                    obj = 25;
                    break;
                }
                break;
            case 337669010:
                if (str.equals("InvalidParameter")) {
                    obj = 19;
                    break;
                }
                break;
            case 343027983:
                if (str.equals("AddressNotSupported")) {
                    obj = 30;
                    break;
                }
                break;
            case 493850176:
                if (str.equals("INVALID_CURRENCY_TYPE")) {
                    obj = 7;
                    break;
                }
                break;
            case 503910544:
                if (str.equals("EmailConfirmationRequired")) {
                    obj = 20;
                    break;
                }
                break;
            case 926582124:
                if (str.equals("INVALID_ADDRESS")) {
                    obj = 3;
                    break;
                }
                break;
            case 977370099:
                if (str.equals("VersionNotSupported")) {
                    obj = 31;
                    break;
                }
                break;
            case 987509304:
                if (str.equals("INVALID_EXPIRATION_MONTH")) {
                    obj = 10;
                    break;
                }
                break;
            case 1183283109:
                if (str.equals("ProductNotAvailable")) {
                    obj = 21;
                    break;
                }
                break;
            case 1216920699:
                if (str.equals("NoInventory")) {
                    obj = 23;
                    break;
                }
                break;
            case 1350822958:
                if (str.equals("DECLINED")) {
                    obj = 18;
                    break;
                }
                break;
            case 1467359185:
                if (str.equals("INVALID_CVV_CODE")) {
                    obj = 8;
                    break;
                }
                break;
            case 1633044252:
                if (str.equals("AmountChanged")) {
                    obj = 22;
                    break;
                }
                break;
            case 1764848417:
                if (str.equals("INVALID_PROFILE")) {
                    obj = 13;
                    break;
                }
                break;
            case 1796992711:
                if (str.equals("OfferInactive")) {
                    obj = 28;
                    break;
                }
                break;
            case 2069534321:
                if (str.equals("INVALID_EMAIL_LENGTH")) {
                    obj = 15;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                return AUTH_ERROR;
            case WireMessage.WIRE_CHAT /*1*/:
                return ACCOUNT_NOT_FOUND;
            case WireMessage.WIRE_CONTROL /*2*/:
                return ACCOUNT_ALREADY_EXIST;
            case WireMessage.WIRE_AUTH /*3*/:
                return INVALID_ADDRESS;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return INVALID_AMOUNT;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return INVALID_CC_NUMBER;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return INVALID_COUNTRY;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return INVALID_CURRENCY_TYPE;
            case ControlMessage.CONTROL_BAN /*8*/:
                return INVALID_CVV_CODE;
            case mx.TwitterEditText_messageSize /*9*/:
                return INVALID_EXPIRATION_DATE;
            case mx.TwitterEditText_messageStyle /*10*/:
                return INVALID_EXPIRATION_MONTH;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return INVALID_EXPIRATION_YEAR;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return INVALID_NUMBER;
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return INVALID_PROFILE;
            case mx.TwitterButton_labelMargin /*14*/:
                return INVALID_EMAIL;
            case mx.TwitterButton_strokeWidth /*15*/:
                return INVALID_EXPIRATION_YEAR;
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                return INVALID_CC_TYPE;
            case mx.TwitterButton_bounded /*17*/:
                return INVALID_PAYMENT_TYPE;
            case mx.TwitterButton_knockout /*18*/:
                return DECLINED;
            case mx.TwitterButton_iconLayout /*19*/:
                return INVALID_PARAMETER;
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                return EMAIL_CONFIRMATION_REQUIRED;
            case mx.TweetView_mediaTopMargin /*21*/:
                return PRODUCT_NOT_AVAILABLE;
            case mx.TweetView_mediaBottomMargin /*22*/:
                return AMOUNT_CHANGED;
            case mx.TweetView_mediaDivider /*23*/:
                return NO_INVENTORY;
            case mx.TweetView_autoLink /*24*/:
                return INVALID_PRODUCT;
            case mx.TweetView_linkSelectedColor /*25*/:
                return PARTNER_ERROR;
            case mx.TweetView_previewFlags /*26*/:
                return OFFER_NOT_FOUND;
            case mx.TweetView_mediaTagIcon /*27*/:
                return OFFER_EXPIRED;
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                return OFFER_INACTIVE;
            case mx.TweetView_tweetViewLayoutId /*29*/:
                return OFFER_ALREADY_SAVED;
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                return INVALID_COUNTRY_FOR_ITEM;
            case mx.AppCompatTheme_actionModeCloseDrawable /*31*/:
                return VERSION_NOT_SUPPORTED;
            default:
                return UNKNOWN;
        }
    }

    public int b() {
        return this.mStringResId;
    }

    public boolean c() {
        return this.mIsSoftError;
    }
}
