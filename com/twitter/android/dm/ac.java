package com.twitter.android.dm;

import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import bgv;
import cgu;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.ReadReceiptParticipant;
import com.twitter.model.dms.k;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import cto;
import defpackage.bie;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public class ac {
    private Map<Long, Iterable<ReadReceiptParticipant>> a;
    private List<Participant> b;
    private Map<Long, String> c;
    private long d;
    private final long e;

    public ac(long j) {
        this.a = r.e();
        this.b = n.g();
        this.c = r.e();
        this.e = j;
    }

    public boolean a(List<Participant> list) {
        this.b = list;
        return c();
    }

    public boolean b(List<TwitterUser> list) {
        Map c = c(list);
        if (this.c.equals(c)) {
            return false;
        }
        this.c = c;
        return c();
    }

    public boolean a(cgu<Cursor> cgu_android_database_Cursor) {
        if (cgu_android_database_Cursor.g() || this.b.isEmpty()) {
            return false;
        }
        long b = b((cgu) cgu_android_database_Cursor);
        if (b <= this.d) {
            return false;
        }
        this.d = b;
        return c();
    }

    public boolean a(Bundle bundle) {
        this.b = e.a(bundle.getParcelableArrayList("state_participants"));
        this.c = e.a((Map) ObjectUtils.a(bundle.getSerializable("state_participant_display_names")));
        this.d = bundle.getLong("state_newest_fully_read_message_id");
        return c();
    }

    public k a() {
        if (CollectionUtils.b(this.a) || this.d == 0) {
            return k.a;
        }
        return new k(this.a, this.d);
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("state_participants", new ArrayList(this.b));
        bundle.putSerializable("state_participant_display_names", CollectionUtils.c(this.c));
        bundle.putLong("state_newest_fully_read_message_id", this.d);
        return bundle;
    }

    @VisibleForTesting
    boolean c() {
        if (this.b.isEmpty() || this.c.isEmpty() || this.d == 0) {
            this.a = r.e();
            return false;
        }
        r d = r.d();
        for (Entry entry : d().entrySet()) {
            long longValue = ((Long) entry.getKey()).longValue();
            d.b(Long.valueOf(longValue), cto.a((Iterable) entry.getValue(), new ad(this)));
        }
        this.a = (Map) d.q();
        return true;
    }

    @VisibleForTesting
    Map<Long, Set<Participant>> d() {
        Map<Long, Set<Participant>> hashMap = new HashMap();
        for (Participant participant : this.b) {
            long j = participant.d;
            if (!hashMap.containsKey(Long.valueOf(j))) {
                hashMap.put(Long.valueOf(j), new HashSet());
            }
            ((Set) hashMap.get(Long.valueOf(j))).add(participant);
        }
        return hashMap;
    }

    @VisibleForTesting
    static Map<Long, String> c(List<TwitterUser> list) {
        r a = r.a(list.size());
        for (TwitterUser twitterUser : list) {
            a.b(Long.valueOf(twitterUser.bf_()), twitterUser.c());
        }
        return (Map) a.q();
    }

    long b(cgu<Cursor> cgu_android_database_Cursor) {
        if (cgu_android_database_Cursor.g() || this.b.isEmpty()) {
            return 0;
        }
        long e = e();
        if (e == 0) {
            return 0;
        }
        Iterator it = cgu_android_database_Cursor.iterator();
        long j = 0;
        while (it.hasNext()) {
            bgv a = new bie((Cursor) it.next()).a();
            if (a.bf_() > e) {
                break;
            }
            long bf_;
            if (a.f() && a.b(this.e) && a(a)) {
                bf_ = a.bf_();
            } else {
                bf_ = j;
            }
            j = bf_;
        }
        return j;
    }

    @VisibleForTesting
    boolean a(bgv bgv) {
        if (this.b.isEmpty()) {
            return false;
        }
        Iterable a = cto.a(this.b, new ae(this, bgv));
        if (CollectionUtils.a(a) || cto.b(a, new af(this, bgv))) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    long e() {
        long j = PtsTimestampAdjuster.DO_NOT_OFFSET;
        for (Participant participant : this.b) {
            long j2;
            if (participant.c <= 0 || participant.d >= j) {
                j2 = j;
            } else {
                j2 = participant.d;
            }
            j = j2;
        }
        return j;
    }
}
