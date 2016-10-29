package com.twitter.model.dms;

import com.twitter.util.collection.ar;
import com.twitter.util.collection.r;
import cto;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class k {
    public static final k a;
    private final Map<Long, Iterable<ReadReceiptParticipant>> b;
    private final long c;

    static {
        a = new k(r.e(), 0);
    }

    public k(Map<Long, Iterable<ReadReceiptParticipant>> map, long j) {
        this.b = map;
        this.c = j;
    }

    public long a() {
        return this.c;
    }

    public Set<String> a(long j, long j2, long j3) {
        ar d = ar.d();
        for (ReadReceiptParticipant readReceiptParticipant : cto.a(this.b.values())) {
            if (readReceiptParticipant.b != j && readReceiptParticipant.a(j2, j3)) {
                d.c(readReceiptParticipant.e);
            }
        }
        return ar.a(String.CASE_INSENSITIVE_ORDER, (Set) d.q());
    }
}
