package defpackage;

import com.twitter.model.card.property.ImageSpec;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: cmd */
public class cmd extends cmb {
    cmd() {
    }

    @Deprecated
    cmd(Map<String, cgh> map) {
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                cgh cgh = (cgh) entry.getValue();
                if (cgh.c instanceof cgp) {
                    a(str, ((cgp) cgh.c).a);
                } else if (cgh.c instanceof ImageSpec) {
                    a(str, new cmc((ImageSpec) cgh.c));
                } else {
                    a(str, cgh.c);
                }
            }
        }
    }

    public void a(String str, Object obj) {
        if (str != null && obj != null) {
            this.b.put(str, obj);
        }
    }
}
