package com.twitter.android;

import android.app.ProgressDialog;
import com.twitter.android.dm.g;
import com.twitter.android.dm.n;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
class bv implements g {
    final /* synthetic */ ProgressDialog a;
    final /* synthetic */ long[] b;
    final /* synthetic */ n c;
    final /* synthetic */ DMActivity d;

    bv(DMActivity dMActivity, ProgressDialog progressDialog, long[] jArr, n nVar) {
        this.d = dMActivity;
        this.a = progressDialog;
        this.b = jArr;
        this.c = nVar;
    }

    public void a(TwitterUser twitterUser, boolean z) {
        if (this.a.isShowing()) {
            this.a.dismiss();
        }
        if (z) {
            this.d.a(this.b, this.c.c(), this.c.k());
        }
    }
}
