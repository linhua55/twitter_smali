package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cfy */
public final class cfy extends f<cfx> {
    private long a;
    private long b;
    private long c;
    private cfr d;
    private String e;
    private String f;
    private String g;
    private List<TwitterUser> h;
    private List<cm> i;
    private List<TwitterUser> j;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cfy a(long j) {
        this.a = j;
        return this;
    }

    public cfy b(long j) {
        this.b = j;
        return this;
    }

    public cfy c(long j) {
        this.c = j;
        return this;
    }

    public cfy a(cfr cfr) {
        this.d = cfr;
        return this;
    }

    public cfy a(String str) {
        this.e = str;
        return this;
    }

    public cfy b(String str) {
        this.f = str;
        return this;
    }

    public cfy c(String str) {
        this.g = str;
        return this;
    }

    public cfy a(List<TwitterUser> list) {
        this.h = list;
        return this;
    }

    public cfy b(List<cm> list) {
        this.i = list;
        return this;
    }

    public cfy c(List<TwitterUser> list) {
        this.j = list;
        return this;
    }

    public boolean bo_() {
        return (this.d == null || this.f == null || this.g == null || this.h == null) ? false : true;
    }

    protected cfx d() {
        return new cfx(this);
    }
}
