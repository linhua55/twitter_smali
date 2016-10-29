package tv.periscope.chatman.model;

/* compiled from: Twttr */
final class b extends a {
    private final String a;
    private final String b;

    b(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null endpoint");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null accessToken");
        }
        this.b = str2;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String toString() {
        return "AccessPoint{endpoint=" + this.a + ", " + "accessToken=" + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.a.equals(aVar.a()) && this.b.equals(aVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }
}
