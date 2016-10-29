package com.twitter.library.platform.notifications;

import android.content.Context;
import android.os.Bundle;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
public class c extends x {
    public void a(a aVar, Bundle bundle, String str, String str2, Context context, ar arVar, di diVar, e eVar) {
        arVar.a(str, 2, eVar);
        String string = bundle.getString(MimeTypes.BASE_TYPE_TEXT);
        aVar.h.r = diVar.a(str, 4, str2, aVar.h.a(), aVar.h.i, string, null, null);
        aVar.h.v = diVar.k();
        aVar.h.c = aVar.h.v.size();
        aVar.f = 2;
    }
}
