package defpackage;

import android.content.Context;
import android.view.View;
import bhc;
import bie;
import cly;
import com.twitter.android.dm.cards.dmfeedbackcard.DMFeedbackCardView;
import com.twitter.android.dm.cards.dmfeedbackcard.c;
import com.twitter.model.dms.l;
import com.twitter.model.dms.s;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: wz */
public class wz {
    public static View a(Context context, bie bie, Map<Long, cly> map, boolean z, wy wyVar, boolean z2, boolean z3) {
        bhc a = ((bhc) ObjectUtils.a(bie.a)).a(z);
        l lVar = a.z() ? (l) a.n() : null;
        if (lVar == null || !lVar.l()) {
            return null;
        }
        if (lVar.m()) {
            c cVar = new c(context, a.h, a.j(), (s) lVar, (cly) e.b(map.get(Long.valueOf(lVar.k())), new cly()), bie.d, bie.e, "@" + bie.f);
            if (cVar.a(z2, z3)) {
                return new DMFeedbackCardView(context, cVar, wyVar);
            }
        }
        return null;
    }
}
