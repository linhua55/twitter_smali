package com.twitter.library.platform.notifications;

import android.content.Context;
import android.os.Bundle;
import cmf;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
public class ag extends x {
    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, e eVar) {
        arVar.a(str, "tweet", 1, eVar);
        String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
        aVar.h.r = diVar.a(str, 1, str2, aVar.h.a(), aVar.h.i, string, null, null);
        if (aVar.h.y == null) {
            aVar.h.y = cmf.d;
        }
        aVar.h.v = diVar.l();
    }
}
