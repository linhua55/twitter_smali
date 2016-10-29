package com.twitter.android;

import bnw;
import com.twitter.internal.android.service.ab;
import com.twitter.library.provider.ck;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bnq;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class tt extends z {
    final /* synthetic */ TweetActivity a;

    private tt(TweetActivity tweetActivity) {
        this.a = tweetActivity;
    }

    public void a(x xVar) {
        if (xVar instanceof com.twitter.library.api.upload.z) {
            a(xVar, xVar.l());
        } else if (this.a.d != null && ((aa) xVar.l().b()).b()) {
            if (xVar instanceof bnq) {
                bnq bnq = (bnq) xVar;
                if (this.a.d.t == bnq.h()) {
                    this.a.h = ck.a(bnq.s(), this.a.c.g());
                    this.a.getSupportLoaderManager().restartLoader(0, null, this.a);
                }
            } else if (xVar instanceof bnw) {
                if ((this.a.d.t == ((bnw) xVar).g() ? 1 : 0) != 0) {
                    this.a.h = ck.b(this.a.d.t, this.a.c.g());
                    this.a.getSupportLoaderManager().restartLoader(0, null, this.a);
                }
            }
        }
    }

    private void a(x xVar, ab<aa> abVar) {
        boolean z = false;
        switch (xVar.M()) {
            case WireMessage.WIRE_CONTROL /*2*/:
                z = ((aa) abVar.b()).b();
                break;
        }
        if (z && this.a.d != null) {
            this.a.e.c(((aa) abVar.b()).b());
        }
    }
}
