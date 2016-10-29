package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.a;

/* compiled from: Twttr */
class bl implements OnClickListener {
    final /* synthetic */ a a;
    final /* synthetic */ bj b;

    bl(bj bjVar, a aVar) {
        this.b = bjVar;
        this.a = aVar;
    }

    public void onClick(View view) {
        this.b.e.a(this.a.b, null);
    }
}
