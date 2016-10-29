package com.twitter.android.moments.ui.animation;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.util.collection.n;
import defpackage.bum;
import defpackage.bym;
import defpackage.dbd;
import java.util.List;
import java.util.Random;
import rx.o;

/* compiled from: Twttr */
public class m {
    @VisibleForTesting
    static final List<Integer> a;
    private static m b;
    private final a c;
    private final i d;

    static {
        a = n.a(Integer.valueOf(2130838826), Integer.valueOf(2130838827), Integer.valueOf(2130838828), Integer.valueOf(2130838829), Integer.valueOf(2130838830), Integer.valueOf(2130838831), Integer.valueOf(2130838832), Integer.valueOf(2130838833), Integer.valueOf(2130838834), Integer.valueOf(2130838835), Integer.valueOf(2130838836), Integer.valueOf(2130838837), Integer.valueOf(2130838838), Integer.valueOf(2130838839), Integer.valueOf(2130838840), Integer.valueOf(2130838841), Integer.valueOf(2130838842), Integer.valueOf(2130838843), Integer.valueOf(2130838844), Integer.valueOf(2130838845), Integer.valueOf(2130838846), Integer.valueOf(2130838847), Integer.valueOf(2130838848), Integer.valueOf(2130838849), Integer.valueOf(2130838850), Integer.valueOf(2130838851), Integer.valueOf(2130838852), Integer.valueOf(2130838853), Integer.valueOf(2130838854), Integer.valueOf(2130838855), Integer.valueOf(2130838856), Integer.valueOf(2130838857), Integer.valueOf(2130838858), Integer.valueOf(2130838859), Integer.valueOf(2130838860), Integer.valueOf(2130838861), Integer.valueOf(2130838862), Integer.valueOf(2130838863), Integer.valueOf(2130838864), Integer.valueOf(2130838865), Integer.valueOf(2130838866), Integer.valueOf(2130838867), Integer.valueOf(2130838868), Integer.valueOf(2130838869), Integer.valueOf(2130838870), Integer.valueOf(2130838871), Integer.valueOf(2130838872), Integer.valueOf(2130838873), Integer.valueOf(2130838874), Integer.valueOf(2130838875), Integer.valueOf(2130838876), Integer.valueOf(2130838877), Integer.valueOf(2130838878), Integer.valueOf(2130838879), Integer.valueOf(2130838880), Integer.valueOf(2130838881));
    }

    public static m a(Context context) {
        if (b == null) {
            b = new m(context);
        }
        return b;
    }

    private m(Context context) {
        this(a.a(context, "http://ton.twimg.com/assets/additional_moments_animations.zip"), i.a(context));
    }

    @VisibleForTesting
    m(a aVar, i iVar) {
        this.c = aVar;
        this.d = iVar;
    }

    public void a() {
        if (bym.g()) {
            b().b(dbd.d()).b(new n(this));
        }
    }

    @VisibleForTesting
    o<Boolean> b() {
        return this.c.d().f(new o(this));
    }

    public void a(bum bum) {
        int c = this.c.c();
        if (c == 0) {
            bum.a(a);
        } else {
            a(new Random().nextInt(c + 1), c, bum);
        }
    }

    @VisibleForTesting
    void a(int i, int i2, bum bum) {
        if (i == i2) {
            bum.a(a);
        } else {
            bum.b(this.c.b(i));
        }
    }
}
