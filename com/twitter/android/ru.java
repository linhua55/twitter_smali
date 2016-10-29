package com.twitter.android;

import android.view.View;
import android.widget.TextView;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
class ru {
    public final TextView a;
    public final TextView b;
    public final TweetMediaView c;
    public final AspectRatioFrameLayout d;
    public final rq e;
    public final View f;
    public final TextView g;
    public final View h;

    ru(View view) {
        this.a = (TextView) view.findViewById(2131953320);
        this.g = (TextView) view.findViewById(2131952079);
        this.b = (TextView) view.findViewById(2131953269);
        this.c = (TweetMediaView) view.findViewById(2131953319);
        this.d = (AspectRatioFrameLayout) view.findViewById(2131952788);
        this.h = view.findViewById(2131953321);
        this.f = view.findViewById(2131953322);
        this.e = new rq(view);
    }
}
