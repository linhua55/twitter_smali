package com.twitter.android.nativecards;

import android.view.View;
import android.view.View.OnLongClickListener;

/* compiled from: Twttr */
class ar implements OnLongClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ ap b;

    ar(ap apVar, String str) {
        this.b = apVar;
        this.a = str;
    }

    public boolean onLongClick(View view) {
        this.b.a(this.a, this.a);
        return false;
    }
}
