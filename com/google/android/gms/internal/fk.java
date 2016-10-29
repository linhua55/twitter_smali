package com.google.android.gms.internal;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class fk implements fj {
    private final Context a;
    private final VersionInfoParcel b;

    public fk(Context context, VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = versionInfoParcel;
    }

    protected fo a(JSONObject jSONObject) {
        URL url;
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString("url");
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (Throwable e) {
            b.b("Error constructing http request.", e);
            url = null;
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new fn(optJSONObject.optString("key"), optJSONObject.optString("value")));
            }
        }
        return new fo(optString, url, arrayList, optString3);
    }

    protected fp a(fo foVar) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) foVar.b().openConnection();
            ar.e().a(this.a, this.b.b, false, httpURLConnection);
            Iterator it = foVar.c().iterator();
            while (it.hasNext()) {
                fn fnVar = (fn) it.next();
                httpURLConnection.addRequestProperty(fnVar.a(), fnVar.b());
            }
            if (!TextUtils.isEmpty(foVar.d())) {
                httpURLConnection.setDoOutput(true);
                byte[] bytes = foVar.d().getBytes();
                httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            }
            List arrayList = new ArrayList();
            if (httpURLConnection.getHeaderFields() != null) {
                for (Entry entry : httpURLConnection.getHeaderFields().entrySet()) {
                    for (String fnVar2 : (List) entry.getValue()) {
                        arrayList.add(new fn((String) entry.getKey(), fnVar2));
                    }
                }
            }
            return new fp(this, true, new fq(foVar.a(), httpURLConnection.getResponseCode(), arrayList, ar.e().a(new InputStreamReader(httpURLConnection.getInputStream()))), null);
        } catch (Exception e) {
            return new fp(this, false, null, e.toString());
        }
    }

    protected JSONObject a(fq fqVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", fqVar.a());
            if (fqVar.d() != null) {
                jSONObject.put("body", fqVar.d());
            }
            JSONArray jSONArray = new JSONArray();
            for (fn fnVar : fqVar.c()) {
                jSONArray.put(new JSONObject().put("key", fnVar.a()).put("value", fnVar.b()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", fqVar.b());
        } catch (Throwable e) {
            b.b("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    public JSONObject a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            Object obj = BuildConfig.VERSION_NAME;
            try {
                obj = jSONObject.optString("http_request_id");
                fp a = a(a(jSONObject));
                if (a.c()) {
                    jSONObject2.put("response", a(a.b()));
                    jSONObject2.put("success", true);
                    return jSONObject2;
                }
                jSONObject2.put("response", new JSONObject().put("http_request_id", obj));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", a.a());
                return jSONObject2;
            } catch (Exception e) {
                try {
                    jSONObject2.put("response", new JSONObject().put("http_request_id", obj));
                    jSONObject2.put("success", false);
                    jSONObject2.put("reason", e.toString());
                    return jSONObject2;
                } catch (JSONException e2) {
                    return jSONObject2;
                }
            }
        } catch (JSONException e3) {
            b.b("The request is not a valid JSON.");
            try {
                return new JSONObject().put("success", false);
            } catch (JSONException e4) {
                return new JSONObject();
            }
        }
    }

    public void a(sz szVar, Map<String, String> map) {
        qq.a(new fl(this, map, szVar));
    }
}
