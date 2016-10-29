package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.provider.ar;
import com.twitter.library.service.o;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: bew */
public class bew extends o {
    private static final int[] i;
    public String a;
    public int b;
    public boolean c;
    public boolean g;
    private int j;
    private int k;
    private ar l;

    static {
        i = new int[]{1, 2, 3, 4};
    }

    public bew(Context context, Session session) {
        super(context, bew.class.getName(), session, i);
        this.j = 0;
        this.k = 0;
        this.l = ar.a(this.h);
    }

    public bew a(int i) {
        this.j = cne.a(this.j, i);
        return this;
    }

    public bew c(int i) {
        this.k = cne.a(this.k, i);
        return this;
    }

    protected void a() {
        String str = h().e;
        switch (u()) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(this.a);
            case WireMessage.WIRE_CONTROL /*2*/:
                a(str, this.b, this.c);
            case WireMessage.WIRE_AUTH /*3*/:
                b(str);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (!e()) {
                    v();
                } else if (c(str)) {
                    int d = d(str);
                    int e = e(d);
                    if (d != e) {
                        a(str, e, this.c);
                    }
                } else {
                    v();
                    w.a(this.h, str).a(true);
                    if (this.g) {
                        b();
                    }
                }
            default:
                throw new IllegalArgumentException("Invalid action " + u());
        }
    }

    private int e(int i) {
        return (this.j | i) & (this.k ^ -1);
    }

    private void v() {
        String str = h().e;
        this.l.a(str, e(d(str)), e(), null);
    }

    protected void a(String str) {
        PushRegistration.b(this.h, str);
    }

    protected void a(String str, int i, boolean z) {
        PushRegistration.a(this.h, str, i, z);
    }

    protected void b(String str) {
        PushRegistration.f(this.h, str);
    }

    protected void b() {
        PushRegistration.d(this.h);
    }

    protected boolean e() {
        return PushRegistration.c(this.h);
    }

    protected boolean c(String str) {
        return PushRegistration.d(this.h, str);
    }

    protected int d(String str) {
        return PushRegistration.a(this.h, str);
    }
}
