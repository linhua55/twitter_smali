package com.twitter.android.highlights;

import android.support.v4.content.ContextCompat;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import defpackage.bcu;
import defpackage.bde;

/* compiled from: Twttr */
public class bn extends at {
    public final CompoundDrawableAnimButton G;
    public final TweetMediaView H;
    public final UserImageView a;
    public final TextView b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final View f;
    public final TweetMediaView g;
    public final CompoundDrawableAnimButton h;
    public final CompoundDrawableAnimButton i;
    public final UserImageView j;
    public final TextView k;
    public final TextView l;
    public final TextView m;
    public final TextView n;
    public final View o;
    public final CompoundDrawableAnimButton p;

    public bn(int i, View view) {
        super(i, view);
        this.a = (UserImageView) view.findViewById(2131952012);
        this.b = (TextView) view.findViewById(2131951683);
        this.c = (TextView) view.findViewById(2131952601);
        this.d = (TextView) view.findViewById(2131952612);
        this.e = (TextView) view.findViewById(2131952571);
        this.e.setMovementMethod(LinkMovementMethod.getInstance());
        this.f = view.findViewById(2131952063);
        this.g = (TweetMediaView) view.findViewById(2131952603);
        View findViewById = view.findViewById(2131952613);
        this.h = (CompoundDrawableAnimButton) findViewById.findViewById(2131952618);
        this.i = (CompoundDrawableAnimButton) findViewById.findViewById(2131952617);
        this.j = (UserImageView) view.findViewById(2131952604);
        this.k = (TextView) view.findViewById(2131952605);
        this.l = (TextView) view.findViewById(2131952606);
        this.m = (TextView) view.findViewById(2131952607);
        this.n = (TextView) view.findViewById(2131952611);
        this.n.setMovementMethod(LinkMovementMethod.getInstance());
        this.o = view.findViewById(2131952609);
        this.H = (TweetMediaView) view.findViewById(2131952610);
        View findViewById2 = view.findViewById(2131952608);
        this.p = (CompoundDrawableAnimButton) findViewById2.findViewById(2131952618);
        this.G = (CompoundDrawableAnimButton) findViewById2.findViewById(2131952617);
        int color = ContextCompat.getColor(view.getContext(), bcu.border_color);
        bde.a(findViewById.getBackground(), color);
        bde.a(findViewById2.getBackground(), color);
    }
}
