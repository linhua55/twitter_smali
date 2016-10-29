package com.twitter.android;

import android.content.Intent;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class ng extends ad {
    final /* synthetic */ RemoveAccountDialogActivity a;

    ng(RemoveAccountDialogActivity removeAccountDialogActivity) {
        this.a = removeAccountDialogActivity;
    }

    public void a(Session session, boolean z) {
        this.a.removeDialog(1);
        this.a.b = false;
        this.a.setResult(-1, new Intent().putExtra("is_last", z));
        this.a.finish();
    }
}
