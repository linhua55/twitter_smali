package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import cxh;
import cxi;

/* compiled from: Twttr */
class k {
    private final cxh a;

    public static k a(Context context) {
        return new k(new cxi(context, "settings"));
    }

    k(cxh cxh) {
        this.a = cxh;
    }

    @SuppressLint({"CommitPrefEdits"})
    public void a() {
        this.a.a(this.a.b().putBoolean("analytics_launched", true));
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean b() {
        return this.a.a().getBoolean("analytics_launched", false);
    }
}
