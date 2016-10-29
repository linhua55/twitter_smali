package defpackage;

import bbn;
import com.twitter.util.serialization.n;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: cil */
public class cil implements Comparable<cil> {
    public static final n<cil> a;
    protected final String b;
    protected final Object c;
    private cin d;

    public /* synthetic */ int compareTo(Object obj) {
        return a((cil) obj);
    }

    static {
        a = new cip();
    }

    public cil(String str, Object obj) {
        this.b = str;
        this.c = obj;
    }

    public Object a() {
        return this.c;
    }

    public void a(cin cin) {
        this.d = cin;
    }

    public boolean b() {
        return this.d != null;
    }

    public cin c() {
        return this.d;
    }

    private static List<Object> a(JSONArray jSONArray) {
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        int i = 0;
        while (i < jSONArray.length()) {
            try {
                d.c(jSONArray.get(i));
                i++;
            } catch (JSONException e) {
            }
        }
        return (List) d.q();
    }

    public static cil a(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str2);
        String string = jSONObject.getString("type");
        if (string.equals(List.class.toString())) {
            return new cil(str, cil.a(new JSONArray(jSONObject.getString("value"))));
        }
        if (string.equals(Boolean.class.toString())) {
            return new cil(str, Boolean.valueOf(jSONObject.getBoolean("value")));
        }
        if (string.equals(Integer.class.toString())) {
            return new cil(str, Integer.valueOf(jSONObject.getInt("value")));
        }
        if (string.equals(Long.class.toString())) {
            return new cil(str, Long.valueOf(jSONObject.getLong("value")));
        }
        if (string.equals(Float.class.toString())) {
            return new cil(str, Float.valueOf((float) jSONObject.getDouble("value")));
        }
        if (string.equals(Double.class.toString())) {
            return new cil(str, Double.valueOf(jSONObject.getDouble("value")));
        }
        if (string.equals(String.class.toString())) {
            return new cil(str, jSONObject.getString("value"));
        }
        return new cil(str, jSONObject.get("value"));
    }

    public static String a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", str);
            jSONObject.put("value", obj.toString());
            return jSONObject.toString();
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    public static String a(Object obj) {
        if (obj == null) {
            return String.class.toString();
        }
        if (obj instanceof List) {
            return List.class.toString();
        }
        return obj.getClass().toString();
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cil cil = (cil) obj;
        if (this.b == null) {
            if (cil.b != null) {
                return false;
            }
        } else if (!this.b.equals(cil.b)) {
            return false;
        }
        if (this.c != null) {
            return this.c.equals(cil.c);
        }
        if (cil.c == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        int i2 = hashCode * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + i2) * 31;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return hashCode + i;
    }

    public int a(cil cil) {
        return this.b.compareTo(cil.b);
    }

    public cil d() {
        cil cil = new cil(this.b, this.c);
        cil.a(this.d);
        return cil;
    }
}
