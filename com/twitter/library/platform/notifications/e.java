package com.twitter.library.platform.notifications;

import android.content.Context;
import android.os.Bundle;
import cmf;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;

/* compiled from: Twttr */
public class e extends x {
    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, com.twitter.library.provider.e eVar) {
        arVar.a(str, 32, eVar);
        String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
        aVar.h.r = diVar.a(str, 8, str2, aVar.h.a(), aVar.h.i, string, false);
        aVar.f = 32;
        if (aVar.h.y == null) {
            aVar.h.y = cmf.f;
        }
    }
}
