package defpackage;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
/* renamed from: cuy */
public final class cuy {
    final cva a;
    final /* synthetic */ cuw b;
    private boolean c;

    cuy(cuw cuw, cva cva) {
        this.b = cuw;
        this.a = cva;
    }

    public OutputStream a(int i) throws IOException {
        OutputStream cuz;
        synchronized (this.b) {
            if (this.a.b() != this) {
                throw new IllegalStateException();
            }
            try {
                cuz = new cuz(new FileOutputStream(this.a.b(i)), null);
            } catch (Throwable th) {
                this.c = true;
            }
        }
        return cuz;
    }

    public boolean a() {
        return this.c;
    }

    public void b() throws IOException {
        if (this.c) {
            this.b.a(this, false);
            this.b.c(this.a.a);
            return;
        }
        this.b.a(this, true);
    }

    public void c() throws IOException {
        this.b.a(this, false);
    }
}
