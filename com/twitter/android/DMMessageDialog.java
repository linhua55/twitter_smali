package com.twitter.android;

import bhc;
import com.twitter.android.widget.ec;
import com.twitter.config.d;
import com.twitter.library.util.aq;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import defpackage.bii;
import java.util.Collection;

/* compiled from: Twttr */
public class DMMessageDialog extends BaseDMMessageDialog {
    public static DMMessageDialog a(int i, bhc bhc, de deVar) {
        int[] b = b(bhc);
        DMMessageDialog a = a(i, b);
        a.a(bhc, b, deVar);
        return a;
    }

    private static DMMessageDialog a(int i, int[] iArr) {
        return (DMMessageDialog) ((ec) new do(i).a(iArr)).i();
    }

    static int[] b(bhc bhc) {
        Object obj = null;
        n c = n.d().c(bhc.l() ? Integer.valueOf(2131362332) : null);
        if (!bhc.h()) {
            if (d.a("dm_forwarding_enabled") && (bhc.t() || (bhc.l() && !bhc.y()))) {
                c.c(Integer.valueOf(2131362721));
            }
            c.b(new Integer[]{Integer.valueOf(2131362399), Integer.valueOf(2131362455)});
        } else if (((bii) bhc).A()) {
            if (bhc.i()) {
                obj = Integer.valueOf(2131362042);
            }
            c.c(obj);
        } else {
            c.b(new Integer[]{Integer.valueOf(2131362399), Integer.valueOf(2131363491)});
        }
        return CollectionUtils.d((Collection) c.q());
    }

    protected void a(bhc bhc) {
        aq.a(getActivity(), bhc.k().trim());
    }
}
