package tv.periscope.model;

import java.util.ArrayList;

/* compiled from: Twttr */
final class c extends q {
    private Long a;
    private Long b;
    private String c;
    private String d;
    private z e;
    private Long f;
    private Boolean g;
    private String h;
    private String i;
    private String j;
    private Long k;
    private Long l;
    private Double m;
    private Double n;
    private String o;
    private Boolean p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private Boolean v;
    private ArrayList<String> w;
    private ArrayList<String> x;
    private ArrayList<String> y;

    c() {
    }

    public q a(long j) {
        this.a = Long.valueOf(j);
        return this;
    }

    public q b(long j) {
        this.b = Long.valueOf(j);
        return this;
    }

    public q a(String str) {
        this.c = str;
        return this;
    }

    public q b(String str) {
        this.d = str;
        return this;
    }

    public q a(z zVar) {
        this.e = zVar;
        return this;
    }

    public q c(long j) {
        this.f = Long.valueOf(j);
        return this;
    }

    public q a(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    public q c(String str) {
        this.h = str;
        return this;
    }

    public q d(String str) {
        this.i = str;
        return this;
    }

    public q e(String str) {
        this.j = str;
        return this;
    }

    public q d(long j) {
        this.k = Long.valueOf(j);
        return this;
    }

    public q e(long j) {
        this.l = Long.valueOf(j);
        return this;
    }

    public q a(double d) {
        this.m = Double.valueOf(d);
        return this;
    }

    public q b(double d) {
        this.n = Double.valueOf(d);
        return this;
    }

    public q f(String str) {
        this.o = str;
        return this;
    }

    public q b(boolean z) {
        this.p = Boolean.valueOf(z);
        return this;
    }

    public q g(String str) {
        this.q = str;
        return this;
    }

    public q h(String str) {
        this.r = str;
        return this;
    }

    public q i(String str) {
        this.s = str;
        return this;
    }

    public q j(String str) {
        this.t = str;
        return this;
    }

    public q k(String str) {
        this.u = str;
        return this;
    }

    public q c(boolean z) {
        this.v = Boolean.valueOf(z);
        return this;
    }

    public q a(ArrayList<String> arrayList) {
        this.w = arrayList;
        return this;
    }

    public q b(ArrayList<String> arrayList) {
        this.x = arrayList;
        return this;
    }

    public q c(ArrayList<String> arrayList) {
        this.y = arrayList;
        return this;
    }

    public p a() {
        String str = "";
        if (this.a == null) {
            str = str + " timedOutTime";
        }
        if (this.b == null) {
            str = str + " pingTime";
        }
        if (this.c == null) {
            str = str + " id";
        }
        if (this.e == null) {
            str = str + " location";
        }
        if (this.f == null) {
            str = str + " createdAtMillis";
        }
        if (this.g == null) {
            str = str + " featured";
        }
        if (this.k == null) {
            str = str + " sortScore";
        }
        if (this.l == null) {
            str = str + " startTimeMillis";
        }
        if (this.m == null) {
            str = str + " ipLat";
        }
        if (this.n == null) {
            str = str + " ipLong";
        }
        if (this.o == null) {
            str = str + " userId";
        }
        if (this.p == null) {
            str = str + " locked";
        }
        if (this.s == null) {
            str = str + " userDisplayName";
        }
        if (this.v == null) {
            str = str + " hasLocation";
        }
        if (str.isEmpty()) {
            Long l = this.k;
            Long l2 = this.l;
            Double d = this.m;
            Double d2 = this.n;
            String str2 = this.o;
            Boolean bool = this.p;
            String str3 = this.q;
            String str4 = this.r;
            String str5 = this.s;
            String str6 = this.t;
            String str7 = this.u;
            Boolean bool2 = this.v;
            return new a(this.a.longValue(), this.b.longValue(), this.c, this.d, this.e, this.f.longValue(), this.g.booleanValue(), this.h, this.i, this.j, r0.longValue(), r0.longValue(), r0.doubleValue(), r0.doubleValue(), r0, r0.booleanValue(), r0, r0, r0, r0, r0, r0.booleanValue(), this.w, this.x, this.y, null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
