package defpackage;

import android.app.ActivityManager;
import bk;
import cl;
import com.facebook.imagepipeline.animated.base.g;
import com.facebook.imagepipeline.animated.base.j;
import com.facebook.imagepipeline.animated.impl.c;
import com.facebook.imagepipeline.animated.impl.h;

/* compiled from: Twttr */
/* renamed from: fo */
class fo implements h {
    final /* synthetic */ bk a;
    final /* synthetic */ ActivityManager b;
    final /* synthetic */ dt c;
    final /* synthetic */ cl d;
    final /* synthetic */ fm e;

    fo(fm fmVar, bk bkVar, ActivityManager activityManager, dt dtVar, cl clVar) {
        this.e = fmVar;
        this.a = bkVar;
        this.b = activityManager;
        this.c = dtVar;
        this.d = clVar;
    }

    public c a(g gVar, j jVar) {
        return new c(this.a, this.b, this.c, this.d, gVar, jVar);
    }
}
