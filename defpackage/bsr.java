package defpackage;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* renamed from: bsr */
/* synthetic */ class bsr {
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
    }
}
