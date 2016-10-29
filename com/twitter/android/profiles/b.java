package com.twitter.android.profiles;

import com.twitter.config.d;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class b {
    public final List<c> a;

    public b() {
        n d = n.d();
        if (d.a("profile_birthday_balloon_overrides_enabled")) {
            for (String split : d.a("profile_birthday_balloon_overrides", n.g())) {
                String[] split2 = split.split(",");
                if (split2.length == 3) {
                    d.c(new c(this, split2[0], new String[]{split2[1]}, new int[]{(int) Long.parseLong(split2[2], 16)}));
                }
            }
        }
        this.a = (List) d.q();
    }

    public c a(ao aoVar) {
        if (aoVar == null || aoVar.a() == null || !d.a("profile_birthday_balloon_overrides_enabled")) {
            return null;
        }
        for (c cVar : this.a) {
            if (cVar.a.equalsIgnoreCase(aoVar.a().k)) {
                return cVar;
            }
        }
        return null;
    }
}
