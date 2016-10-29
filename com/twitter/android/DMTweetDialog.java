package com.twitter.android;

import bhc;
import com.twitter.android.widget.ec;
import com.twitter.library.util.aq;
import com.twitter.model.core.as;
import com.twitter.model.dms.ae;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import defpackage.bii;
import java.util.Collection;

/* compiled from: Twttr */
public class DMTweetDialog extends BaseDMMessageDialog {
    public static DMTweetDialog a(int i, bhc bhc, de deVar) {
        int[] b = b(bhc);
        DMTweetDialog a = a(i, b);
        a.a(bhc, b, deVar);
        return a;
    }

    private static DMTweetDialog a(int i, int[] iArr) {
        return (DMTweetDialog) ((ec) new dq(i).a(iArr)).i();
    }

    static int[] b(bhc bhc) {
        n c = n.d().c(Integer.valueOf(2131362333));
        if (!bhc.h() || ((bii) bhc).A()) {
            c.b(new Integer[]{Integer.valueOf(2131362399), Integer.valueOf(2131362455)});
        } else {
            c.b(new Integer[]{Integer.valueOf(2131362399), Integer.valueOf(2131363491)});
        }
        return CollectionUtils.d((Collection) c.q());
    }

    protected void a(bhc bhc) {
        as asVar = ((ae) bhc.n()).e;
        aq.a(getActivity(), getString(2131364410, new Object[]{asVar.d, Long.valueOf(asVar.e)}));
    }
}
