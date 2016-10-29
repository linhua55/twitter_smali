package com.twitter.model.json.moments;

import com.twitter.model.json.common.n;
import com.twitter.model.moments.DisplayStyle;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class a extends n<DisplayStyle> {
    public a() {
        super(DisplayStyle.LIST, new Entry[]{a("hero", DisplayStyle.HERO), a("list", DisplayStyle.LIST)});
    }
}
