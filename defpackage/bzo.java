package defpackage;

import android.support.annotation.IntRange;

/* compiled from: Twttr */
/* renamed from: bzo */
public class bzo implements bzm {
    private final int a;

    public bzo(@IntRange(from = 1, to = 100) int i) {
        this.a = i;
    }

    public boolean a(bzk bzk, bzp bzp, bzn bzn) {
        return bzn.a() < this.a;
    }

    public String toString() {
        return String.format("%s={ limit=%d }", new Object[]{bzo.class.getSimpleName(), Integer.valueOf(this.a)});
    }
}
