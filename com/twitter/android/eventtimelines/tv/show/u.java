package com.twitter.android.eventtimelines.tv.show;

import android.content.res.Resources;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class u implements t {
    private final Map<String, Integer> a;
    private final Resources b;

    public u(Resources resources) {
        this.b = resources;
        this.a = a();
    }

    private Map<String, Integer> a() {
        Map<String, Integer> hashMap = new HashMap();
        hashMap.put("ANIME", Integer.valueOf(2131363977));
        hashMap.put("CHILDREN_FAMILY", Integer.valueOf(2131363980));
        hashMap.put("COMEDY", Integer.valueOf(2131363978));
        hashMap.put("DOCUMENTARY_SPECIAL_INTEREST", Integer.valueOf(2131363992));
        hashMap.put("DRAMA", Integer.valueOf(2131363979));
        hashMap.put("GAME_SHOW", Integer.valueOf(2131363981));
        hashMap.put("MINISERIES", Integer.valueOf(2131363982));
        hashMap.put("MOVIES", Integer.valueOf(2131363983));
        hashMap.put("MUSIC", Integer.valueOf(2131363984));
        hashMap.put("NEWS", Integer.valueOf(2131363985));
        hashMap.put("OTHER", Integer.valueOf(2131363986));
        hashMap.put("PAID", Integer.valueOf(2131363987));
        hashMap.put("REALITY", Integer.valueOf(2131363988));
        hashMap.put("SCI_FI", Integer.valueOf(2131363989));
        hashMap.put("SOAP_OPERA", Integer.valueOf(2131363990));
        hashMap.put("SPECIAL", Integer.valueOf(2131363991));
        hashMap.put("SPORTS", Integer.valueOf(2131363993));
        hashMap.put("SPORTS_TALK", Integer.valueOf(2131363994));
        hashMap.put("TALK", Integer.valueOf(2131363995));
        hashMap.put("VARIETY", Integer.valueOf(2131363996));
        return hashMap;
    }

    public String a(String str) {
        Integer num = (Integer) this.a.get(str);
        return num == null ? TtmlNode.ANONYMOUS_REGION_ID : this.b.getString(num.intValue());
    }
}
