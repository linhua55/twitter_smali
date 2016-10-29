package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import boh;
import bok;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
class ei implements OnClickListener {
    final /* synthetic */ ef a;

    ei(ef efVar) {
        this.a = efVar;
    }

    public void onClick(View view) {
        boolean b = this.a.e.b();
        Context context = view.getContext();
        Session c = bg.a().c();
        if (b) {
            this.a.b.a(new boh(context, c, this.a.g.c, null));
        } else {
            this.a.b.a(new bok(context, c, this.a.g.c, null));
        }
        this.a.e.a(b, this.a.a.getString(b ? 2131364049 : 2131362705));
    }
}
