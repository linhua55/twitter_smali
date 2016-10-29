package defpackage;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xv;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* renamed from: hy */
public final class hy extends xs {
    public Long a;
    public String b;
    public byte[] c;

    public hy() {
        a();
    }

    public hy a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.S = -1;
        return this;
    }

    public hy a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_contentInsetRight /*8*/:
                    this.a = Long.valueOf(xmVar.e());
                    continue;
                case p.ActionBar_homeAsUpIndicator /*26*/:
                    this.b = xmVar.h();
                    continue;
                case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
                    this.c = xmVar.i();
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
            com_google_android_gms_internal_zzsn.a(3, this.b);
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(4, this.c);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.d(1, this.a.longValue());
        }
        if (this.b != null) {
            b += zzsn.b(3, this.b);
        }
        return this.c != null ? b + zzsn.b(4, this.c) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }
}
