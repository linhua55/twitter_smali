package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.bj;

final class f {
    public final Uri a;

    public f(Uri uri) {
        this.a = uri;
    }

    public boolean equals(Object obj) {
        return !(obj instanceof f) ? false : this == obj ? true : bj.a(((f) obj).a, this.a);
    }

    public int hashCode() {
        return bj.a(this.a);
    }
}
