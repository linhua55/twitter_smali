package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import bum;
import com.twitter.android.moments.ui.animation.m;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.model.core.Tweet;
import com.twitter.util.t;

/* compiled from: Twttr */
public class gm {
    private final ToggleImageButton a;
    private final TextView b;
    private final LinearLayout c;
    private final ToggleImageButton d;
    private final TextView e;
    private final LinearLayout f;
    private final Resources g;
    private final dz h;
    private final ImageButton i;
    private final m j;
    private final bum k;

    public gm(ViewGroup viewGroup, dz dzVar, m mVar, bum bum) {
        this(viewGroup.getContext().getResources(), (ToggleImageButton) viewGroup.findViewById(2131951911), (TextView) viewGroup.findViewById(2131952734), (LinearLayout) viewGroup.findViewById(2131952733), (ToggleImageButton) viewGroup.findViewById(2131951910), (TextView) viewGroup.findViewById(2131952742), (LinearLayout) viewGroup.findViewById(2131952741), (ImageButton) viewGroup.findViewById(2131951688), dzVar, mVar, bum);
    }

    gm(Resources resources, ToggleImageButton toggleImageButton, TextView textView, LinearLayout linearLayout, ToggleImageButton toggleImageButton2, TextView textView2, LinearLayout linearLayout2, ImageButton imageButton, dz dzVar, m mVar, bum bum) {
        this.a = toggleImageButton;
        this.b = textView;
        this.c = linearLayout;
        this.d = toggleImageButton2;
        this.e = textView2;
        this.f = linearLayout2;
        this.i = imageButton;
        this.k = bum;
        this.j = mVar;
        this.h = dzVar;
        this.g = resources;
    }

    public void a(Tweet tweet) {
        b(tweet);
        c(tweet);
        this.i.setOnClickListener(new gn(this, tweet));
    }

    private void b(Tweet tweet) {
        if (tweet.o > 0) {
            this.b.setText(t.a(this.g, (long) tweet.o));
        } else {
            this.b.setText(null);
        }
        this.a.setToggledOn(tweet.a);
        this.c.setOnClickListener(new go(this, tweet));
    }

    private void c(Tweet tweet) {
        if (tweet.l > 0) {
            this.e.setText(t.a(this.g, (long) tweet.l));
        } else {
            this.e.setText(null);
        }
        this.d.setToggledOn(tweet.d);
        this.f.setOnClickListener(new gp(this, tweet));
    }

    public void a() {
        if (this.k != null) {
            this.k.b();
        }
    }
}
