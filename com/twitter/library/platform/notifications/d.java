package com.twitter.library.platform.notifications;

import android.content.Context;
import android.os.Bundle;
import cmf;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
public class d extends x {
    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, e eVar) {
        arVar.a(str, 4, eVar);
        String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
        aVar.h.r = diVar.a(str, 5, str2, aVar.h.a(), aVar.h.i, string, false);
        aVar.h.v = diVar.k();
        aVar.h.c = aVar.h.v.size();
        aVar.f = 4;
        if (aVar.h.y == null) {
            aVar.h.y = cmf.e;
        }
    }
}
