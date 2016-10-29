package com.twitter.android.eventtimelines.tv.show;

import android.net.Uri;
import com.twitter.android.km;
import com.twitter.android.kx;

/* compiled from: Twttr */
class p extends kx {
    final /* synthetic */ TvShowActivity a;

    p(TvShowActivity tvShowActivity, Uri uri, km kmVar) {
        this.a = tvShowActivity;
        super(uri, kmVar);
    }

    public void a(int i) {
        this.a.a(false);
        super.a(i);
    }

    public void a() {
        this.a.a(false);
        super.a();
    }
}
