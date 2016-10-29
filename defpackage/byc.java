package defpackage;

import cjs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: byc */
public class byc extends aoq {
    public final int a;
    public final List<Long> b;
    public final long c;

    public byc(int i) {
        this.a = i;
        this.b = new ArrayList();
        this.c = 0;
    }

    public byc(int i, List<cjs> list, long j) {
        this.a = i;
        this.b = new ArrayList(list.size());
        for (cjs cjs : list) {
            this.b.add(Long.valueOf(cjs.b));
        }
        this.c = j;
    }

    public byc(int i, long j, long j2) {
        this.a = i;
        this.b = Collections.singletonList(Long.valueOf(j));
        this.c = j2;
    }
}
