package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

public interface h {
    void a();

    void a(MotionEvent motionEvent);

    void a(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3);

    void a(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3);

    void b(View view);

    void c(View view);

    View e();

    Context f();
}
