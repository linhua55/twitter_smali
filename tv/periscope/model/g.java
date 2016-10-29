package tv.periscope.model;

/* compiled from: Twttr */
final class g extends t {
    private String a;
    private String b;
    private String c;
    private Integer d;
    private Integer e;
    private Boolean f;
    private String g;

    g() {
    }

    public t a(String str) {
        this.a = str;
        return this;
    }

    public t b(String str) {
        this.b = str;
        return this;
    }

    public t c(String str) {
        this.c = str;
        return this;
    }

    public t a(int i) {
        this.d = Integer.valueOf(i);
        return this;
    }

    public t b(int i) {
        this.e = Integer.valueOf(i);
        return this;
    }

    public t a(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    public t d(String str) {
        this.g = str;
        return this;
    }

    public s a() {
        String str = "";
        if (this.a == null) {
            str = str + " channelId";
        }
        if (this.b == null) {
            str = str + " name";
        }
        if (this.c == null) {
            str = str + " description";
        }
        if (this.d == null) {
            str = str + " numberOfLiveStreams";
        }
        if (this.e == null) {
            str = str + " numberOfReplays";
        }
        if (this.f == null) {
            str = str + " featured";
        }
        if (this.g == null) {
            str = str + " publicTag";
        }
        if (str.isEmpty()) {
            return new e(this.b, this.c, this.d.intValue(), this.e.intValue(), this.f.booleanValue(), this.g, null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
