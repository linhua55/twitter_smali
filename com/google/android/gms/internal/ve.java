package com.google.android.gms.internal;

import com.google.android.gms.common.internal.bj;

public final class ve {
    public final int a;
    public final int b;

    public ve(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ve)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ve veVar = (ve) obj;
        return veVar.a == this.a && veVar.b == this.b;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.a), Integer.valueOf(this.b));
    }
}
