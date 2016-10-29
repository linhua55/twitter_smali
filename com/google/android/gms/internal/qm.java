package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class qm extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;

    qm(Context context, String str) {
        this.a = context;
        this.b = str;
        super();
    }

    public void a() {
        Editor edit = qf.a(this.a).edit();
        edit.putString("content_url_hashes", this.b);
        edit.apply();
    }
}
