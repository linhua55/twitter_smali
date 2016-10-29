package defpackage;

import com.twitter.util.object.ObjectUtils;
import ctl;
import ctm;
import ctn;
import java.util.List;
import java.util.ListIterator;

/* compiled from: Twttr */
/* renamed from: ctk */
public abstract class ctk<T> extends ctb<T> {
    private static final ctk a;

    static {
        a = new ctm();
    }

    public static <T> ListIterator<T> a() {
        return (ListIterator) ObjectUtils.a(a);
    }

    public static <T> ListIterator<T> a(T t, int i) {
        return new ctn(t, i);
    }

    public static <T> ListIterator<T> a(List<T> list, int i) {
        return new ctl(list, i);
    }

    protected ctk(int i, int i2) {
        super(i, i2);
    }
}
