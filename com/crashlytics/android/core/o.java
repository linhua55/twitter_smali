package com.crashlytics.android.core;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class o implements OnClickListener {
    final /* synthetic */ m a;

    o(m mVar) {
        this.a = mVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b.a(false);
        dialogInterface.dismiss();
    }
}
