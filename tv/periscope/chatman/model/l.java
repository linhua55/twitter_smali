package tv.periscope.chatman.model;

/* compiled from: Twttr */
final class l extends t {
    private Integer a;
    private Integer b;

    l() {
    }

    public t a(int i) {
        this.a = Integer.valueOf(i);
        return this;
    }

    public t b(int i) {
        this.b = Integer.valueOf(i);
        return this;
    }

    public Presence a() {
        String str = "";
        if (this.a == null) {
            str = str + " occupancy";
        }
        if (this.b == null) {
            str = str + " totalParticipants";
        }
        if (str.isEmpty()) {
            return new j(this.b.intValue(), null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
