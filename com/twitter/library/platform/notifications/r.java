package com.twitter.library.platform.notifications;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import bhc;
import bih;
import bip;
import cca;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.ct;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.bb;
import com.twitter.model.dms.c;
import com.twitter.model.dms.h;
import com.twitter.model.dms.j;
import com.twitter.model.dms.x;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import java.util.Collection;

/* compiled from: Twttr */
public class r extends x {
    private final int a;

    public r(int i) {
        this.a = i;
    }

    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, e eVar) {
        if (bundle.containsKey("notification_dm_data")) {
            Collection a;
            int i;
            bhc bhc = (bhc) ab.a(bundle, "notification_dm_data", bip.e);
            long j = bundle.getLong("recipient_id", 0);
            if (22 == this.a) {
                a = com.twitter.util.collection.ar.a(((bb) new bb().a(bhc.d())).q(), new Participant[]{(Participant) ((bb) new bb().a(j)).q()});
                i = 0;
            } else {
                a = null;
                i = 1;
            }
            int i2 = bundle.getInt("notification_dm_attachment_type");
            diVar.a((h) new j().a(i).a(a).c(bhc.h).b(bhc.g).c(bhc.i).q(), false);
            diVar.a(bhc, false, eVar);
            byte[] a2 = a(bhc, i2, aVar.h);
            aVar.h.f = a(context, bhc.h, j);
            String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
            aVar.h.r = diVar.a(str, 13, str2, aVar.h.a(), aVar.h.i, string, bhc.h, a2);
            aVar.h.v = diVar.f(bhc.h);
            aVar.h.k = bhc.h;
            aVar.h.c = aVar.h.v.size();
        }
    }

    @VisibleForTesting
    public static byte[] a(bhc bhc, int i, ad adVar) {
        if (bhc.x()) {
            x xVar = (x) bhc.n();
            CharSequence j = xVar.j();
            if (bhc.t()) {
                adVar.n = j;
            }
            return m.a(Integer.valueOf(aj.b(j) ? xVar.a() : 0), s.c);
        } else if (CollectionUtils.a(c.b, i)) {
            return m.a(Integer.valueOf(i), s.c);
        } else {
            return null;
        }
    }

    private static String a(Context context, String str, long j) {
        Cursor query = context.getContentResolver().query(ck.a(ct.a, j), bih.a, "conversations_conversation_id=?", new String[]{str}, null);
        if (query == null) {
            return null;
        }
        cca cca = new cca(query, j, context, str, false);
        try {
            String f;
            if (cca.moveToNext()) {
                f = cca.f();
            } else {
                f = null;
            }
            cca.close();
            return f;
        } catch (Throwable th) {
            cca.close();
        }
    }
}
