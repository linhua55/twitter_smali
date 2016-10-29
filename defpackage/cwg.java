package defpackage;

import com.twitter.util.collection.b;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cwg */
public class cwg<Weight extends Number, Value extends Number> extends b<cwh> {
    public cwg() {
        this(100);
    }

    public cwg(int i) {
        super(i);
    }

    public cwg(int i, Weight weight, Value value) {
        this(i);
        for (int i2 = 0; i2 < i; i2++) {
            a(weight, value);
        }
    }

    public void a(Weight weight, Value value) {
        add(new cwh(weight, value));
    }

    public double c() {
        double d = 0.0d;
        Iterator it = iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            d2 = ((cwh) it.next()).a.doubleValue() + d2;
        }
        if (d2 != 0.0d) {
            Iterator it2 = iterator();
            while (it2.hasNext()) {
                cwh cwh = (cwh) it2.next();
                d += (cwh.a.doubleValue() / d2) * cwh.b.doubleValue();
            }
        }
        return d;
    }
}
