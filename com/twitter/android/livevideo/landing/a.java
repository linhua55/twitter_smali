package com.twitter.android.livevideo.landing;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.j;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class a {
    private static final String b;
    private static final String c;
    public final String a;

    static {
        b = a.class.getSimpleName();
        c = b + ":event_id";
    }

    public a(String str) {
        this.a = str;
    }

    public static a a(Intent intent) {
        return new a(e.b(intent.getStringExtra(c)));
    }

    public static a a(h hVar) {
        return new a(e.b(hVar.f(c)));
    }

    public Intent a(Context context) {
        Intent intent = new Intent(context, LiveVideoLandingActivity.class);
        intent.putExtra(c, this.a);
        return intent;
    }

    public h a(j jVar) {
        if (jVar == null) {
            jVar = new j();
        }
        return ((j) jVar.b(c, this.a)).b();
    }
}
