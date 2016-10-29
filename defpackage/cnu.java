package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cnu */
public class cnu {
    public final Map<String, cm> a;
    public final Map<String, TwitterUser> b;

    public cnu(Map<String, cm> map, Map<String, TwitterUser> map2) {
        this.a = r.a(map);
        this.b = r.a(map2);
    }

    public cm a(String str) {
        return (cm) this.a.get(str);
    }
}
