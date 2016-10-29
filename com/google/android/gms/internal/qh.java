package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class qh extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ qp b;

    qh(Context context, qp qpVar) {
        this.a = context;
        this.b = qpVar;
        super();
    }

    public void a() {
        SharedPreferences a = qf.a(this.a);
        Bundle bundle = new Bundle();
        bundle.putBoolean("use_https", a.getBoolean("use_https", true));
        if (this.b != null) {
            this.b.a(bundle);
        }
    }
}
