package defpackage;

import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: ast */
public class ast {
    private long a;
    private boolean b;
    private final long c;

    ast(long j, long j2) {
        this.c = j;
        this.a = j2;
    }

    public boolean a() {
        return al.b() - this.a > this.c && !this.b;
    }

    public void b() {
        this.b = true;
    }

    public void a(boolean z) {
        if (z) {
            this.a = al.b();
        }
        this.b = false;
    }
}
