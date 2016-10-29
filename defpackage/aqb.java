package defpackage;

import android.content.Context;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cn;

/* compiled from: Twttr */
/* renamed from: aqb */
public class aqb extends aou {
    private final long a;

    public aqb(Context context, long j) {
        super(context);
        this.a = j;
    }

    protected aow a() {
        return aqb.a(this.a);
    }

    public static aow a(long j) {
        return new aoy().a(ck.a(cn.a, j)).a("ads_type IN(\"tweet\",\"carousel\")").b("_id ASC").a(ccf.a).a();
    }
}
