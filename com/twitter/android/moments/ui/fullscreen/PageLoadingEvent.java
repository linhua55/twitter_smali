package com.twitter.android.moments.ui.fullscreen;

/* compiled from: Twttr */
public class PageLoadingEvent {
    public final PageLoadingEventType b;

    /* compiled from: Twttr */
    public enum PageLoadingEventType {
        START_LOADING,
        START_BUFFERING,
        SHOWN_ON_SCREEN,
        ON_SHOW_WITH_MEDIA,
        THUMBNAIL_LOADED,
        DONE_SUCCESS,
        DONE_FAILED;

        public PageLoadingEvent a() {
            return new PageLoadingEvent(this);
        }
    }

    public PageLoadingEvent(PageLoadingEventType pageLoadingEventType) {
        this.b = pageLoadingEventType;
    }
}
