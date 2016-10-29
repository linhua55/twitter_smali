package com.twitter.android;

import com.twitter.library.client.Session.LoginStatus;

/* compiled from: Twttr */
/* synthetic */ class is {
    static final /* synthetic */ int[] a;

    static {
        a = new int[LoginStatus.values().length];
        try {
            a[LoginStatus.LOGGED_IN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[LoginStatus.LOGGING_IN.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[LoginStatus.LOGGED_OUT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[LoginStatus.LOGGING_OUT.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
