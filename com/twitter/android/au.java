package com.twitter.android;

import android.webkit.ValueCallback;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: Twttr */
class au implements ValueCallback<String> {
    final /* synthetic */ BouncerWebViewActivity a;

    au(BouncerWebViewActivity bouncerWebViewActivity) {
        this.a = bouncerWebViewActivity;
    }

    public /* synthetic */ void onReceiveValue(Object obj) {
        a((String) obj);
    }

    public void a(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            Collection a = this.a.a(jSONArray);
            if (jSONArray.length() > 0) {
                this.a.c.b();
            }
            this.a.c.a(a);
        } catch (JSONException e) {
        }
    }
}
