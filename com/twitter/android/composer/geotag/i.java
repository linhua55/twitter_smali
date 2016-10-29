package com.twitter.android.composer.geotag;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class i implements OnClickListener {
    final /* synthetic */ k a;
    final /* synthetic */ int b;
    final /* synthetic */ g c;

    i(g gVar, k kVar, int i) {
        this.c = gVar;
        this.a = kVar;
        this.b = i;
    }

    public void onClick(View view) {
        if (this.c.c != null) {
            this.c.c.a(this.a.itemView, this.b);
        }
    }
}
