package com.twitter.library.widget.tweet.content;

import android.app.Activity;
import android.content.res.Configuration;
import com.twitter.library.media.widget.AdaptiveTweetMediaView;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public abstract class b<AttachParams> implements f<AttachParams> {
    protected AdaptiveTweetMediaView a;
    private final Activity b;

    protected b(Activity activity) {
        this.b = activity;
    }

    public Activity d() {
        return this.b;
    }

    protected AdaptiveTweetMediaView a(Activity activity, AttachParams attachParams, Tweet tweet, DisplayMode displayMode) {
        return new com.twitter.library.media.widget.b().a(activity, tweet, displayMode);
    }

    public void b() {
        if (this.a != null) {
            this.a.setFromMemoryOnly(false);
        }
    }

    public void al_() {
    }

    public void b(boolean z) {
        if (this.a != null) {
            this.a.h();
        }
    }

    public void ak_() {
        if (this.a != null) {
            this.a.i();
        }
    }

    public void am_() {
    }

    public void a(Configuration configuration) {
    }
}
