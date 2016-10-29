package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.util.aq;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.caf;
import defpackage.cai;

/* compiled from: Twttr */
public class ae extends a {
    aw A;
    protected VideoPlayerView z;

    public ae(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity));
    }

    public ae(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        this(activity, displayMode, fVar, aVar, (LinearLayout) LayoutInflater.from(activity.getApplicationContext()).inflate(2130969096, new FrameLayout(activity.getApplicationContext()), false), new af());
    }

    public ae(Activity activity, DisplayMode displayMode, f fVar, a aVar, LinearLayout linearLayout, b bVar) {
        super(activity, displayMode, fVar, aVar, linearLayout, bVar);
        this.z = (VideoPlayerView) this.b.findViewById(2131951847);
    }

    public void a(cai cai) {
        super.a(cai);
        Context l = l();
        if (l != null) {
            if (aq.d(this.m)) {
                this.A = new bb(l, this.m);
            }
            if (this.z != null) {
                Integer a = caf.a("player_width", cai.c);
                Integer a2 = caf.a("player_height", cai.c);
                if (this.p == null || this.p.a == null || a == null || a2 == null) {
                    this.z.c();
                } else {
                    this.z.setAspectRatio(aq.a(a.intValue(), a2.intValue(), 1.0f));
                    this.z.a(l, this.p.a);
                }
                if (this.A != null) {
                    this.A.a(l, this.z);
                    this.A.a(l, this.n);
                    return;
                }
                this.z.b(l);
                this.z.setOnClickListener(this);
            }
        }
    }

    public void a() {
        super.a();
        if (this.A != null) {
            this.A.a();
            this.A = null;
        }
    }

    public void b() {
        super.b();
        if (this.z != null) {
            this.z.a();
        }
    }

    public void onClick(View view) {
        if (view == this.z) {
            a(this.m, this.n, this.o, this.p != null ? this.p.a : null, false, false);
        } else {
            super.onClick(view);
        }
    }
}
