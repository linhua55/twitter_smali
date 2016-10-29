package com.twitter.app.main;

import android.net.Uri;
import android.support.v4.view.ViewPager;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.app.common.list.k;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.library.api.timeline.w;
import com.twitter.library.client.at;

/* compiled from: Twttr */
class n extends com.twitter.app.common.list.n {
    final Uri a;
    final ViewPager b;
    final DockLayout c;
    final AbsPagesAdapter d;
    final /* synthetic */ MainActivity e;

    n(MainActivity mainActivity, Uri uri, ViewPager viewPager, DockLayout dockLayout, AbsPagesAdapter absPagesAdapter) {
        this.e = mainActivity;
        this.a = uri;
        this.b = viewPager;
        this.d = absPagesAdapter;
        this.c = dockLayout;
    }

    public void a(k kVar) {
        at a = this.d.a(this.b.getCurrentItem());
        if (a != null && this.a.equals(a.a) && a.i > 0 && MainActivity.c.equals(this.a)) {
            MainActivity.p(this.e).a(new w(this.e, MainActivity.o(this.e), 0, null));
            MainActivity.b(this.e, 0);
        }
        super.a(kVar);
    }
}
