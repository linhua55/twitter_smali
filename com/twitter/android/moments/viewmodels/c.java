package com.twitter.android.moments.viewmodels;

import com.twitter.android.moments.viewmodels.MomentGuideListItem.Type;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class c extends b {
    public List<MomentGuideListItem> a(MomentGuideSection momentGuideSection, int i, int i2) {
        List<MomentGuideListItem> a = super.a(momentGuideSection, i, i2);
        if (i != 0) {
            return a;
        }
        List a2 = MutableList.a();
        a2.addAll(a);
        c(a2);
        a(a2);
        b(a2);
        return n.a(a2);
    }

    private static void a(List<MomentGuideListItem> list) {
        MomentGuideListItem momentGuideListItem = (MomentGuideListItem) CollectionUtils.b(list);
        if (momentGuideListItem != null && momentGuideListItem.b() == Type.HERO) {
            list.set(0, new p(((o) momentGuideListItem).a));
        }
    }

    private static void b(List<MomentGuideListItem> list) {
        MomentGuideListItem momentGuideListItem = (MomentGuideListItem) CollectionUtils.b(list);
        if (momentGuideListItem != null && momentGuideListItem.b() == Type.LIST_ITEM) {
            list.add(0, new l());
        }
    }

    private static void c(List<MomentGuideListItem> list) {
        MomentGuideListItem momentGuideListItem = (MomentGuideListItem) CollectionUtils.b(list);
        if (momentGuideListItem != null && momentGuideListItem.b() == Type.HEADER) {
            list.remove(momentGuideListItem);
        }
    }
}
