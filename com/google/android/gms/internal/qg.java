package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class qg extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ boolean b;

    qg(Context context, boolean z) {
        this.a = context;
        this.b = z;
        super();
    }

    public void a() {
        Editor edit = qf.a(this.a).edit();
        edit.putBoolean("use_https", this.b);
        edit.apply();
    }
}
