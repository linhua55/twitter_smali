package com.twitter.android.highlights;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.widget.TweetStatView;
import com.twitter.internal.android.widget.FlowLayout;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class y extends bh {
    public MediaImageView a;
    public MediaImageView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public View g;
    public TextView h;
    public FlowLayout i;
    public TweetStatView j;
    public TweetStatView k;

    public y(View view) {
        super(14, view);
    }

    public void a(View view) {
        this.a = (MediaImageView) view.findViewById(2131952012);
        this.b = (MediaImageView) view.findViewById(2131952599);
        this.c = (TextView) view.findViewById(2131951693);
        this.d = (TextView) view.findViewById(2131951683);
        this.e = (TextView) view.findViewById(2131952601);
        this.f = (TextView) view.findViewById(2131951656);
        this.g = view.findViewById(2131952600);
        this.h = (TextView) view.findViewById(2131951640);
        this.h.setMovementMethod(LinkMovementMethod.getInstance());
        this.j = (TweetStatView) view.findViewById(2131952815);
        this.k = (TweetStatView) view.findViewById(2131952816);
        this.i = (FlowLayout) view.findViewById(2131953122);
    }
}
