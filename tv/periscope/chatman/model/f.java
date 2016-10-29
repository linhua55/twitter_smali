package tv.periscope.chatman.model;

import tv.periscope.chatman.api.Sender;

/* compiled from: Twttr */
final class f extends q {
    private final String a;
    private final String b;
    private final Sender c;
    private final long d;
    private final String e;

    f(String str, String str2, Sender sender, long j, String str3) {
        if (str == null) {
            throw new NullPointerException("Null room");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null body");
        }
        this.b = str2;
        if (sender == null) {
            throw new NullPointerException("Null sender");
        }
        this.c = sender;
        this.d = j;
        if (str3 == null) {
            throw new NullPointerException("Null wireJson");
        }
        this.e = str3;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public Sender c() {
        return this.c;
    }

    public long d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String toString() {
        return "Chat{room=" + this.a + ", " + "body=" + this.b + ", " + "sender=" + this.c + ", " + "timestamp=" + this.d + ", " + "wireJson=" + this.e + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.a.equals(qVar.a()) && this.b.equals(qVar.b()) && this.c.equals(qVar.c()) && this.d == qVar.d() && this.e.equals(qVar.e())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) (((long) ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003)) ^ ((this.d >>> 32) ^ this.d))) * 1000003) ^ this.e.hashCode();
    }
}
