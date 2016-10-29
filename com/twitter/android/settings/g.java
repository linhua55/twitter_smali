package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.android.geo.c;

/* compiled from: Twttr */
class g implements OnClickListener {
    final /* synthetic */ LocationAndProxyActivity a;

    g(LocationAndProxyActivity locationAndProxyActivity) {
        this.a = locationAndProxyActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (-1 == i) {
            c.c(this.a);
        }
    }
}
