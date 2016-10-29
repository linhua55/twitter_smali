package com.twitter.library.api.timeline;

import android.content.Context;
import com.google.android.exoplayer.util.Util;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.ab;
import com.twitter.library.service.o;
import com.twitter.model.core.bl;
import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;

/* compiled from: Twttr */
public class w extends o {
    private final int a;
    private final long[] b;

    public w(Context context, Session session, int i, Collection<Long> collection) {
        super(context, w.class.getName(), session);
        this.a = i;
        this.b = CollectionUtils.e(collection);
    }

    protected void a() {
        ab h = h();
        String str = h.e;
        int i = this.a;
        di s = s();
        e t = t();
        long[] jArr = this.b;
        if (jArr == null) {
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    ar.a(this.h).a(str, "tweet", 0, t);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    s.b(0, null, t);
                    ar a = ar.a(this.h);
                    a.a(str, "mention", 0, t);
                    a.a(str, "unread_interactions", 0, t);
                    break;
                default:
                    break;
            }
        }
        s.a(h.c, i, -1, jArr, t);
        if (bl.a(i)) {
            s.b(i, jArr, t);
        }
        t.a();
    }
}
