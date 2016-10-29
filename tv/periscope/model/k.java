package tv.periscope.model;

/* compiled from: Twttr */
final class k extends y {
    private final long a;
    private final int b;

    k(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public long a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String toString() {
        return "FaderKey{itemId=" + this.a + ", " + "mergeCount=" + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (this.a == yVar.a() && this.b == yVar.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) (((long) 1000003) ^ ((this.a >>> 32) ^ this.a))) * 1000003) ^ this.b;
    }
}
