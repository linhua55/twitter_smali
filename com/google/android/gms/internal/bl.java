package com.google.android.gms.internal;

import android.webkit.ValueCallback;

class bl implements ValueCallback<String> {
    final /* synthetic */ bk a;

    bl(bk bkVar) {
        this.a = bkVar;
    }

    public void a(String str) {
        this.a.e.a(this.a.b, this.a.c, str, this.a.d);
    }

    public /* synthetic */ void onReceiveValue(Object obj) {
        a((String) obj);
    }
}
