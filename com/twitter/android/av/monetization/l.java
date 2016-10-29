package com.twitter.android.av.monetization;

import com.twitter.app.common.base.u;
import java.util.ArrayList;
import java.util.Set;

/* compiled from: Twttr */
public class l extends u<l> {
    public l(Set<Integer> set) {
        u.a(this.b, true);
        this.b.putExtra("selected_categories", new ArrayList(set));
    }
}
