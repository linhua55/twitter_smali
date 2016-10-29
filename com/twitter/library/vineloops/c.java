package com.twitter.library.vineloops;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.az;
import com.twitter.library.vineloops.VineLoopAggregator.Record;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class c {
    static final Collection<RequestMethod> a;
    static final Collection<Integer> b;
    private static c c;
    private final d d;
    private long e;

    static {
        a = Collections.singleton(RequestMethod.POST);
        b = Arrays.asList(new Integer[]{Integer.valueOf(0), Integer.valueOf(502), Integer.valueOf(511)});
    }

    public static synchronized c a(Context context, az azVar) {
        c cVar;
        synchronized (c.class) {
            if (c == null) {
                c = new c(context, azVar);
            }
            cVar = c;
        }
        return cVar;
    }

    private c(Context context, az azVar) {
        this.d = new d(this, context, azVar);
    }

    public void a() {
        Handler handler = new Handler();
        handler.removeCallbacks(this.d);
        handler.postAtTime(this.d, this.e);
    }

    void a(int i) {
        this.e = ((long) Math.max(10000, i * 1000)) + SystemClock.uptimeMillis();
    }

    static JSONObject a(List<Record> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Record record : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("url", record.a);
            jSONObject.put("count", record.b);
            jSONObject.put("ts", ((double) record.c) / 1000.0d);
            jSONArray.put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("loops", jSONArray);
        return jSONObject2;
    }
}
