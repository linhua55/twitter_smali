package com.twitter.android.moments.data;

import com.twitter.android.moments.viewmodels.MomentGuideSection;
import com.twitter.android.moments.viewmodels.s;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class l implements q {
    public List<MomentGuideSection> a(List<MomentGuideSection> list) {
        if (list.isEmpty()) {
            return list;
        }
        n d = n.d();
        for (MomentGuideSection a : list) {
            d.c(a.a());
        }
        return (List) n.d().c((MomentGuideSection) new s().a(MomentGuideSectionType.c).a((List) d.q()).q()).q();
    }
}
