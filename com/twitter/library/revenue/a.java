package com.twitter.library.revenue;

import android.content.res.Resources;
import com.twitter.library.view.ab;
import com.twitter.model.core.Tweet;
import defpackage.bdc;

/* compiled from: Twttr */
public class a {
    private final b a;
    private final int b;
    private final int c;
    private final int d;
    private boolean e;

    public a(b bVar, int i, int i2, int i3) {
        this.e = true;
        this.a = bVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final void a(Tweet tweet, Resources resources) {
        boolean z;
        if (!this.e || (!(tweet.q() || tweet.s()) || tweet.t())) {
            boolean z2 = false;
        } else {
            int i = 1;
        }
        if (!tweet.F() || tweet.d || tweet.t()) {
            z = false;
        } else {
            int i2 = 1;
        }
        if (i == 0 && r3 == 0) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (i != 0) {
                this.a.a(b(tweet.s()), ab.a(tweet, resources, false));
            } else {
                String str;
                if (tweet.c) {
                    str = tweet.B;
                } else {
                    str = tweet.A;
                }
                this.a.a(this.d, resources.getString(bdc.lifeline_alert, new Object[]{str}));
            }
        }
        this.a.e(z);
    }

    private int b(boolean z) {
        if (z) {
            return this.b;
        }
        return this.c;
    }
}
