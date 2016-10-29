package com.twitter.app.main;

import com.twitter.app.drafts.ConfirmRetryExpiredDraftsDialog;
import defpackage.cys;

/* compiled from: Twttr */
class d implements cys<long[]> {
    final /* synthetic */ MainActivity a;

    d(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public /* synthetic */ void call(Object obj) {
        a((long[]) obj);
    }

    public void a(long[] jArr) {
        this.a.O = true;
        ConfirmRetryExpiredDraftsDialog.a(this.a.getSupportFragmentManager(), jArr);
    }
}
