package com.twitter.android.revenue;

import com.twitter.model.core.Tweet;
import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.object.ObjectUtils;
import java.util.Set;

/* compiled from: Twttr */
public class ae extends a {
    public final Tweet f;

    private ae(ag agVar) {
        super(agVar);
        this.f = agVar.a;
    }

    public Set<String> e() {
        return ImmutableSet.a(this.f.f != null ? this.f.f.l : null);
    }

    public String f() {
        return "tweet";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ae aeVar = (ae) obj;
        if (ObjectUtils.a(this.f, aeVar.f) && ObjectUtils.a(Long.valueOf(this.c), Long.valueOf(aeVar.c))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.f, Long.valueOf(this.c)});
    }
}
