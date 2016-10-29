package tv.periscope.android.event;

import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class RetryEvent {
    public final ApiRunnable a;

    public RetryEvent(ApiRunnable apiRunnable) {
        this.a = apiRunnable;
    }
}
