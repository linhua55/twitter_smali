package com.twitter.android.revenue.card;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import cai;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.nativecards.q;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;

@Deprecated
/* compiled from: Twttr */
public class j extends q {
    private final i a;
    private au b;

    public j(Activity activity, DisplayMode displayMode, i iVar) {
        this(activity, displayMode, new h(activity), new b(activity), iVar);
    }

    public j(Activity activity, DisplayMode displayMode, f fVar, a aVar, i iVar) {
        super(activity, displayMode, fVar, aVar);
        this.a = iVar;
    }

    public View e() {
        return this.b.f();
    }

    public void a(cai cai) {
        super.a(cai);
        if (this.b == null) {
            this.b = this.a.b(this, this.w);
            this.b.a(l(), this.x);
        }
        this.b.a(cai);
    }

    public void a() {
        super.a();
        this.b.a();
    }

    public void b() {
        this.b.b();
    }

    public Tweet d() {
        return this.w;
    }

    public Context g() {
        return this.q;
    }

    public f h() {
        return this.r;
    }

    public a i() {
        return this.s;
    }
}
