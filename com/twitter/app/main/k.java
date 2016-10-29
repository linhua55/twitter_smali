package com.twitter.app.main;

import com.twitter.library.client.Session;
import com.twitter.library.client.aa;

/* compiled from: Twttr */
class k extends aa {
    final /* synthetic */ MainActivity a;

    k(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void a(Session session, String str, int i, String str2, int i2, long j, long j2, int i3, boolean z) {
        if (session.g() == this.a.ab().g() && i == 200) {
            this.a.a(session.e(), z);
        }
    }
}
