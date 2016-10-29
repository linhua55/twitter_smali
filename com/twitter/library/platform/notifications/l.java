package com.twitter.library.platform.notifications;

import android.content.Context;
import android.os.Bundle;
import bje;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.bb;
import com.twitter.model.dms.h;
import com.twitter.model.dms.j;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class l extends x {
    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, e eVar) {
        if (bundle.containsKey("notification_dm_data")) {
            long j = bundle.getLong("recipient_id", 0);
            bje bje = (bje) com.twitter.util.object.e.a(ab.a(bundle, "notification_dm_data", bje.d));
            di diVar2 = diVar;
            diVar2.a((h) new j().a(1).a(com.twitter.util.collection.ar.a(((bb) new bb().a(bje.d())).q(), new Participant[]{(Participant) ((bb) new bb().a(j)).q()})).c(bje.h).b(bje.g).c(bje.i).q(), false);
            diVar.a(bje, false, eVar);
            String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
            aVar.h.r = diVar.a(str, 13, str2, aVar.h.a(), aVar.h.i, string, bje.h, null);
            aVar.h.v = diVar.f(bje.h);
            aVar.h.k = bje.h;
        }
        aVar.h.c = aVar.h.v.size();
    }
}
