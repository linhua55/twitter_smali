package com.twitter.client_network.thriftandroid;

import com.twitter.client_network.thriftandroid.ClientNetworkRequestDetails._Fields;

/* compiled from: Twttr */
/* synthetic */ class c {
    static final /* synthetic */ int[] a;

    static {
        a = new int[_Fields.values().length];
        try {
            a[_Fields.DURATION_MS.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[_Fields.STREAM_ID.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[_Fields.RX_BYTES.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[_Fields.TX_BYTES.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[_Fields.LATENCY_MS.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[_Fields.CONNECTED_MS.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[_Fields.BLOCKED_MS.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[_Fields.REQUEST_BODY_SIZE.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            a[_Fields.RESPONSE_BODY_SIZE.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
        try {
            a[_Fields.SERVICE_MS.ordinal()] = 10;
        } catch (NoSuchFieldError e10) {
        }
    }
}
