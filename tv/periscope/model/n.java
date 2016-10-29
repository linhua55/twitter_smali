package tv.periscope.model;

import java.util.List;

/* compiled from: Twttr */
final class n extends ab {
    private final String a;
    private final String b;
    private final List<p> c;

    n(String str, String str2, List<p> list) {
        if (str == null) {
            throw new NullPointerException("Null userId");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null username");
        }
        this.b = str2;
        if (list == null) {
            throw new NullPointerException("Null broadcasts");
        }
        this.c = list;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public List<p> c() {
        return this.c;
    }

    public String toString() {
        return "UserBroadcasts{userId=" + this.a + ", " + "username=" + this.b + ", " + "broadcasts=" + this.c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ab)) {
            return false;
        }
        ab abVar = (ab) obj;
        if (this.a.equals(abVar.a()) && this.b.equals(abVar.b()) && this.c.equals(abVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }
}
