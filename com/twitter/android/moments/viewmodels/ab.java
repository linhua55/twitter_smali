package com.twitter.android.moments.viewmodels;

import com.twitter.android.moments.viewmodels.MomentModule.Type;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.e;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class ab extends MomentModule implements e {
    public final Size a;
    public final k b;

    public ab(ac acVar) {
        super(acVar);
        this.a = acVar.a;
        this.b = acVar.b;
    }

    public k c() {
        return this.b;
    }

    public Type a() {
        return Type.VIDEO;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ab abVar = (ab) obj;
        if (b().b == abVar.b().b && this.d.equals(abVar.d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Long.valueOf(b().b), this.d});
    }
}
