package com.twitter.android.moments.data;

import android.database.Cursor;
import bym;
import ccc;
import chj;
import cni;
import com.twitter.model.core.p;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.ad;
import com.twitter.model.moments.o;
import com.twitter.model.moments.q;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.c;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.model.moments.viewmodels.l;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.collection.x;
import com.twitter.util.serialization.m;
import defpackage.cks;
import defpackage.cll;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class a extends chj<x<d>> {
    private final ac a;

    public a() {
        this(new ac());
    }

    public a(ac acVar) {
        this.a = acVar;
    }

    private MomentPage a(Cursor cursor, ab abVar) {
        cks cks = (cks) m.a(cursor.getBlob(cursor.getColumnIndex("moments_pages_capsule_page_data")), cks.a);
        int i = cursor.getInt(cursor.getColumnIndex("tweet_flags"));
        int i2 = cursor.getInt(cursor.getColumnIndex("user_friendship"));
        if (cks == null) {
            return null;
        }
        String str = cks.d;
        MomentPageDisplayMode momentPageDisplayMode = cks.c;
        if ((i & 256) > 0 || p.d(i2) || p.e(i2)) {
            return (momentPageDisplayMode == MomentPageDisplayMode.a || momentPageDisplayMode == MomentPageDisplayMode.c) ? (MomentPage) ((l) ((l) ((l) new l().a(abVar)).a(str)).a(momentPageDisplayMode)).b(bym.m()).a(bym.l()).q() : null;
        } else {
            return this.a.a(abVar, ccc.a.a(cursor), str, momentPageDisplayMode, cks.b);
        }
    }

    private ab b(Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndex("moments_pages_moment_id"));
        String string = cursor.getString(cursor.getColumnIndex("moments_title"));
        boolean z = cursor.getInt(cursor.getColumnIndex("moments_can_subscribe")) == 1;
        boolean z2 = cursor.getInt(cursor.getColumnIndex("moments_is_live")) == 1;
        String string2 = cursor.getString(cursor.getColumnIndex("moments_subcategory_string"));
        String string3 = cursor.getString(cursor.getColumnIndex("moments_subcategory_favicon_url"));
        String string4 = cursor.getString(cursor.getColumnIndex("moments_time_string"));
        String string5 = cursor.getString(cursor.getColumnIndex("moments_duration_string"));
        boolean z3 = cursor.getInt(cursor.getColumnIndex("moments_is_subscribed")) == 1;
        String string6 = cursor.getString(cursor.getColumnIndex("moments_description"));
        return (ab) new ad().a(j).a(string).a(z).b(z2).c(cursor.getInt(cursor.getColumnIndex("moments_is_sensitive")) == 1).b(string2).c(string3).d(string4).e(string5).d(z3).f(string6).g(cursor.getString(cursor.getColumnIndex("moments_moment_url"))).a(cursor.getInt(cursor.getColumnIndex("moments_num_subscribers"))).a((com.twitter.model.moments.a) m.a(cursor.getBlob(cursor.getColumnIndex("moments_author_info")), com.twitter.model.moments.a.a)).a((cni) m.a(cursor.getBlob(cursor.getColumnIndex("moments_promoted_content")), cni.a)).a((o) new q().a(cursor.getString(cursor.getColumnIndex("moments_event_id"))).b(cursor.getString(cursor.getColumnIndex("moments_event_type"))).r()).q();
    }

    private cll a(Cursor cursor, String str) {
        if ("SPORTS".equals(str)) {
            return (cll) m.a(cursor.getBlob(cursor.getColumnIndex("moment_sports_events_value")), cll.a);
        }
        return null;
    }

    public x<d> a(Cursor cursor) {
        n d = n.d();
        if (!cursor.moveToFirst()) {
            return x.a();
        }
        cll a;
        ab b = b(cursor);
        if (b.q != null) {
            a = a(cursor, b.q.c);
        } else {
            a = null;
        }
        r d2 = r.d();
        MomentPage momentPage = null;
        MomentPage momentPage2 = null;
        while (true) {
            MomentPage a2 = a(cursor, b);
            if (a2 != null) {
                if (a2.g() == MomentPageDisplayMode.a) {
                    momentPage2 = a2;
                } else if (a2.g() == MomentPageDisplayMode.c) {
                    momentPage = a2;
                } else {
                    d.c(a2);
                }
                d2.b(a2.h(), Long.valueOf(cursor.getLong(cursor.getColumnIndex("moments_pages_last_read_timestamp"))));
            }
            a2 = momentPage;
            if (cursor.moveToNext()) {
                momentPage = a2;
            } else {
                return x.a(new d(new c().a(b).a(momentPage2).a((List) d.q()).b(a2).a(a).a(), (Map) d2.q()));
            }
        }
    }
}
