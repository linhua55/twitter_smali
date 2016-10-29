package com.twitter.android;

import android.os.Bundle;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class nb extends ad {
    final /* synthetic */ RemoveAccountActivity a;

    nb(RemoveAccountActivity removeAccountActivity) {
        this.a = removeAccountActivity;
    }

    public void a(Session session, boolean z) {
        if (this.a.a != null) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("booleanResult", true);
            this.a.a.onResult(bundle);
        }
    }
}
