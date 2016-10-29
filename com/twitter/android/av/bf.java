package com.twitter.android.av;

import android.app.Activity;
import android.content.Intent;

/* compiled from: Twttr */
class bf implements Runnable {
    final /* synthetic */ Intent a;
    final /* synthetic */ be b;

    bf(be beVar, Intent intent) {
        this.b = beVar;
        this.a = intent;
    }

    public void run() {
        if (bd.a(this.b.b)) {
            ((Activity) this.b.a).startActivityForResult(this.a, bd.b(this.b.b));
        } else {
            this.b.a.startActivity(this.a);
        }
    }
}
