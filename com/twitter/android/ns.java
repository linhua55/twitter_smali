package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.j;

/* compiled from: Twttr */
class ns implements j {
    final /* synthetic */ nq a;

    ns(nq nqVar) {
        this.a = nqVar;
    }

    public void a(DialogInterface dialogInterface, int i) {
        this.a.b.getIntent().removeExtra("email_redirect_retweet");
    }
}
