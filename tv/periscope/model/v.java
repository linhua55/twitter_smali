package tv.periscope.model;

import defpackage.op;
import java.net.HttpCookie;

/* compiled from: Twttr */
public class v {
    @op(a = "Name")
    public String a;
    @op(a = "Value")
    public String b;
    @op(a = "Path")
    public String c;
    @op(a = "Domain")
    public String d;

    public HttpCookie a() {
        HttpCookie httpCookie = new HttpCookie(this.a, this.b);
        httpCookie.setPath(this.c);
        httpCookie.setDomain(this.d);
        httpCookie.setVersion(0);
        return httpCookie;
    }
}
