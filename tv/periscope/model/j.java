package tv.periscope.model;

/* compiled from: Twttr */
final class j extends x {
    private final String a;

    j(String str) {
        if (str == null) {
            throw new NullPointerException("Null broadcastId");
        }
        this.a = str;
    }

    public String a() {
        return this.a;
    }

    public String toString() {
        return "DeletedBroadcast{broadcastId=" + this.a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        return this.a.equals(((x) obj).a());
    }

    public int hashCode() {
        return 1000003 ^ this.a.hashCode();
    }
}
