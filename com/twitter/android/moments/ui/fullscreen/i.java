package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;

/* compiled from: Twttr */
public class i extends PageLoadingEvent {
    public final ac a;

    public i(ac acVar) {
        super(PageLoadingEventType.DONE_FAILED);
        this.a = acVar;
    }
}
