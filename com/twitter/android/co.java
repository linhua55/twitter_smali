package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;
import com.twitter.library.api.dm.requests.v;

/* compiled from: Twttr */
class co implements m {
    final /* synthetic */ cn a;

    co(cn cnVar) {
        this.a = cnVar;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            DMConversationFragment.a(this.a.c, new v(DMConversationFragment.A(this.a.c), DMConversationFragment.B(this.a.c), DMConversationFragment.k(this.a.c)), 15, 0);
        }
    }
}
