package com.google.android.gms.internal;

import android.webkit.WebView;

class mj implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ mi c;

    mj(mi miVar, String str, String str2) {
        this.c = miVar;
        this.a = str;
        this.b = str2;
    }

    public void run() {
        WebView a = this.c.a();
        a.setWebViewClient(new mk(this, a));
        this.c.a.add(a);
        a.loadDataWithBaseURL(this.a, this.b, "text/html", Util.UTF_8, null);
        qd.a("Fetching assets finished.");
    }
}
