package defpackage;

import beb;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.service.c;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: box */
public class box extends beb<as> {
    private final String a;
    private final String b;
    private final String c;
    private final String h;
    private final int i;
    private String j;

    protected /* synthetic */ c f() {
        return e();
    }

    private box(boz boz) {
        super(boz.a, box.class.getName(), boz.b);
        this.j = "create";
        this.i = boz.c;
        this.a = boz.d;
        this.b = boz.e;
        this.c = boz.f;
        this.h = boz.g;
        this.j = boz.h;
    }

    protected e b() {
        return K().a(RequestMethod.b).a("mobile", "settings/guest").a("udid", this.c).a("token", this.a).a("locale", this.b).a("app_version", (long) this.i).a("state", this.h).a("action", this.j);
    }

    protected as e() {
        return null;
    }
}
