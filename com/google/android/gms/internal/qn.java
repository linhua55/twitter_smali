package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class qn extends qo {
    final /* synthetic */ Context a;
    final /* synthetic */ qp b;

    qn(Context context, qp qpVar) {
        this.a = context;
        this.b = qpVar;
        super();
    }

    public void a() {
        SharedPreferences a = qf.a(this.a);
        Bundle bundle = new Bundle();
        bundle.putString("content_url_hashes", a.getString("content_url_hashes", TtmlNode.ANONYMOUS_REGION_ID));
        if (this.b != null) {
            this.b.a(bundle);
        }
    }
}
