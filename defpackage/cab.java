package defpackage;

import bbl;
import bbn;
import com.twitter.config.c;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.z;
import com.twitter.util.h;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cab */
public class cab {
    private static cab a;
    private final Map<z<String, DisplayMode>, List<cac>> b;

    cab() {
        this.b = new HashMap();
    }

    public static cab a() {
        if (a == null) {
            a = new cab();
        }
        return a;
    }

    public boolean a(String str, DisplayMode displayMode) {
        int i = 0;
        List list = (List) this.b.get(z.a(str, displayMode));
        if (CollectionUtils.b(list)) {
            return false;
        }
        cac cac = (cac) list.get(0);
        int i2 = 0;
        while (i < list.size()) {
            cac cac2 = (cac) list.get(i);
            if (c.d(cac2.a)) {
                if (i2 == 0) {
                    i2 = 1;
                    cac = cac2;
                } else {
                    bbn.a(new bbl().a("card name", str).a("display mode", displayMode).a("experiments", list).a("chosen experiment key", cac.a).a("conflicting experiment key", cac2.a).a(new IllegalStateException("Multiple assigned experiments trying to register. Use same experiment group to ensure mutual exclusivity.")));
                }
            }
            i++;
        }
        return c.a(cac.a, cac.b);
    }

    public void a(String str, DisplayMode displayMode, String str2, String... strArr) {
        if (!aj.a(str)) {
            cac cac = new cac(str2, strArr);
            z a = z.a(str, displayMode);
            if (this.b.containsKey(a)) {
                ((List) this.b.get(a)).add(cac);
                return;
            }
            this.b.put(a, CollectionUtils.d(new cac[]{cac}));
        } else if (h.e()) {
            throw new IllegalArgumentException("Missing card name");
        }
    }
}
