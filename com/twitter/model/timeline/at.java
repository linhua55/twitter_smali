package com.twitter.model.timeline;

import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
public class at extends av implements az {
    public final List<av> a;

    public at(au auVar, int i) {
        super(auVar, i);
        this.a = auVar.a;
    }

    public List<cm> c() {
        n d = n.d();
        for (av avVar : this.a) {
            if (avVar instanceof bw) {
                d.c(((bw) ObjectUtils.a(avVar)).a);
            }
        }
        return (List) d.q();
    }
}
