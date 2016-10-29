package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

class v extends j {
    List<j> p;

    v(List<j> list) {
        this.p = list;
    }

    public j a(j jVar) {
        List arrayList = new ArrayList(this.p);
        arrayList.add(bm.a(jVar));
        return new v(arrayList);
    }

    public boolean b(char c) {
        for (j b : this.p) {
            if (b.b(c)) {
                return true;
            }
        }
        return false;
    }
}
