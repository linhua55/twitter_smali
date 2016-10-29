package tv.periscope.chatman.model;

import java.util.Collection;

/* compiled from: Twttr */
final class g extends r {
    private final Collection<q> a;
    private final long b;
    private final String c;
    private final String d;

    private g(Collection<q> collection, long j, String str, String str2) {
        if (collection == null) {
            throw new NullPointerException("Null messages");
        }
        this.a = collection;
        this.b = j;
        if (str == null) {
            throw new NullPointerException("Null prevCursor");
        }
        this.c = str;
        if (str2 == null) {
            throw new NullPointerException("Null cursor");
        }
        this.d = str2;
    }

    public Collection<q> a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String toString() {
        return "History{messages=" + this.a + ", " + "since=" + this.b + ", " + "prevCursor=" + this.c + ", " + "cursor=" + this.d + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.a.equals(rVar.a()) && this.b == rVar.b() && this.c.equals(rVar.c()) && this.d.equals(rVar.d())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((int) (((long) ((this.a.hashCode() ^ 1000003) * 1000003)) ^ ((this.b >>> 32) ^ this.b))) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }
}
