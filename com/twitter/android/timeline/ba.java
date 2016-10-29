package com.twitter.android.timeline;

import com.twitter.model.moments.as;
import com.twitter.model.timeline.aj;
import java.util.List;

/* compiled from: Twttr */
public class ba extends aw {
    public final as a;
    public final long b;

    public ba(ar arVar, long j, as asVar, aj ajVar, long j2) {
        super(arVar, j, ajVar);
        this.a = asVar;
        this.b = j2;
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        list3.add(Long.valueOf(this.a.b.b));
    }
}
