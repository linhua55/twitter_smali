package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class qj extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ qp b;

    qj(Context context, qp qpVar) {
        this.a = context;
        this.b = qpVar;
        super();
    }

    public void a() {
        SharedPreferences a = qf.a(this.a);
        Bundle bundle = new Bundle();
        bundle.putInt("webview_cache_version", a.getInt("webview_cache_version", 0));
        if (this.b != null) {
            this.b.a(bundle);
        }
    }
}
