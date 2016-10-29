package defpackage;

import android.view.View;
import cll;
import clp;
import com.twitter.android.mx;
import com.twitter.util.aj;
import java.util.Collection;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aew */
public class aew {
    private final aer a;
    private cll b;

    public aew(aer aer) {
        this.a = aer;
    }

    public void a(cll cll) {
        if (cll.d.size() != 2) {
            this.a.a(1);
            return;
        }
        List list;
        if (this.b != null) {
            list = this.b.d;
        } else {
            list = null;
        }
        for (int i = 0; i < 2; i++) {
            clp clp;
            boolean z;
            int i2;
            if (list != null) {
                clp = (clp) list.get(i);
            } else {
                clp = null;
            }
            clp clp2 = (clp) cll.d.get(i);
            if (clp == null || clp.c.equals(clp2.c)) {
                z = false;
            } else {
                z = true;
            }
            if (i == 0) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            this.a.a(i2, clp2, z);
        }
        String str = cll.f;
        boolean z2 = true;
        switch (str.hashCode()) {
            case -2026635966:
                if (str.equals("DELAYED")) {
                    z2 = true;
                    break;
                }
                break;
            case 2337004:
                if (str.equals("LIVE")) {
                    z2 = false;
                    break;
                }
                break;
            case 659453081:
                if (str.equals("CANCELED")) {
                    z2 = true;
                    break;
                }
                break;
            case 1383663147:
                if (str.equals("COMPLETED")) {
                    z2 = true;
                    break;
                }
                break;
            case 1748463920:
                if (str.equals("UNDEFINED")) {
                    z2 = true;
                    break;
                }
                break;
            case 2089318684:
                if (str.equals("UPCOMING")) {
                    z2 = true;
                    break;
                }
                break;
        }
        switch (z2) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                this.a.a(true);
                break;
            default:
                this.a.a(false);
                break;
        }
        this.a.a(aj.a((CharSequence) "\n", cll.e));
        this.a.b(aew.a(cll.c, (clp) cll.d.get(0), (clp) cll.d.get(1)));
        this.a.a(2);
        this.b = cll;
    }

    private static int a(long j, clp clp, clp clp2) {
        if (clp.b.b == j) {
            return 0;
        }
        if (clp2.b.b == j) {
            return 1;
        }
        return -1;
    }

    public void a() {
        this.a.a(0);
    }

    public Collection<View> b() {
        return this.a.b();
    }
}
