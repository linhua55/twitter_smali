package defpackage;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: Twttr */
/* renamed from: cxe */
public class cxe implements Runnable {
    private final Context a;
    private final cxa b;

    public cxe(Context context, cxa cxa) {
        this.a = context;
        this.b = cxa;
    }

    public void run() {
        try {
            CommonUtils.a(this.a, "Performing time based file roll over.");
            if (!this.b.c()) {
                this.b.d();
            }
        } catch (Throwable e) {
            CommonUtils.a(this.a, "Failed to roll over file", e);
        }
    }
}
