package defpackage;

import android.app.Activity;
import aom;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: aon */
public final class aon implements c<aom> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;

    static {
        a = !aon.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aon(cxj<Activity> cxj_android_app_Activity) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            return;
        }
        throw new AssertionError();
    }

    public aom a() {
        return new aom((Activity) this.b.b());
    }

    public static c<aom> a(cxj<Activity> cxj_android_app_Activity) {
        return new aon(cxj_android_app_Activity);
    }
}
