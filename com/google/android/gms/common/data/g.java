package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;

public abstract class g {
    protected final DataHolder a;
    protected int b;
    private int c;

    public g(DataHolder dataHolder, int i) {
        this.a = (DataHolder) bm.a(dataHolder);
        a(i);
    }

    protected String a(String str) {
        return this.a.a(str, this.b, this.c);
    }

    protected void a(int i) {
        boolean z = i >= 0 && i < this.a.g();
        bm.a(z);
        this.b = i;
        this.c = this.a.a(this.b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return bj.a(Integer.valueOf(gVar.b), Integer.valueOf(this.b)) && bj.a(Integer.valueOf(gVar.c), Integer.valueOf(this.c)) && gVar.a == this.a;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.b), Integer.valueOf(this.c), this.a);
    }
}
