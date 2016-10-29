package com.twitter.android.util;

import android.content.Context;
import android.os.AsyncTask;
import bbu;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.util.AppEventTrack.EventType;
import com.twitter.library.api.e;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import org.json.JSONObject;

/* compiled from: Twttr */
class d extends AsyncTask<String, Void, Void> {
    private final Context a;
    private final EventType b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    d(Context context, EventType eventType) {
        this.a = context.getApplicationContext();
        this.b = eventType;
    }

    protected ScribeLog a(long j, String... strArr) {
        String str = (strArr == null || strArr.length < 3) ? null : strArr[2];
        f fVar;
        switch (c.a[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                fVar = new f(AppEventTrack.a(str));
                return ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{"external:referred:::launch"})).e()).a(3, fVar.c, fVar.d, fVar.a, fVar.e, fVar.b, fVar.f, str);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                fVar = new f(AppEventTrack.a(str));
                String str2 = (strArr == null || strArr.length < 2) ? null : strArr[1];
                ScribeLog a = ((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{"external:referred:::open"})).a(3, fVar.c, fVar.d, fVar.a, fVar.e, fVar.b, fVar.f, str + "&" + "mat_click_id" + "=" + str2);
                bbu.a(a);
                return a;
            case Util.TYPE_OTHER /*3*/:
                return new TwitterScribeLog(j).b(new String[]{"app:launch:::update_new_version"});
            default:
                return null;
        }
    }

    protected Void a(String... strArr) {
        JSONObject b = AppEventTrack.b(this.a, this.b, strArr);
        if (b != null) {
            az.a(this.a).a((e) new e(this.a, bg.a().c()).h(1).b("data", "[" + b + "]"), new e(this));
            ScribeLog a = a(Long.valueOf(bg.a().c().g()).longValue(), strArr);
            if (a != null) {
                bbu.a(a);
            }
        }
        return null;
    }
}
