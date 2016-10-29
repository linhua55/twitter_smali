package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class aq {
    public static final n<aq> a;
    public final List<String> b;
    public final String c;

    static {
        a = new at();
    }

    public aq(as asVar) {
        this.b = asVar.a;
        this.c = asVar.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aq aqVar = (aq) obj;
        if (ObjectUtils.a(this.b, aqVar.b) && ObjectUtils.a(this.c, aqVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.a(this.b) * 31) + ObjectUtils.b(this.c);
    }
}
