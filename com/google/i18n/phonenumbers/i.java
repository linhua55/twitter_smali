package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber.CountryCodeSource;

/* compiled from: Twttr */
/* synthetic */ class i {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;
    static final /* synthetic */ int[] c;

    static {
        c = new int[PhoneNumberType.values().length];
        try {
            c[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            c[PhoneNumberType.MOBILE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            c[PhoneNumberType.VOIP.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            c[PhoneNumberType.PAGER.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
        try {
            c[PhoneNumberType.UAN.ordinal()] = 10;
        } catch (NoSuchFieldError e10) {
        }
        try {
            c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
        } catch (NoSuchFieldError e11) {
        }
        b = new int[PhoneNumberFormat.values().length];
        try {
            b[PhoneNumberFormat.E164.ordinal()] = 1;
        } catch (NoSuchFieldError e12) {
        }
        try {
            b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
        } catch (NoSuchFieldError e13) {
        }
        try {
            b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
        } catch (NoSuchFieldError e14) {
        }
        try {
            b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
        } catch (NoSuchFieldError e15) {
        }
        a = new int[CountryCodeSource.values().length];
        try {
            a[CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
        } catch (NoSuchFieldError e16) {
        }
        try {
            a[CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
        } catch (NoSuchFieldError e17) {
        }
        try {
            a[CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
        } catch (NoSuchFieldError e18) {
        }
        try {
            a[CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
        } catch (NoSuchFieldError e19) {
        }
    }
}
