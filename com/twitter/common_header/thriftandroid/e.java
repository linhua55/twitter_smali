package com.twitter.common_header.thriftandroid;

import com.twitter.common_header.thriftandroid.ServerHeader._Fields;

/* compiled from: Twttr */
/* synthetic */ class e {
    static final /* synthetic */ int[] a;

    static {
        a = new int[_Fields.values().length];
        try {
            a[_Fields.CLIENT_TIMESTAMP_MS.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[_Fields.SERVER_TIMESTAMP_MS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[_Fields.SERVER_IP_ADDRESS.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[_Fields.SERVER_NAME.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[_Fields.SERVER_VERSION.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[_Fields.LOGGING_LIB_VERSION.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[_Fields.REQUEST_INFO.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[_Fields.TRANSACTION_ID.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            a[_Fields.CLIENT_TIMEZONE_OFFSET_MIN.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
        try {
            a[_Fields.SERVICE_NAME.ordinal()] = 10;
        } catch (NoSuchFieldError e10) {
        }
    }
}
