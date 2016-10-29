package com.google.android.gms.internal;

public class uy<T> {
    public final T a;
    public final aw b;
    public final zzr c;
    public boolean d;

    private uy(zzr com_google_android_gms_internal_zzr) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = com_google_android_gms_internal_zzr;
    }

    private uy(T t, aw awVar) {
        this.d = false;
        this.a = t;
        this.b = awVar;
        this.c = null;
    }

    public static <T> uy<T> a(zzr com_google_android_gms_internal_zzr) {
        return new uy(com_google_android_gms_internal_zzr);
    }

    public static <T> uy<T> a(T t, aw awVar) {
        return new uy(t, awVar);
    }

    public boolean a() {
        return this.c == null;
    }
}
