package com.twitter.android.moments.viewmodels;

import com.twitter.model.moments.DisplayStyle;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class b {
    public List<MomentGuideListItem> a(MomentGuideSection momentGuideSection, int i, int i2) {
        String b = momentGuideSection.b();
        n d = n.d();
        if (aj.b(b) && !a(momentGuideSection, i)) {
            d.c(a(b));
        }
        for (MomentModule momentModule : momentGuideSection.a()) {
            if (a(momentModule)) {
                d.c(c(momentModule));
            } else {
                d.c(b(momentModule));
            }
        }
        if (aj.b(momentGuideSection.d())) {
            d.c(a(momentGuideSection));
        }
        if (i < i2 - 1) {
            d.c(a());
        }
        return (List) d.q();
    }

    private boolean a(MomentGuideSection momentGuideSection, int i) {
        return i == 0 && !momentGuideSection.a().isEmpty() && a((MomentModule) momentGuideSection.a().get(0));
    }

    private boolean a(MomentModule momentModule) {
        return momentModule.e() == DisplayStyle.b;
    }

    private n a(String str) {
        return new n(str);
    }

    private q b(MomentModule momentModule) {
        return new q(momentModule);
    }

    private o c(MomentModule momentModule) {
        return new o(momentModule);
    }

    private MomentGuideListItem a(MomentGuideSection momentGuideSection) {
        return new t(e.b(momentGuideSection.d()), momentGuideSection.c(), momentGuideSection.b(), momentGuideSection.e());
    }

    private m a() {
        return new m();
    }
}
