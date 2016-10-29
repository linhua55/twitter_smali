package com.twitter.android.vit;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class c implements OnClickListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ a b;

    c(a aVar, boolean z) {
        this.b = aVar;
        this.a = z;
    }

    public void onClick(View view) {
        this.b.b.a(this.a ? 2 : 0, true);
    }
}
