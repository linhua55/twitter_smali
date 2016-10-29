package com.twitter.library.network;

import android.app.Activity;
import android.content.Intent;
import om;

/* compiled from: Twttr */
class am implements om {
    final /* synthetic */ long a;
    final /* synthetic */ Activity b;
    final /* synthetic */ ak c;

    am(ak akVar, long j, Activity activity) {
        this.c = akVar;
        this.a = j;
        this.b = activity;
    }

    public void a() {
        if (this.c.e < 0) {
            this.c.e = this.c.c.a() - this.a;
        }
        this.c.a(this.b, true, 0, this.c.e);
    }

    public void a(int i, Intent intent) {
        if (this.c.e < 0) {
            this.c.e = this.c.c.a() - this.a;
        }
        this.c.a(this.b, false, i, this.c.e);
    }
}
