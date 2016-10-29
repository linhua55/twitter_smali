package com.twitter.android.moments.viewmodels;

import com.twitter.android.moments.viewmodels.MomentModule.Type;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.e;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class d extends MomentModule implements e {
    public final Size a;
    public final String b;
    public final k c;

    public d(e eVar) {
        super(eVar);
        this.a = eVar.a;
        this.b = eVar.b;
        this.c = eVar.c;
    }

    public Type a() {
        return Type.IMAGE;
    }

    public k c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (b().b == dVar.b().b && ObjectUtils.a(this.b, dVar.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Long.valueOf(b().b), this.b});
    }
}
