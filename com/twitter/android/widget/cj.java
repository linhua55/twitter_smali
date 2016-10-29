package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class cj implements OnClickListener {
    final /* synthetic */ MediaStoreItemView a;

    cj(MediaStoreItemView mediaStoreItemView) {
        this.a = mediaStoreItemView;
    }

    public void onClick(View view) {
        if (this.a.v != null) {
            this.a.v.a(this.a);
        }
    }
}
