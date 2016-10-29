package com.twitter.library.client.navigation;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.UserAccount;

/* compiled from: Twttr */
class i implements OnClickListener {
    final /* synthetic */ UserAccount a;
    final /* synthetic */ f b;

    i(f fVar, UserAccount userAccount) {
        this.b = fVar;
        this.a = userAccount;
    }

    public void onClick(View view) {
        if (this.b.j != null) {
            this.b.j.a(this.a);
        }
    }
}
