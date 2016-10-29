package com.twitter.model.moments.viewmodels;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class i implements Iterable<MomentPage> {
    public final List<MomentPage> a;

    public i(List<MomentPage> list) {
        h.b(!list.isEmpty());
        this.a = list;
    }

    public MomentPage a() {
        return (MomentPage) e.a(CollectionUtils.b(this.a));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        return ObjectUtils.a(this.a, ((i) obj).a);
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a});
    }

    public Iterator<MomentPage> iterator() {
        return this.a.iterator();
    }
}
