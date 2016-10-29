package defpackage;

import cno;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cnp */
public final class cnp extends f<cno> {
    private long a;
    private String b;
    private List<Long> c;
    private String d;
    private long e;
    private long f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cnp a(long j) {
        this.a = j;
        return this;
    }

    public cnp a(String str) {
        this.b = str;
        return this;
    }

    public cnp a(List<Long> list) {
        this.c = list;
        return this;
    }

    public cnp b(String str) {
        this.d = str;
        return this;
    }

    public cnp b(long j) {
        this.e = j;
        return this;
    }

    public cnp c(long j) {
        this.f = j;
        return this;
    }

    public boolean bo_() {
        if ("tweet".equals(this.b) && CollectionUtils.c(this.c) == 1 && this.a != 0) {
            return true;
        }
        return "carousel".equals(this.b) && CollectionUtils.c(this.c) > 0;
    }

    protected cno d() {
        return new cno(this);
    }
}
