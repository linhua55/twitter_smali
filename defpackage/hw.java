package defpackage;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xr;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xv;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import tv.periscope.android.library.p;

/* renamed from: hw */
public final class hw extends xs {
    private static volatile hw[] c;
    public Long a;
    public Long b;

    public hw() {
        c();
    }

    public static hw[] a() {
        if (c == null) {
            synchronized (xr.a) {
                if (c == null) {
                    c = new hw[0];
                }
            }
        }
        return c;
    }

    public hw a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_contentInsetRight /*8*/:
                    this.a = Long.valueOf(xmVar.e());
                    continue;
                case p.Toolbar_titleMarginBottom /*16*/:
                    this.b = Long.valueOf(xmVar.e());
                    continue;
                default:
                    if (!xv.a(xmVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.a != null) {
            com_google_android_gms_internal_zzsn.b(1, this.a.longValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.b(2, this.b.longValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.d(1, this.a.longValue());
        }
        return this.b != null ? b + zzsn.d(2, this.b.longValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public hw c() {
        this.a = null;
        this.b = null;
        this.S = -1;
        return this;
    }
}
