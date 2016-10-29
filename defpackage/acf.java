package defpackage;

import com.twitter.util.object.ObjectUtils;
import cyx;

/* compiled from: Twttr */
/* renamed from: acf */
class acf implements cyx<Long, Long, Boolean> {
    final /* synthetic */ ace a;

    acf(ace ace) {
        this.a = ace;
    }

    public Boolean a(Long l, Long l2) {
        boolean z = l2.longValue() > ace.a.longValue() && ObjectUtils.a((Object) l, (Object) l2);
        return Boolean.valueOf(z);
    }
}
