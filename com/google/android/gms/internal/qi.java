package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class qi extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ int b;

    qi(Context context, int i) {
        this.a = context;
        this.b = i;
        super();
    }

    public void a() {
        Editor edit = qf.a(this.a).edit();
        edit.putInt("webview_cache_version", this.b);
        edit.apply();
    }
}
