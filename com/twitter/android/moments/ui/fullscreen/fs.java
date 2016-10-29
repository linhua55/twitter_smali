package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import android.view.ViewGroup;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class fs implements fe {
    private final ViewGroup a;
    private final i b;

    public fs(ViewGroup viewGroup, Tweet tweet) {
        this(viewGroup, a(viewGroup, tweet));
    }

    fs(ViewGroup viewGroup, i iVar) {
        this.b = iVar;
        this.a = viewGroup;
        this.a.setVisibility(0);
    }

    public void a() {
        if (this.b != null) {
            this.b.ba_();
            this.b.c();
            this.a.addView(this.b.d());
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.bb_();
        }
    }

    static i a(ViewGroup viewGroup, Tweet tweet) {
        return new j(true, (Activity) viewGroup.getContext(), tweet, DisplayMode.MOMENTS, null, null).a();
    }
}
