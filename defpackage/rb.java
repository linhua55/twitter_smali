package defpackage;

import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.a;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.b;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.c;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.e;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: rb */
public final class rb extends c {
    private static volatile rb[] g;
    public String a;
    public String b;
    public String[] c;
    public String d;
    public boolean e;
    public String f;

    public /* synthetic */ c b(a aVar) throws IOException {
        return a(aVar);
    }

    public static rb[] a() {
        if (g == null) {
            synchronized (b.a) {
                if (g == null) {
                    g = new rb[0];
                }
            }
        }
        return g;
    }

    public rb() {
        b();
    }

    public rb b() {
        this.a = "";
        this.b = "";
        this.c = e.f;
        this.d = "";
        this.e = false;
        this.f = "";
        this.F = -1;
        return this;
    }

    public rb a(a aVar) throws IOException {
        while (true) {
            int a = aVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    this.a = aVar.e();
                    continue;
                case p.Toolbar_collapseIcon /*18*/:
                    this.b = aVar.e();
                    continue;
                case p.ActionBar_homeAsUpIndicator /*26*/:
                    int b = e.b(aVar, 26);
                    a = this.c == null ? 0 : this.c.length;
                    Object obj = new String[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = aVar.e();
                        aVar.a();
                        a++;
                    }
                    obj[a] = aVar.e();
                    this.c = obj;
                    continue;
                case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
                    this.d = aVar.e();
                    continue;
                case cse.AppCompatTheme_dialogTheme /*42*/:
                    this.f = aVar.e();
                    continue;
                case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
                    this.e = aVar.d();
                    continue;
                default:
                    if (!e.a(aVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }
}
