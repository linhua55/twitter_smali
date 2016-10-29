package defpackage;

import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.a;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.c;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.e;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: re */
public final class re extends c {
    public String a;
    public String b;
    public String c;

    public /* synthetic */ c b(a aVar) throws IOException {
        return a(aVar);
    }

    public re() {
        a();
    }

    public re a() {
        this.a = "";
        this.b = "";
        this.c = "";
        this.F = -1;
        return this;
    }

    public re a(a aVar) throws IOException {
        while (true) {
            int a = aVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_collapseIcon /*18*/:
                    this.a = aVar.e();
                    continue;
                case p.ActionBar_homeAsUpIndicator /*26*/:
                    this.b = aVar.e();
                    continue;
                case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
                    this.c = aVar.e();
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
