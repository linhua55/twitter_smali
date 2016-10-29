package com.crashlytics.android.core;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
final class bf extends JSONObject {
    final /* synthetic */ ce a;

    bf(ce ceVar) throws JSONException {
        this.a = ceVar;
        put("userId", this.a.b);
        put("userName", this.a.c);
        put("userEmail", this.a.d);
    }
}
