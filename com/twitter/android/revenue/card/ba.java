package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.View;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
public class ba extends k {
    private bc c;

    public ba(Activity activity, DisplayMode displayMode, f fVar, a aVar, cmb cmb) {
        super(activity, displayMode, fVar, aVar, cmb);
    }

    public void k() {
        this.c = new bb(this.q, this.a, this.x, this.q.getResources().getDimension(2131689727));
        this.c.a(true);
    }

    protected void j() {
        super.j();
        this.c.a(false);
    }

    public View p() {
        return this.c.a();
    }

    public void b() {
        this.c.b();
    }

    public void a() {
        super.a();
        this.c.c();
    }
}
