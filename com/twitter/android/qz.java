package com.twitter.android;

import android.view.View;
import android.widget.TabHost.TabContentFactory;
import com.twitter.app.common.base.TwitterFragmentActivity;

/* compiled from: Twttr */
class qz implements TabContentFactory {
    private final TwitterFragmentActivity a;

    qz(TwitterFragmentActivity twitterFragmentActivity) {
        this.a = twitterFragmentActivity;
    }

    public View createTabContent(String str) {
        View view = new View(this.a);
        view.setMinimumWidth(0);
        view.setMinimumHeight(0);
        return view;
    }
}
