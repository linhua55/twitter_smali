package com.twitter.android.interestpicker;

import java.util.List;

/* compiled from: Twttr */
public class ba extends h {
    public boolean e;
    public int f;

    protected ba(String str, long j, long j2, boolean z, List<h> list) {
        super(str, j, j2, list);
        this.f = 0;
        this.e = z;
    }

    public void b() {
        this.e = !this.e;
    }
}
