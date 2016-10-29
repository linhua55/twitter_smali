package defpackage;

import android.content.Context;
import bkg;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: xn */
public class xn extends xu<bkg> {
    private xn(xp xpVar) {
        super(xpVar);
    }

    public void a() {
        this.j.setText(xn.a(this.f, this.b.d, ((bkg) this.a).h(), c()));
        d();
        b();
    }

    static String a(Context context, String str, String str2, boolean z) {
        if (aj.a(str2)) {
            if (aj.a(str)) {
                return context.getString(2131362460);
            }
            if (z) {
                return context.getString(2131362552);
            }
            return context.getString(2131362537, new Object[]{str});
        } else if (aj.a(str)) {
            return context.getString(2131362459, new Object[]{str2});
        } else if (z) {
            return context.getString(2131362551, new Object[]{str2});
        } else {
            return context.getString(2131362535, new Object[]{str, str2});
        }
    }
}
