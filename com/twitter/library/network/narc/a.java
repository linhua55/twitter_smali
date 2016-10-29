package com.twitter.library.network.narc;

import com.twitter.internal.network.HttpOperation$Protocol;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public abstract class a extends b {
    public long a;
    public long b;
    public String c;
    public HttpOperation$Protocol d;
    private final List<k> e;

    public a() {
        this.a = -1;
        this.b = -1;
        this.c = null;
        this.d = HttpOperation$Protocol.HTTP_1_1;
        this.e = new LinkedList();
    }

    protected void a(Map<String, List<String>> map) {
        long j;
        if (map != null) {
            j = 0;
            for (Entry entry : map.entrySet()) {
                long j2;
                String str = (String) entry.getKey();
                if (str == null) {
                    str = TtmlNode.ANONYMOUS_REGION_ID;
                }
                long length = (long) (str.length() + 3);
                List<String> list = (List) entry.getValue();
                if (list != null) {
                    j += (length + 1) * ((long) list.size());
                    for (String str2 : list) {
                        String str22;
                        if (str22 == null) {
                            str22 = TtmlNode.ANONYMOUS_REGION_ID;
                        }
                        k kVar = new k();
                        kVar.a = str;
                        kVar.b = str22;
                        this.e.add(kVar);
                        j += (long) str22.length();
                    }
                    j2 = j;
                } else {
                    j2 = j + length;
                }
                j = j2;
            }
        } else {
            j = 0;
        }
        this.a = j;
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cookies", new JSONArray());
        jSONObject.put("headers", a(this.e));
        jSONObject.put("headersSize", this.a);
        jSONObject.put("bodySize", this.b);
        jSONObject.put("comment", this.c);
        jSONObject.put("httpVersion", this.d.toString());
        return jSONObject;
    }
}
