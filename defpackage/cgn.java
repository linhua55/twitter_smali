package defpackage;

import cgh;
import cgl;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cgn */
public class cgn extends f<cgl> {
    public String a;
    public String b;
    public Map<String, cgh> c;
    public Map<String, TwitterUser> d;
    public String e;
    public String f;

    public cgn() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
        this.c = r.e();
        this.d = r.e();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cgn a(String str) {
        this.a = str;
        return this;
    }

    public cgn b(String str) {
        this.b = str;
        return this;
    }

    public cgn a(Map<String, cgh> map) {
        this.c = map;
        return this;
    }

    public cgn b(Map<String, TwitterUser> map) {
        this.d = map;
        return this;
    }

    public cgn c(String str) {
        this.e = str;
        return this;
    }

    public cgn d(String str) {
        this.f = str;
        return this;
    }

    protected cgl d() {
        return new cgl(this.a, this.b, this.d, this.e, this.f, this.c, null);
    }
}
