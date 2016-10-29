package com.crashlytics.android.core;

import io.fabric.sdk.android.services.settings.t;
import io.fabric.sdk.android.services.settings.v;

/* compiled from: Twttr */
class k implements t<Boolean> {
    final /* synthetic */ f a;

    k(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object b(v vVar) {
        return a(vVar);
    }

    public Boolean a(v vVar) {
        boolean z = false;
        if (!vVar.d.a) {
            return Boolean.valueOf(false);
        }
        if (!this.a.y()) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
