package defpackage;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* renamed from: biq */
/* synthetic */ class biq {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JsonToken.values().length];
        try {
            a[JsonToken.VALUE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JsonToken.FIELD_NAME.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[JsonToken.START_OBJECT.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[JsonToken.START_ARRAY.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[JsonToken.VALUE_TRUE.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
    }
}
