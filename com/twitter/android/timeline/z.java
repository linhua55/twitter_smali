package com.twitter.android.timeline;

import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.w;
import com.twitter.model.timeline.y;
import java.util.List;

/* compiled from: Twttr */
public class z extends aw {
    public final bb a;
    public final w b;

    public z(ar arVar, long j, aj ajVar, bb bbVar, w wVar) {
        super(arVar, j, ajVar);
        this.a = bbVar;
        if (wVar == null) {
            wVar = (w) new y().q();
        }
        this.b = wVar;
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        if (this.a != null) {
            list.add(Long.valueOf(this.a.b.H));
        } else {
            list.addAll(this.b.d);
        }
    }
}
