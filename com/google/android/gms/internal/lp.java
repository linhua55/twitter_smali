package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class lp implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ lo c;

    lp(lo loVar, String str, String str2) {
        this.c = loVar;
        this.a = str;
        this.b = str2;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            ((DownloadManager) lo.a(this.c).getSystemService("download")).enqueue(this.c.a(this.a, this.b));
        } catch (IllegalStateException e) {
            this.c.b("Could not store picture.");
        }
    }
}
