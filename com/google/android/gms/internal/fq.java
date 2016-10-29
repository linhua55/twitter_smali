package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@oi
class fq {
    private final String a;
    private final int b;
    private final List<fn> c;
    private final String d;

    public fq(String str, int i, List<fn> list, String str2) {
        this.a = str;
        this.b = i;
        if (list == null) {
            this.c = new ArrayList();
        } else {
            this.c = list;
        }
        this.d = str2;
    }

    public String a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public Iterable<fn> c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }
}
