package defpackage;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: Twttr */
/* renamed from: btq */
/* synthetic */ class btq {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JsonToken.values().length];
        try {
            a[JsonToken.START_ARRAY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JsonToken.START_OBJECT.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
