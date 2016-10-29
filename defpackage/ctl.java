package defpackage;

import ctk;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ctl */
class ctl<T> extends ctk<T> {
    private final List<T> a;

    ctl(List<T> list, int i) {
        super(list.size(), i);
        this.a = list;
    }

    protected T a(int i) {
        return this.a.get(i);
    }
}
