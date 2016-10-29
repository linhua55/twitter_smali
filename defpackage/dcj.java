package defpackage;

import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: dcj */
public class dcj implements dci {
    private final Set<String> a;

    public dcj() {
        this.a = new HashSet();
    }

    public boolean a(String str) {
        return this.a.add(str);
    }

    public boolean b(String str) {
        return str != null && this.a.contains(str);
    }
}
