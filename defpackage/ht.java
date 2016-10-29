package defpackage;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xv;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import tv.periscope.android.library.p;

/* renamed from: ht */
public final class ht extends xs {
    public String a;

    public ht() {
        a();
    }

    public ht a() {
        this.a = "";
        this.S = -1;
        return this;
    }

    public ht a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    this.a = xmVar.h();
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
        if (!this.a.equals("")) {
            com_google_android_gms_internal_zzsn.a(1, this.a);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        return !this.a.equals("") ? b + zzsn.b(1, this.a) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }
}
