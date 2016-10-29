package defpackage;

import android.view.View;
import java.util.concurrent.TimeUnit;
import rx.o;

/* compiled from: Twttr */
/* renamed from: cvx */
public class cvx {
    public static o<View> a(View view) {
        return o.a(new cvy(view));
    }

    public static o<View> b(View view) {
        return o.a(new cwa(view));
    }

    public static o<View> c(View view) {
        return cvx.b(view).c(500, TimeUnit.MILLISECONDS);
    }
}
