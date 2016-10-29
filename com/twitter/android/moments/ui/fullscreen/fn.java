package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.viewmodels.a;
import java.util.Map.Entry;

/* compiled from: Twttr */
class fn implements OnClickListener {
    final /* synthetic */ Entry a;
    final /* synthetic */ fl b;

    fn(fl flVar, Entry entry) {
        this.b = flVar;
        this.a = entry;
    }

    public void onClick(View view) {
        this.b.c.a((a) this.a.getValue());
        this.b.c.b();
    }
}
