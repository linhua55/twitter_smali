package tv.periscope.model;

/* compiled from: Twttr */
final class m extends aa {
    private final long a;
    private final int b;
    private final int c;

    m(long j, int i, int i2) {
        this.a = j;
        this.b = i;
        this.c = i2;
    }

    public long a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public String toString() {
        return "Meta{watchedTime=" + this.a + ", " + "numWatched=" + this.b + ", " + "lostBeforeEnd=" + this.c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aa)) {
            return false;
        }
        aa aaVar = (aa) obj;
        if (this.a == aaVar.a() && this.b == aaVar.b() && this.c == aaVar.c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((int) (((long) 1000003) ^ ((this.a >>> 32) ^ this.a))) * 1000003) ^ this.b) * 1000003) ^ this.c;
    }
}
