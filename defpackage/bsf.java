package defpackage;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* renamed from: bsf */
/* synthetic */ class bsf {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JsonToken.values().length];
        try {
            a[JsonToken.START_OBJECT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JsonToken.VALUE_STRING.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
