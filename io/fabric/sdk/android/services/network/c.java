package io.fabric.sdk.android.services.network;

/* compiled from: Twttr */
/* synthetic */ class c {
    static final /* synthetic */ int[] a;

    static {
        a = new int[HttpMethod.values().length];
        try {
            a[HttpMethod.GET.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[HttpMethod.POST.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[HttpMethod.PUT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[HttpMethod.DELETE.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
