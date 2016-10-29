package defpackage;

import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bub */
public class bub {
    private final Set<Long> a;
    private final Map<String, ByteBuffer> b;

    public bub(Map<String, ByteBuffer> map, Set<Long> set) {
        this.a = set;
        this.b = map;
    }

    public Set<Long> a() {
        return this.a;
    }

    public Map<String, ByteBuffer> b() {
        return this.b;
    }
}
