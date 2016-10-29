package com.twitter.android.nativecards;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class as implements OnClickListener {
    final /* synthetic */ long a;
    final /* synthetic */ ap b;

    as(ap apVar, long j) {
        this.b = apVar;
        this.a = j;
    }

    public void onClick(View view) {
        this.b.a(this.a);
    }
}
