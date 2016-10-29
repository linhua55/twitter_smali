package com.twitter.library.client.navigation;

import android.view.View;
import android.view.View.OnClickListener;
import bcx;
import com.twitter.android.UserAccount;

/* compiled from: Twttr */
class l implements OnClickListener {
    final /* synthetic */ k a;

    l(k kVar) {
        this.a = kVar;
    }

    public void onClick(View view) {
        if (this.a.a.j != null && (view.getTag(bcx.drawer_item_tag) instanceof UserAccount)) {
            this.a.a.j.a((UserAccount) view.getTag(bcx.drawer_item_tag));
        }
    }
}
