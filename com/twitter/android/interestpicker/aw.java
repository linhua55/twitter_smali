package com.twitter.android.interestpicker;

import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class aw extends h {
    public static final az e;
    public final int f;
    public boolean g;
    public boolean h;
    public final boolean i;
    public final String j;

    static {
        e = new az();
    }

    public aw(String str, long j, int i, boolean z, boolean z2, long j2, String str2, List<h> list, boolean z3) {
        super(str, j, j2, list);
        this.f = i;
        this.g = z;
        this.h = z2;
        this.j = str2;
        this.i = z3;
    }

    private aw(ay ayVar) {
        super(ayVar);
        this.f = ayVar.e;
        this.g = ayVar.f;
        this.h = ayVar.g;
        this.j = (String) e.a(ayVar.h);
        this.i = ayVar.i;
    }

    public void b() {
        this.g = !this.g;
        this.h |= this.g;
    }

    public static aw a(String str) {
        return (aw) ((ay) new ay().a(str)).a(2).a(true).q();
    }
}
