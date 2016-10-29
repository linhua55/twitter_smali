package defpackage;

import android.content.Context;
import com.twitter.library.service.ab;
import com.twitter.model.timeline.aa;

/* compiled from: Twttr */
/* renamed from: bnl */
public class bnl extends bnn {
    public bnl(Context context, ab abVar, long j, aa aaVar) {
        super(context, abVar, bnl.class.getName(), j, 8, aaVar);
    }

    protected String[] e() {
        return new String[]{"favorites", String.valueOf(this.a)};
    }

    public boolean s() {
        return x() == 1;
    }

    public boolean t() {
        return false;
    }
}
