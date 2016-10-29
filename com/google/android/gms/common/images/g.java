package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.bj;
import java.lang.ref.WeakReference;

public final class g extends e {
    private WeakReference<a> e;

    protected void a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        if (!z2) {
            a aVar = (a) this.e.get();
            if (aVar != null) {
                aVar.a(this.a.a, drawable, z3);
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        g gVar = (g) obj;
        a aVar = (a) this.e.get();
        a aVar2 = (a) gVar.e.get();
        boolean z = aVar2 != null && aVar != null && bj.a(aVar2, aVar) && bj.a(gVar.a, this.a);
        return z;
    }

    public int hashCode() {
        return bj.a(this.a);
    }
}
