package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.View;
import cai;
import com.twitter.android.card.CardActionHelper;
import com.twitter.library.widget.tweet.content.DisplayMode;

@Deprecated
/* compiled from: Twttr */
public abstract class au {
    protected View i;
    protected long j;
    protected CardActionHelper k;
    protected j l;

    protected abstract void a(Context context, DisplayMode displayMode);

    protected au(j jVar) {
        this.l = jVar;
        this.k = jVar.o();
    }

    protected void a(cai cai) {
        this.j = cai.b;
    }

    protected void a() {
    }

    protected void b() {
    }

    protected View f() {
        return this.i;
    }
}
