package com.twitter.android;

import android.content.Context;
import bbu;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.o;
import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;

/* compiled from: Twttr */
public class nv extends o {
    private final long[] a;

    public nv(Context context, Session session, Collection<Long> collection) {
        super(context, nv.class.getName(), session);
        this.a = CollectionUtils.e(collection);
    }

    protected void a() {
        di s = s();
        long j = h().c;
        for (long j2 : this.a) {
            bbu.a(new TwitterScribeLog(j).b(new String[]{"home", null, null, "polled_content", "impression"}));
        }
        s.a(this.a, j, 0);
    }
}
