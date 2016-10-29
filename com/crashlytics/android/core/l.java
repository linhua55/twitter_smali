package com.crashlytics.android.core;

import android.app.Activity;
import io.fabric.sdk.android.services.settings.t;
import io.fabric.sdk.android.services.settings.v;

/* compiled from: Twttr */
class l implements t<Boolean> {
    final /* synthetic */ f a;

    l(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object b(v vVar) {
        return a(vVar);
    }

    public Boolean a(v vVar) {
        boolean z = true;
        Activity b = this.a.F().b();
        if (!(b == null || b.isFinishing() || !this.a.x())) {
            z = f.a(this.a, b, vVar.c);
        }
        return Boolean.valueOf(z);
    }
}
