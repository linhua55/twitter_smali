package defpackage;

import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.a;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.c;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.e;
import java.io.IOException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: rd */
public final class rd extends c {
    public rc[] a;

    public /* synthetic */ c b(a aVar) throws IOException {
        return a(aVar);
    }

    public rd() {
        a();
    }

    public rd a() {
        this.a = rc.a();
        this.F = -1;
        return this;
    }

    public rd a(a aVar) throws IOException {
        while (true) {
            int a = aVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    int b = e.b(aVar, 10);
                    if (this.a == null) {
                        a = 0;
                    } else {
                        a = this.a.length;
                    }
                    Object obj = new rc[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.a, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new rc();
                        aVar.a(obj[a]);
                        aVar.a();
                        a++;
                    }
                    obj[a] = new rc();
                    aVar.a(obj[a]);
                    this.a = obj;
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
