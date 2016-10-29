package com.twitter.android.timeline;

import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.e;
import java.util.List;

/* compiled from: Twttr */
public class h extends aw {
    public final e a;

    public h(ar arVar, long j, aj ajVar, e eVar) {
        super(arVar, j, ajVar);
        this.a = eVar;
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        if (this.a != null) {
            list.add(Long.valueOf(this.a.b));
        }
    }
}
