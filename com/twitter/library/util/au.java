package com.twitter.library.util;

import com.twitter.library.platform.e;
import com.twitter.util.al;
import com.twitter.util.collection.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class au {
    public static List<e> a(List<e> list, long j) {
        List<e> arrayList = new ArrayList();
        long b = al.b() - j;
        for (e eVar : list) {
            x d = eVar.d();
            if (d.c() && ((Long) d.b()).longValue() >= b) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    public static List<e> a(List<e> list, int i) {
        List<e> arrayList = new ArrayList(list);
        Collections.sort(arrayList, new aw());
        if (list.size() <= i || i < 0) {
            return arrayList;
        }
        return arrayList.subList(0, i);
    }

    public static Map<String, Object> a(List<e> list) {
        Map<String, Object> hashMap = new HashMap();
        int i = 1;
        for (e eVar : list) {
            boolean e = eVar.e();
            hashMap.put(String.format("wifi%d_private", new Object[]{Integer.valueOf(i)}), Boolean.valueOf(e));
            hashMap.put(String.format("wifi%d_bssid", new Object[]{Integer.valueOf(i)}), eVar.a());
            if (!e) {
                hashMap.put(String.format("wifi%d_level", new Object[]{Integer.valueOf(i)}), Integer.valueOf(eVar.b()));
                hashMap.put(String.format("wifi%d_frequency", new Object[]{Integer.valueOf(i)}), Integer.valueOf(eVar.c()));
                hashMap.put(String.format("wifi%d_timestamp", new Object[]{Integer.valueOf(i)}), eVar.d().b());
            }
            i++;
        }
        hashMap.put("wifi_count", Integer.valueOf(list.size()));
        return hashMap;
    }
}
