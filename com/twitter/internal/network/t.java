package com.twitter.internal.network;

import com.twitter.platform.TwRadioType;
import com.twitter.platform.p;
import com.twitter.util.z;

/* compiled from: Twttr */
class t implements z<p> {
    final /* synthetic */ q a;

    t(q qVar) {
        this.a = qVar;
    }

    public void a(p pVar) {
        boolean z = pVar != null && pVar.a() == TwRadioType.s;
        this.a.a(this.a.d, z);
    }
}
