package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.l;

/* compiled from: Twttr */
class nr implements l {
    final /* synthetic */ nq a;

    nr(nq nqVar) {
        this.a = nqVar;
    }

    public void a(DialogInterface dialogInterface, int i) {
        this.a.b.getIntent().removeExtra("email_redirect_retweet");
    }
}
