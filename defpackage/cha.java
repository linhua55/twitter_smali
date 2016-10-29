package defpackage;

import cgu;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cha */
final class cha extends cgu<T> {
    final /* synthetic */ cgu a;
    final /* synthetic */ cgu b;
    private final int c;
    private final int d;

    cha(cgu cgu, cgu cgu2) {
        this.a = cgu;
        this.b = cgu2;
        this.c = this.a.aU_();
        this.d = this.b.aU_();
    }

    public int aU_() {
        return this.c + this.d;
    }

    public T a(int i) {
        if (i < this.c) {
            return this.a.a(i);
        }
        return this.b.a(i - this.c);
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
    }
}
