package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class qk extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ boolean b;

    qk(Context context, boolean z) {
        this.a = context;
        this.b = z;
        super();
    }

    public void a() {
        Editor edit = qf.a(this.a).edit();
        edit.putBoolean("content_url_opted_out", this.b);
        edit.apply();
    }
}
