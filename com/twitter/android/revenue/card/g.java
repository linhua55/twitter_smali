package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.View;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
public class g extends ac {
    g(Activity activity, DisplayMode displayMode) {
        super(activity, displayMode);
        View findViewById = this.a.findViewById(2131952838);
        if (findViewById != null) {
            findViewById.setBackground(x.a(this.q.getResources()));
        }
    }

    protected int g() {
        return 2130969069;
    }
}
