package com.twitter.library.client.navigation;

import android.view.View;
import android.view.View.OnClickListener;
import bcx;

/* compiled from: Twttr */
class m implements OnClickListener {
    final /* synthetic */ k a;

    m(k kVar) {
        this.a = kVar;
    }

    public void onClick(View view) {
        if (this.a.a.j != null && (view.getTag(bcx.drawer_item_tag) instanceof b)) {
            this.a.a.j.a((b) view.getTag(bcx.drawer_item_tag));
        }
    }
}
