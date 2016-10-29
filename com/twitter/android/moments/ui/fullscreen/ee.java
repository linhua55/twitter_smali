package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.util.z;

/* compiled from: Twttr */
class ee implements z<com.twitter.util.collection.z<String, PageLoadingEvent>> {
    final /* synthetic */ ed a;

    ee(ed edVar) {
        this.a = edVar;
    }

    public void a(com.twitter.util.collection.z<String, PageLoadingEvent> zVar) {
        if (((PageLoadingEvent) zVar.b()).b == PageLoadingEventType.DONE_SUCCESS || ((PageLoadingEvent) zVar.b()).b == PageLoadingEventType.ON_SHOW_WITH_MEDIA) {
            MomentPage c = this.a.b.c();
            if (c != null && (c instanceof f) && ((String) zVar.a()).equals(c.h()) && ed.a((f) c)) {
                this.a.d();
            }
        }
    }
}
