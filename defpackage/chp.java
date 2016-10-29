package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: chp */
public final class chp extends f<cho> {
    long a;
    String b;
    String c;
    String d;
    int e;
    List<TwitterUser> f;
    boolean g;

    protected /* synthetic */ Object c() {
        return d();
    }

    public chp a(long j) {
        this.a = j;
        return this;
    }

    public chp a(String str) {
        this.b = str;
        return this;
    }

    public chp b(String str) {
        this.c = str;
        return this;
    }

    public chp c(String str) {
        this.d = str;
        return this;
    }

    public chp a(int i) {
        this.e = i;
        return this;
    }

    public chp a(boolean z) {
        this.g = z;
        return this;
    }

    public chp a(List<TwitterUser> list) {
        this.f = list;
        return this;
    }

    protected cho d() {
        return new cho(this);
    }
}
