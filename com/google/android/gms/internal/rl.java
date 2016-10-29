package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.gms.ads.internal.ar;

class rl implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ rk b;

    rl(rk rkVar, String str) {
        this.b = rkVar;
        this.a = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        ar.e().a(rk.a(this.b), Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", this.a), "Share via"));
    }
}
