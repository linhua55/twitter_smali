package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: Twttr */
class dz implements OnDismissListener {
    final /* synthetic */ DialogActivity a;

    dz(DialogActivity dialogActivity) {
        this.a = dialogActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.a.setResult(0);
        this.a.finish();
    }
}
