package com.crashlytics.android.core;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class n implements OnClickListener {
    final /* synthetic */ m a;

    n(m mVar) {
        this.a = mVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b.a(true);
        dialogInterface.dismiss();
    }
}
