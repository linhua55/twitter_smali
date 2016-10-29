package tv.periscope.chatman.model;

import java.util.Collection;

/* compiled from: Twttr */
final class i extends s {
    private Collection<q> a;
    private Long b;
    private String c;
    private String d;

    i() {
    }

    public s a(Collection<q> collection) {
        this.a = collection;
        return this;
    }

    public s a(long j) {
        this.b = Long.valueOf(j);
        return this;
    }

    public s a(String str) {
        this.c = str;
        return this;
    }

    public s b(String str) {
        this.d = str;
        return this;
    }

    public r a() {
        String str = "";
        if (this.a == null) {
            str = str + " messages";
        }
        if (this.b == null) {
            str = str + " since";
        }
        if (this.c == null) {
            str = str + " prevCursor";
        }
        if (this.d == null) {
            str = str + " cursor";
        }
        if (str.isEmpty()) {
            return new g(this.a, this.b.longValue(), this.c, this.d, null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
