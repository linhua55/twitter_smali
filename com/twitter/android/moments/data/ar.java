package com.twitter.android.moments.data;

import android.support.annotation.VisibleForTesting;
import byi;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import cvn;
import rx.t;

@VisibleForTesting
/* compiled from: Twttr */
class ar implements au {
    private final Tweet a;
    private final au b;
    private final byi c;
    private final cvn d;
    private final t e;

    ar(au auVar, Tweet tweet, byi byi, cvn cvn, t tVar) {
        this.b = auVar;
        this.a = tweet;
        this.c = byi;
        this.d = cvn;
        this.e = tVar;
    }

    public void a(boolean z) {
        if (this.b != null) {
            this.b.a(z);
        }
    }

    public void b(boolean z) {
        if (this.b != null) {
            this.b.b(z);
        }
    }

    public void c(boolean z) {
        if (this.b != null) {
            this.b.c(z);
        }
    }

    public void d(boolean z) {
        if (z) {
            this.d.a(new at(this)).a(this.e).a(new as(this));
        } else if (this.b != null) {
            this.b.d(false);
        }
    }
}
