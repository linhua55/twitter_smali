package com.twitter.model.json.moments;

import com.twitter.model.json.common.n;
import com.twitter.model.moments.MomentGuideSectionType;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class b extends n<MomentGuideSectionType> {
    public b() {
        super(MomentGuideSectionType.LIST, new Entry[]{a("carousel", MomentGuideSectionType.CAROUSEL), a("hero", MomentGuideSectionType.HERO), a("list", MomentGuideSectionType.LIST)});
    }
}
