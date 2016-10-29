package defpackage;

import android.support.annotation.IntRange;
import aqo;
import com.twitter.android.PermissionResult;
import com.twitter.app.common.base.o;

/* compiled from: Twttr */
/* renamed from: aqq */
class aqq implements o {
    final /* synthetic */ aqo a;

    aqq(aqo aqo) {
        this.a = aqo;
    }

    public void a(@IntRange(from = 0, to = 4095) int i, PermissionResult permissionResult) {
        if (i == aqo.s() && permissionResult.a()) {
            aqo.a(this.a).d();
            aqo.c(this.a);
        } else if (i == aqo.s()) {
            if (permissionResult.a()) {
                this.a.a(aqo.d(this.a));
            }
            aqo.a(this.a, 0);
        }
    }
}
