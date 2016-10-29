package com.twitter.android.composer.geotag;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.geo.TwitterPlace;

/* compiled from: Twttr */
class h implements OnClickListener {
    final /* synthetic */ k a;
    final /* synthetic */ TwitterPlace b;
    final /* synthetic */ int c;
    final /* synthetic */ g d;

    h(g gVar, k kVar, TwitterPlace twitterPlace, int i) {
        this.d = gVar;
        this.a = kVar;
        this.b = twitterPlace;
        this.c = i;
    }

    public void onClick(View view) {
        if (this.c.c != null) {
            this.d.c.a(this.a.itemView, this.b, this.c);
        }
    }
}
