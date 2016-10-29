package defpackage;

import aqo;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: aqp */
class aqp implements z<Boolean> {
    final /* synthetic */ aqo a;

    aqp(aqo aqo) {
        this.a = aqo;
    }

    public void a(Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            if (aqo.a(this.a).a()) {
                aqo.a(this.a).c();
            }
        } else if (aqo.b(this.a)) {
            aqo.a(this.a).b();
            aqo.a(this.a, false);
        }
    }
}
