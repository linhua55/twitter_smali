package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import defpackage.bok;

/* compiled from: Twttr */
class eb implements OnClickListener {
    final /* synthetic */ long a;
    final /* synthetic */ DialogActivity b;

    eb(DialogActivity dialogActivity, long j) {
        this.b = dialogActivity;
        this.a = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            Context applicationContext = this.b.getApplicationContext();
            az.a(applicationContext).a(new bok(applicationContext, bg.a().c(), this.a, null));
        }
    }
}
