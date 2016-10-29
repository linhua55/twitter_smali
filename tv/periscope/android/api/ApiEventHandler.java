package tv.periscope.android.api;

import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.event.RetryEvent;

/* compiled from: Twttr */
public interface ApiEventHandler {
    void onEventMainThread(ApiEvent apiEvent);

    void onEventMainThread(RetryEvent retryEvent);
}
