package com.google.android.gms.internal;

import android.view.View;

class bj implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ bi b;

    bj(bi biVar, View view) {
        this.b = biVar;
        this.a = view;
    }

    public void run() {
        this.b.b(this.a);
    }
}
