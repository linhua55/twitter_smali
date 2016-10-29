package defpackage;

import com.twitter.util.collection.b;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cwi */
public class cwi<Value extends Number> extends b<Value> {
    public cwi() {
        this(100);
    }

    public cwi(int i) {
        super(i);
    }

    public cwi(int i, Value value) {
        this(i);
        for (int i2 = 0; i2 < i; i2++) {
            add(value);
        }
    }

    public double c() {
        if (size() == 0) {
            return 0.0d;
        }
        Iterator it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d = ((Number) it.next()).doubleValue() + d;
        }
        return d / ((double) size());
    }
}
