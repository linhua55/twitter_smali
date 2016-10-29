package tv.periscope.chatman.model;

/* compiled from: Twttr */
final class j extends Presence {
    private final int a;
    private final int b;

    private j(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String toString() {
        return "Presence{occupancy=" + this.a + ", " + "totalParticipants=" + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Presence)) {
            return false;
        }
        Presence presence = (Presence) obj;
        if (this.a == presence.a() && this.b == presence.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.a ^ 1000003) * 1000003) ^ this.b;
    }
}
