package com.twitter.library.vineloops;

import android.content.Context;
import com.twitter.library.client.az;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ c a;
    private final az b;
    private final Context c;

    d(c cVar, Context context, az azVar) {
        this.a = cVar;
        this.c = context.getApplicationContext();
        this.b = azVar;
    }

    public void run() {
        this.b.a(new e(this.a, this.c));
    }
}
