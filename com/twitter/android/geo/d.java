package com.twitter.android.geo;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.android.lf;

/* compiled from: Twttr */
final class d implements OnClickListener {
    final /* synthetic */ Context a;

    d(Context context) {
        this.a = context;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(lf.a().a(this.a));
    }
}
