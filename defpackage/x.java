package defpackage;

import android.annotation.TargetApi;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.d;
import java.util.concurrent.ExecutorService;

@TargetApi(14)
/* compiled from: Twttr */
/* renamed from: x */
class x extends w {
    private final d a;
    private final ExecutorService b;

    public x(a aVar, ExecutorService executorService) {
        this.a = new y(this);
        this.b = executorService;
        aVar.a(this.a);
    }
}
