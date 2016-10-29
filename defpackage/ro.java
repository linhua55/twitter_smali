package defpackage;

import android.util.Log;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: ro */
class ro {
    private final JSONObject a;
    private final ArrayList<rf> b;
    private LatLngBounds c;

    ro(JSONObject jSONObject) {
        this.a = jSONObject;
        this.b = new ArrayList();
        this.c = null;
        c();
    }

    private static boolean a(String str) {
        return str.matches("Point|MultiPoint|LineString|MultiLineString|Polygon|MultiPolygon|GeometryCollection");
    }

    private static rf a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        try {
            String string;
            LatLngBounds a;
            rg rgVar;
            if (jSONObject.has("id")) {
                string = jSONObject.getString("id");
            } else {
                string = null;
            }
            if (jSONObject.has("bbox")) {
                a = ro.a(jSONObject.getJSONArray("bbox"));
            } else {
                a = null;
            }
            if (!jSONObject.has("geometry") || jSONObject.isNull("geometry")) {
                rgVar = null;
            } else {
                rgVar = ro.b(jSONObject.getJSONObject("geometry"));
            }
            if (jSONObject.has("properties") && !jSONObject.isNull("properties")) {
                hashMap = ro.d(jSONObject.getJSONObject("properties"));
            }
            return new rf(rgVar, string, hashMap, a);
        } catch (JSONException e) {
            Log.w("GeoJsonParser", "Feature could not be successfully parsed " + jSONObject.toString());
            return null;
        }
    }

    private static LatLngBounds a(JSONArray jSONArray) throws JSONException {
        return new LatLngBounds(new LatLng(jSONArray.getDouble(1), jSONArray.getDouble(0)), new LatLng(jSONArray.getDouble(3), jSONArray.getDouble(2)));
    }

    private static rg b(JSONObject jSONObject) {
        try {
            JSONArray jSONArray;
            String string = jSONObject.getString("type");
            if (string.equals("GeometryCollection")) {
                jSONArray = jSONObject.getJSONArray("geometries");
            } else if (!ro.a(string)) {
                return null;
            } else {
                jSONArray = jSONObject.getJSONArray("coordinates");
            }
            return ro.a(string, jSONArray);
        } catch (JSONException e) {
            return null;
        }
    }

    private static rf c(JSONObject jSONObject) {
        rg b = ro.b(jSONObject);
        if (b != null) {
            return new rf(b, null, new HashMap(), null);
        }
        Log.w("GeoJsonParser", "Geometry could not be parsed");
        return null;
    }

    private static HashMap<String, String> d(JSONObject jSONObject) throws JSONException {
        HashMap<String, String> hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashMap.put(str, jSONObject.getString(str));
        }
        return hashMap;
    }

    private static rg a(String str, JSONArray jSONArray) throws JSONException {
        if (str.equals("Point")) {
            return ro.b(jSONArray);
        }
        if (str.equals("MultiPoint")) {
            return ro.c(jSONArray);
        }
        if (str.equals("LineString")) {
            return ro.d(jSONArray);
        }
        if (str.equals("MultiLineString")) {
            return ro.e(jSONArray);
        }
        if (str.equals("Polygon")) {
            return ro.f(jSONArray);
        }
        if (str.equals("MultiPolygon")) {
            return ro.g(jSONArray);
        }
        if (str.equals("GeometryCollection")) {
            return ro.h(jSONArray);
        }
        return null;
    }

    private static rp b(JSONArray jSONArray) throws JSONException {
        return new rp(ro.i(jSONArray));
    }

    private static rm c(JSONArray jSONArray) throws JSONException {
        List arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(ro.b(jSONArray.getJSONArray(i)));
        }
        return new rm(arrayList);
    }

    private static rj d(JSONArray jSONArray) throws JSONException {
        return new rj(ro.j(jSONArray));
    }

    private static rl e(JSONArray jSONArray) throws JSONException {
        List arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(ro.d(jSONArray.getJSONArray(i)));
        }
        return new rl(arrayList);
    }

    private static rr f(JSONArray jSONArray) throws JSONException {
        return new rr(ro.k(jSONArray));
    }

    private static rn g(JSONArray jSONArray) throws JSONException {
        List arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(ro.f(jSONArray.getJSONArray(i)));
        }
        return new rn(arrayList);
    }

    private static rh h(JSONArray jSONArray) throws JSONException {
        List arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            rg b = ro.b(jSONArray.getJSONObject(i));
            if (b != null) {
                arrayList.add(b);
            }
        }
        return new rh(arrayList);
    }

    private static LatLng i(JSONArray jSONArray) throws JSONException {
        return new LatLng(jSONArray.getDouble(1), jSONArray.getDouble(0));
    }

    private static ArrayList<LatLng> j(JSONArray jSONArray) throws JSONException {
        ArrayList<LatLng> arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(ro.i(jSONArray.getJSONArray(i)));
        }
        return arrayList;
    }

    private static ArrayList<ArrayList<LatLng>> k(JSONArray jSONArray) throws JSONException {
        ArrayList<ArrayList<LatLng>> arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(ro.j(jSONArray.getJSONArray(i)));
        }
        return arrayList;
    }

    private void c() {
        try {
            String string = this.a.getString("type");
            rf a;
            if (string.equals("Feature")) {
                a = ro.a(this.a);
                if (a != null) {
                    this.b.add(a);
                }
            } else if (string.equals("FeatureCollection")) {
                this.b.addAll(e(this.a));
            } else if (ro.a(string)) {
                a = ro.c(this.a);
                if (a != null) {
                    this.b.add(a);
                }
            } else {
                Log.w("GeoJsonParser", "GeoJSON file could not be parsed.");
            }
        } catch (JSONException e) {
            Log.w("GeoJsonParser", "GeoJSON file could not be parsed.");
        }
    }

    private ArrayList<rf> e(JSONObject jSONObject) {
        ArrayList<rf> arrayList = new ArrayList();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("features");
            if (jSONObject.has("bbox")) {
                this.c = ro.a(jSONObject.getJSONArray("bbox"));
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.getString("type").equals("Feature")) {
                        rf a = ro.a(jSONObject2);
                        if (a != null) {
                            arrayList.add(a);
                        } else {
                            Log.w("GeoJsonParser", "Index of Feature in Feature Collection that could not be created: " + i);
                        }
                    }
                } catch (JSONException e) {
                    Log.w("GeoJsonParser", "Index of Feature in Feature Collection that could not be created: " + i);
                }
            }
            return arrayList;
        } catch (JSONException e2) {
            Log.w("GeoJsonParser", "Feature Collection could not be created.");
            return arrayList;
        }
    }

    ArrayList<rf> a() {
        return this.b;
    }

    LatLngBounds b() {
        return this.c;
    }
}
