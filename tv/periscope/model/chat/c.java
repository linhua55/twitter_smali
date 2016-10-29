package tv.periscope.model.chat;

import java.math.BigInteger;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.SentenceType;
import tv.periscope.model.chat.MessageType.VerdictType;

/* compiled from: Twttr */
final class c extends d {
    private String A;
    private String B;
    private String C;
    private VerdictType D;
    private String E;
    private Integer F;
    private SentenceType G;
    private Integer H;
    private String I;
    private Integer a;
    private MessageType b;
    private String c;
    private Integer d;
    private BigInteger e;
    private String f;
    private Long g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private Double n;
    private Double o;
    private Double p;
    private Integer q;
    private String r;
    private String s;
    private String t;
    private BigInteger u;
    private String v;
    private String w;
    private String x;
    private String y;
    private ReportType z;

    c() {
    }

    public d a(Integer num) {
        this.a = num;
        return this;
    }

    public d a(MessageType messageType) {
        this.b = messageType;
        return this;
    }

    public d a(String str) {
        this.c = str;
        return this;
    }

    public d b(Integer num) {
        this.d = num;
        return this;
    }

    public d a(BigInteger bigInteger) {
        this.e = bigInteger;
        return this;
    }

    public d b(String str) {
        this.f = str;
        return this;
    }

    public d a(Long l) {
        this.g = l;
        return this;
    }

    public d c(String str) {
        this.i = str;
        return this;
    }

    public d d(String str) {
        this.j = str;
        return this;
    }

    public d e(String str) {
        this.k = str;
        return this;
    }

    public d f(String str) {
        this.l = str;
        return this;
    }

    public d g(String str) {
        this.m = str;
        return this;
    }

    public d a(Double d) {
        this.n = d;
        return this;
    }

    public d b(Double d) {
        this.o = d;
        return this;
    }

    public d c(Double d) {
        this.p = d;
        return this;
    }

    public d c(Integer num) {
        this.q = num;
        return this;
    }

    public d h(String str) {
        this.r = str;
        return this;
    }

    public d i(String str) {
        this.s = str;
        return this;
    }

    public d j(String str) {
        this.t = str;
        return this;
    }

    public d b(BigInteger bigInteger) {
        this.u = bigInteger;
        return this;
    }

    public d k(String str) {
        this.v = str;
        return this;
    }

    public d l(String str) {
        this.w = str;
        return this;
    }

    public d m(String str) {
        this.x = str;
        return this;
    }

    public d n(String str) {
        this.y = str;
        return this;
    }

    public d a(ReportType reportType) {
        this.z = reportType;
        return this;
    }

    public d o(String str) {
        this.A = str;
        return this;
    }

    public d p(String str) {
        this.B = str;
        return this;
    }

    public d a(VerdictType verdictType) {
        this.D = verdictType;
        return this;
    }

    public d q(String str) {
        this.E = str;
        return this;
    }

    public d d(Integer num) {
        this.F = num;
        return this;
    }

    public d a(SentenceType sentenceType) {
        this.G = sentenceType;
        return this;
    }

    public d e(Integer num) {
        this.H = num;
        return this;
    }

    public d r(String str) {
        this.I = str;
        return this;
    }

    public Message a() {
        String str = "";
        if (this.a == null) {
            str = str + " version";
        }
        if (this.b == null) {
            str = str + " type";
        }
        if (str.isEmpty()) {
            return new AutoValue_Message(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.I, null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
