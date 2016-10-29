package tv.periscope.model;

/* compiled from: Twttr */
final class d extends r {
    private final p a;
    private final aa b;

    d(p pVar, aa aaVar) {
        if (pVar == null) {
            throw new NullPointerException("Null broadcast");
        }
        this.a = pVar;
        if (aaVar == null) {
            throw new NullPointerException("Null meta");
        }
        this.b = aaVar;
    }

    public p a() {
        return this.a;
    }

    public aa b() {
        return this.b;
    }

    public String toString() {
        return "BroadcastSummary{broadcast=" + this.a + ", " + "meta=" + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.a.equals(rVar.a()) && this.b.equals(rVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }
}
