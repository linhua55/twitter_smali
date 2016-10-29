package com.twitter.android.client;

import android.content.Context;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.ScribeDatabaseHelper;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ long c;
    final /* synthetic */ c d;

    d(c cVar, String str, Context context, long j) {
        this.d = cVar;
        this.a = str;
        this.b = context;
        this.c = j;
    }

    public void run() {
        if (bg.a().b(this.a).b() == LoginStatus.a) {
            di.b(this.b, this.c);
            ScribeDatabaseHelper.b(this.c);
            ar a = ar.a(this.b);
            a.e(this.a);
            a.d(this.a);
        }
    }
}
