package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.ViewStub;
import android.widget.TextView;
import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
public class f extends e {
    f(Activity activity, DisplayMode displayMode) {
        super(activity, displayMode);
    }

    protected void a(ViewStub viewStub) {
        viewStub.setLayoutResource(2130969110);
        this.e = (TextView) viewStub.inflate().findViewById(2131952839);
    }
}
