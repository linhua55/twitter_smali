package defpackage;

import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: bv */
public final class bv {
    private final String a;
    private bw b;
    private bw c;
    private boolean d;

    private bv(String str) {
        this.b = new bw();
        this.c = this.b;
        this.d = false;
        this.a = (String) bx.a((Object) str);
    }

    public bv a(String str, @Nullable Object obj) {
        return b(str, obj);
    }

    public bv a(String str, boolean z) {
        return b(str, String.valueOf(z));
    }

    public bv a(String str, int i) {
        return b(str, String.valueOf(i));
    }

    public String toString() {
        boolean z = this.d;
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        StringBuilder append = new StringBuilder(32).append(this.a).append('{');
        String str2 = str;
        bw bwVar = this.b.c;
        while (bwVar != null) {
            if (!z || bwVar.b != null) {
                append.append(str2);
                str2 = ", ";
                if (bwVar.a != null) {
                    append.append(bwVar.a).append('=');
                }
                append.append(bwVar.b);
            }
            bwVar = bwVar.c;
        }
        return append.append('}').toString();
    }

    private bw a() {
        bw bwVar = new bw();
        this.c.c = bwVar;
        this.c = bwVar;
        return bwVar;
    }

    private bv b(String str, @Nullable Object obj) {
        bw a = a();
        a.b = obj;
        a.a = (String) bx.a((Object) str);
        return this;
    }
}
