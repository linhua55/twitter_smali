package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.viewmodels.a;
import cyw;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
final class fj implements cyw<Map<Long, a>, Map<MomentModule, a>> {
    final /* synthetic */ List a;

    fj(List list) {
        this.a = list;
    }

    public Map<MomentModule, a> a(Map<Long, a> map) {
        Map<MomentModule, a> linkedHashMap = new LinkedHashMap();
        for (MomentModule momentModule : this.a) {
            long j = momentModule.b().b;
            if (map.containsKey(Long.valueOf(j))) {
                linkedHashMap.put(momentModule, map.get(Long.valueOf(j)));
            }
        }
        return linkedHashMap;
    }
}
