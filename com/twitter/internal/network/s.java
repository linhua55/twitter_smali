package com.twitter.internal.network;

import com.twitter.platform.q;
import com.twitter.platform.r;

/* compiled from: Twttr */
class s implements r {
    final /* synthetic */ q a;

    s(q qVar) {
        this.a = qVar;
    }

    public void a(q qVar, String str) {
        if (str.equals("wifi_only_mode")) {
            this.a.a(qVar.a("wifi_only_mode", false), this.a.e);
        }
    }
}
