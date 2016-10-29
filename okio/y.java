package okio;

/* compiled from: Twttr */
final class y {
    final byte[] a;
    int b;
    int c;
    boolean d;
    boolean e;
    y f;
    y g;

    y() {
        this.a = new byte[2048];
        this.e = true;
        this.d = false;
    }

    y(y yVar) {
        this(yVar.a, yVar.b, yVar.c);
        yVar.d = true;
    }

    y(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.e = false;
        this.d = true;
    }

    public y a() {
        y yVar = this.f != this ? this.f : null;
        this.g.f = this.f;
        this.f.g = this.g;
        this.f = null;
        this.g = null;
        return yVar;
    }

    public y a(y yVar) {
        yVar.g = this;
        yVar.f = this.f;
        this.f.g = yVar;
        this.f = yVar;
        return yVar;
    }

    public y a(int i) {
        if (i <= 0 || i > this.c - this.b) {
            throw new IllegalArgumentException();
        }
        y yVar = new y(this);
        yVar.c = yVar.b + i;
        this.b += i;
        this.g.a(yVar);
        return yVar;
    }

    public void b() {
        if (this.g == this) {
            throw new IllegalStateException();
        } else if (this.g.e) {
            int i = this.c - this.b;
            if (i <= (this.g.d ? 0 : this.g.b) + (2048 - this.g.c)) {
                a(this.g, i);
                a();
                z.a(this);
            }
        }
    }

    public void a(y yVar, int i) {
        if (yVar.e) {
            if (yVar.c + i > 2048) {
                if (yVar.d) {
                    throw new IllegalArgumentException();
                } else if ((yVar.c + i) - yVar.b > 2048) {
                    throw new IllegalArgumentException();
                } else {
                    System.arraycopy(yVar.a, yVar.b, yVar.a, 0, yVar.c - yVar.b);
                    yVar.c -= yVar.b;
                    yVar.b = 0;
                }
            }
            System.arraycopy(this.a, this.b, yVar.a, yVar.c, i);
            yVar.c += i;
            this.b += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
