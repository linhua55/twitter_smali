package com.twitter.library.av.model.parser;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* synthetic */ class b {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JsonToken.values().length];
        try {
            a[JsonToken.START_OBJECT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JsonToken.START_ARRAY.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JsonToken.VALUE_STRING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[JsonToken.FIELD_NAME.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
