package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.Event.EventType;
import com.twitter.util.z;

/* compiled from: Twttr */
class ct implements z<Event> {
    final /* synthetic */ cs a;

    ct(cs csVar) {
        this.a = csVar;
    }

    public void a(Event event) {
        if (event.a() == EventType.ROTATE_LANDSCAPE || event.a() == EventType.ROTATE_PORTRAIT) {
            this.a.f.g();
        }
    }
}
