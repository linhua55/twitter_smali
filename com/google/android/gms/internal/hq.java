package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

public class hq implements vp {
    private final Executor a;

    public hq(Handler handler) {
        this.a = new hr(this, handler);
    }

    public void a(zzk<?> com_google_android_gms_internal_zzk_, uy<?> uyVar) {
        a(com_google_android_gms_internal_zzk_, uyVar, null);
    }

    public void a(zzk<?> com_google_android_gms_internal_zzk_, uy<?> uyVar, Runnable runnable) {
        com_google_android_gms_internal_zzk_.t();
        com_google_android_gms_internal_zzk_.b("post-response");
        this.a.execute(new hs(this, com_google_android_gms_internal_zzk_, uyVar, runnable));
    }

    public void a(zzk<?> com_google_android_gms_internal_zzk_, zzr com_google_android_gms_internal_zzr) {
        com_google_android_gms_internal_zzk_.b("post-error");
        this.a.execute(new hs(this, com_google_android_gms_internal_zzk_, uy.a(com_google_android_gms_internal_zzr), null));
    }
}
