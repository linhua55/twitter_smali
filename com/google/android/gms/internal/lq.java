package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class lq implements OnClickListener {
    final /* synthetic */ lo a;

    lq(lo loVar) {
        this.a = loVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b("User canceled the download.");
    }
}
