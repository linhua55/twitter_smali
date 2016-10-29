package com.twitter.library.api.timeline;

import com.twitter.library.service.b;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.h;

/* compiled from: Twttr */
class t extends z {
    final /* synthetic */ String a;
    final /* synthetic */ s b;

    t(s sVar, String str) {
        this.b = sVar;
        this.a = str;
    }

    public void a(x xVar) {
        synchronized (s.a) {
            h.b(((b) s.a.remove(this.a)) == this.b);
        }
    }
}
