package defpackage;

import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import ctp;
import ctq;
import cts;
import ctu;
import ctw;
import cty;
import cua;
import cuc;
import cue;
import cug;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cto */
public class cto {
    private static final ctc a;

    static {
        a = new ctp();
    }

    private cto() {
    }

    public static <IN, OUT> Iterable<OUT> a(Iterable<IN> iterable, ctc<IN, OUT> ctc_IN__OUT) {
        return new cty(iterable, ctc_IN__OUT);
    }

    public static <T> Iterable<T> a(Iterable<? extends T> iterable, cuj<? super T> cuj__super_T) {
        return new cua(iterable, cuj__super_T);
    }

    public static <IN, OUT> Iterable<OUT> b(Iterable<? extends IN> iterable, ctc<IN, OUT> ctc_IN__OUT) {
        return new cuc(iterable, ctc_IN__OUT);
    }

    public static <IN, OUT> Iterable<OUT> c(Iterable<? extends IN> iterable, ctc<IN, ? extends Iterable<? extends OUT>> ctc_IN___extends_java_lang_Iterable__extends_OUT) {
        return new cue(iterable, ctc_IN___extends_java_lang_Iterable__extends_OUT);
    }

    public static <T> Iterable<T> a(Iterable<T> iterable, int i) {
        return new cug(iterable, i);
    }

    public static <T> T a(Iterable<T> iterable, Comparator<T> comparator) {
        T t = null;
        for (T next : iterable) {
            if (t == null || comparator.compare(next, t) > 0) {
                t = next;
            }
        }
        return t;
    }

    public static <T> Iterable<T> a(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Comparator<? super T> comparator) {
        return new ctq(iterable, iterable2, comparator);
    }

    @SafeVarargs
    public static <T> Iterable<T> a(Iterable<? extends T>... iterableArr) {
        return new cts(iterableArr);
    }

    public static <T> Iterable<T> a(Iterable<? extends Iterable<? extends T>> iterable) {
        return new ctu(iterable);
    }

    public static int b(Iterable<?> iterable) {
        int i = 0;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            it.next();
            i++;
        }
        return i;
    }

    public static <T> List<T> c(Iterable<? extends T> iterable) {
        n d = n.d();
        for (Object c : iterable) {
            d.c(c);
        }
        return (List) d.q();
    }

    public static <T> Iterable<T> a(T[] tArr) {
        return new ctw(tArr);
    }

    public static boolean a(Iterable<?> iterable, Iterable<?> iterable2) {
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!ObjectUtils.a(it.next(), it2.next())) {
                return false;
            }
        }
        if (it.hasNext() || it2.hasNext()) {
            return false;
        }
        return true;
    }

    public static <T> boolean b(Iterable<? extends T> iterable, cuj<? super T> cuj__super_T) {
        for (Object a : iterable) {
            if (cuj__super_T.a(a)) {
                return true;
            }
        }
        return false;
    }

    public static <T> int c(Iterable<T> iterable, cuj<T> cuj_T) {
        int i = 0;
        for (T a : iterable) {
            if (cuj_T.a(a)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static boolean b(Iterable iterable, Iterable iterable2) {
        if (iterable == iterable2) {
            return true;
        }
        if (iterable == null || iterable2 == null) {
            return false;
        }
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!ObjectUtils.a(it.next(), it2.next())) {
                return false;
            }
        }
        if (it.hasNext() || it2.hasNext()) {
            return false;
        }
        return true;
    }
}
