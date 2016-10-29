package defpackage;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* renamed from: btn */
/* synthetic */ class btn {
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
            a[JsonToken.VALUE_TRUE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[JsonToken.START_OBJECT.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
