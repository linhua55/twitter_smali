package com.twitter.android.nativecards;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;

/* compiled from: Twttr */
class u implements OnClickListener {
    final /* synthetic */ t a;

    u(t tVar) {
        this.a = tVar;
    }

    public void onClick(View view) {
        if (this.a.c != null) {
            Context l = this.a.l();
            if (!this.a.c.j() || l == null) {
                this.a.v.b(this.a.c.i());
            } else {
                this.a.v.a(MomentsFullScreenPagerActivity.b(l, this.a.c.b()));
            }
        }
    }
}
