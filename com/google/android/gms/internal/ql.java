package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class ql extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ qp b;

    ql(Context context, qp qpVar) {
        this.a = context;
        this.b = qpVar;
        super();
    }

    public void a() {
        SharedPreferences a = qf.a(this.a);
        Bundle bundle = new Bundle();
        bundle.putBoolean("content_url_opted_out", a.getBoolean("content_url_opted_out", true));
        if (this.b != null) {
            this.b.a(bundle);
        }
    }
}
