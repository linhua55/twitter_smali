package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import defpackage.boh;

/* compiled from: Twttr */
class ea implements OnClickListener {
    final /* synthetic */ long a;
    final /* synthetic */ DialogActivity b;

    ea(DialogActivity dialogActivity, long j) {
        this.b = dialogActivity;
        this.a = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            Context applicationContext = this.b.getApplicationContext();
            az.a(applicationContext).a(new boh(applicationContext, bg.a().c(), this.a, null));
        }
    }
}
