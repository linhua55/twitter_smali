package com.twitter.android;

import android.view.View;
import com.twitter.library.widget.TweetView;

/* compiled from: Twttr */
public class vt {
    public final boolean c;
    public final TweetView d;

    public vt(View view) {
        this(view, false);
    }

    public vt(View view, boolean z) {
        this.d = (TweetView) view.findViewById(2131952011);
        this.c = z;
    }
}
