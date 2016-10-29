package com.twitter.android.timeline;

import bbu;
import com.twitter.android.client.c;
import com.twitter.android.widget.n;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class bz implements n<bd> {
    private final c a;
    private final ck b;
    private final ScribeAssociation d;
    private final long e;

    public bz(c cVar, ck ckVar, TwitterScribeAssociation twitterScribeAssociation, long j) {
        this.a = cVar;
        this.b = ckVar;
        this.d = twitterScribeAssociation;
        this.e = j;
    }

    public boolean a(bd bdVar) {
        return true;
    }

    public void a(bd bdVar, int i) {
        if (bdVar.a.B != null) {
            this.a.a(PromotedEvent.a, bdVar.a.B);
        }
        this.b.a(bdVar, i);
    }

    public void a(bd bdVar, boolean z) {
        String str;
        String a;
        if (bdVar.a.B != null) {
            this.a.a(z ? PromotedEvent.ar : PromotedEvent.as, bdVar.a.B);
        }
        if (bdVar.a.T != null) {
            str = bdVar.a.T.e;
        } else {
            str = null;
        }
        String str2 = z ? "swipe_next" : "swipe_previous";
        if (this.d != null) {
            a = this.d.a();
        } else {
            a = null;
        }
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.e).b(new String[]{a, null, str, "user_carousel", str2})).a(this.d)).a(TwitterScribeItem.a(bdVar.a)));
    }
}
