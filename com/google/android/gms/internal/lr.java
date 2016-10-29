package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONObject;

@oi
public class lr {
    private final boolean a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final boolean e;

    private lr(lt ltVar) {
        this.a = lt.a(ltVar);
        this.b = lt.b(ltVar);
        this.c = lt.c(ltVar);
        this.d = lt.d(ltVar);
        this.e = lt.e(ltVar);
    }

    public JSONObject a() {
        try {
            return new JSONObject().put("sms", this.a).put("tel", this.b).put("calendar", this.c).put("storePicture", this.d).put("inlineVideo", this.e);
        } catch (Throwable e) {
            b.b("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
