package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class ag {
    public static final n<ag> a;
    public final i b;
    public final List<an> c;
    private final boolean d;

    static {
        a = new ai();
    }

    public ag(i iVar, List<an> list, boolean z) {
        this.b = iVar;
        this.c = list;
        this.d = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ag agVar = (ag) obj;
        if (ObjectUtils.a(this.b, agVar.b) && ObjectUtils.a(this.c, agVar.c) && this.d == agVar.d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.b) * 31) + ObjectUtils.a(this.c)) * 31) + ObjectUtils.a(this.d);
    }
}
