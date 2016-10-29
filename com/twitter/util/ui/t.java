package com.twitter.util.ui;

import android.os.ResultReceiver;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* compiled from: Twttr */
final class t implements Runnable {
    final /* synthetic */ InputMethodManager a;
    final /* synthetic */ View b;
    final /* synthetic */ boolean c;
    final /* synthetic */ ResultReceiver d;

    t(InputMethodManager inputMethodManager, View view, boolean z, ResultReceiver resultReceiver) {
        this.a = inputMethodManager;
        this.b = view;
        this.c = z;
        this.d = resultReceiver;
    }

    public void run() {
        r.a(this.a, this.b, this.c, this.d);
    }
}
