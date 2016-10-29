package com.twitter.android.nativecards;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class aq implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ ap b;

    aq(ap apVar, String str) {
        this.b = apVar;
        this.a = str;
    }

    public void onClick(View view) {
        this.b.v.b(this.a);
    }
}
