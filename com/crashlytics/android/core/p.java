package com.crashlytics.android.core;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ m a;

    p(m mVar) {
        this.a = mVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.e.a(true);
        this.a.b.a(true);
        dialogInterface.dismiss();
    }
}
