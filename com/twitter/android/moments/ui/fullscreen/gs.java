package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.util.z;

/* compiled from: Twttr */
class gs implements z<ae> {
    final /* synthetic */ gr a;

    gs(gr grVar) {
        this.a = grVar;
    }

    public void a(ae aeVar) {
        if (this.a.b == aeVar.b) {
            this.a.h.a(this.a.b.h(), PageLoadingEventType.DONE_SUCCESS.a());
            this.a.n = true;
            this.a.l.c();
        }
    }
}
