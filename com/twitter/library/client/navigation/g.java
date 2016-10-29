package com.twitter.library.client.navigation;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class g implements OnClickListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ f b;

    g(f fVar, boolean z) {
        this.b = fVar;
        this.a = z;
    }

    public void onClick(View view) {
        boolean z;
        if (this.a) {
            z = true;
        } else {
            z = this.b.b();
        }
        if (z && this.b.j != null) {
            this.b.j.a();
        }
    }
}
