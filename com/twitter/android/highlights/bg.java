package com.twitter.android.highlights;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import com.twitter.model.core.Tweet;
import defpackage.bcx;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class bg {
    public final View a;
    public final UserImageView b;
    public final TextView c;
    public final View d;
    public final TextView e;
    public final TextView f;
    public final View g;
    public final TweetMediaView h;
    public final CompoundDrawableAnimButton i;
    public final CompoundDrawableAnimButton j;
    public Tweet k;

    public bg(View view) {
        this.a = view;
        this.b = (UserImageView) view.findViewById(k.avatar);
        this.c = (TextView) view.findViewById(bcx.name);
        this.d = view.findViewById(2131952600);
        this.e = (TextView) view.findViewById(2131951700);
        this.f = (TextView) view.findViewById(2131952571);
        this.f.setMovementMethod(LinkMovementMethod.getInstance());
        this.g = view.findViewById(2131952063);
        this.h = (TweetMediaView) view.findViewById(2131952603);
        this.i = (CompoundDrawableAnimButton) view.findViewById(2131952618);
        this.j = (CompoundDrawableAnimButton) view.findViewById(2131952617);
    }
}
