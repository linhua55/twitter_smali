package com.twitter.library.api.geo;

import android.content.Context;
import android.location.Location;
import bvs;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.platform.e;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.util.au;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class k extends b {
    private final List<e> a;
    private final Location b;

    public k(Context context, Session session, Location location, List<e> list) {
        super(context, k.class.getName(), session);
        this.a = n.a(list);
        this.b = location;
    }

    protected d a() {
        com.twitter.library.service.e a = K().a("geo", "user_location_signals").a(RequestMethod.b);
        if (bvs.a().b()) {
            a.a("locationTimestampMillis", this.b.getTime());
            if (this.b.hasAccuracy()) {
                a.a("acc", (double) this.b.getAccuracy());
            }
        }
        if (bvs.a().c()) {
            for (Entry entry : au.a(this.a).entrySet()) {
                a.a((String) entry.getKey(), entry.getValue().toString());
            }
        }
        return a.a();
    }

    protected c f() {
        return null;
    }
}
