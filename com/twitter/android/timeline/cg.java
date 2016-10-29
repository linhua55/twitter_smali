package com.twitter.android.timeline;

import android.database.Cursor;
import ccb;
import cdc;
import cgu;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.bf;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.cr;
import com.twitter.util.serialization.m;
import defpackage.che;

/* compiled from: Twttr */
public class cg extends bg<cd> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return bc.o(cursor.getInt(cdc.g));
    }

    public cd b(Cursor cursor) {
        ar c = c(cursor);
        long e = e(cursor);
        cr crVar = (cr) m.a(cursor.getBlob(cdc.f), cr.a);
        if (crVar != null) {
            bf a = ccb.a.a(cursor);
            TwitterSocialProof twitterSocialProof = (TwitterSocialProof) crVar.f.get(String.valueOf(a.q));
            if (twitterSocialProof != null) {
                a.a(twitterSocialProof);
            }
            Object bbVar = new bb(c(cursor), e, a.a(), null);
            che che = new che();
            return new cd(c, e, d(cursor), cgu.f(), che.a(bbVar).a(), crVar);
        }
        return new cd(c, e, d(cursor), cgu.f(), cgu.f(), crVar);
    }
}
