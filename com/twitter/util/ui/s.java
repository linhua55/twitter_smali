package com.twitter.util.ui;

import android.content.Context;
import android.view.View;

/* compiled from: Twttr */
final class s implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ View b;
    final /* synthetic */ boolean c;

    s(Context context, View view, boolean z) {
        this.a = context;
        this.b = view;
        this.c = z;
    }

    public void run() {
        r.b(this.a, this.b, this.c);
    }
}
