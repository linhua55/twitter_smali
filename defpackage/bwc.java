package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import bvy;
import com.twitter.library.geo.provider.param.a;
import com.twitter.util.al;
import com.twitter.util.collection.n;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: bwc */
public class bwc implements bwy {
    private static bwc a;
    private final Context b;
    private bvy c;
    private final List<Location> d;
    private int e;
    private final Handler f;
    private Location g;
    private boolean h;

    public static synchronized bwc a(Context context) {
        bwc bwc;
        synchronized (bwc.class) {
            if (a == null) {
                a = new bwc(context);
            }
            bwc = a;
        }
        return bwc;
    }

    private bwc(Context context) {
        this.e = -1;
        this.b = context.getApplicationContext();
        this.f = new bwd(Looper.getMainLooper(), this);
        SharedPreferences sharedPreferences = context.getSharedPreferences("geo_mock_locations_file", 0);
        if (sharedPreferences.contains("geo_mock_locations")) {
            this.d = bwc.a(sharedPreferences.getString("geo_mock_locations", TtmlNode.ANONYMOUS_REGION_ID));
        } else {
            this.d = new ArrayList();
        }
        this.h = sharedPreferences.getBoolean("geo_mock_null_location", false);
    }

    private static List<Location> a(String str) {
        List<Location> arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    Location location = new Location(jSONObject.getString("Source"));
                    location.setLatitude(jSONObject.getDouble("Latitude"));
                    location.setLongitude(jSONObject.getDouble("Longitude"));
                    location.setTime(jSONObject.getLong("Timestamp"));
                    if (jSONObject.has("H-Accuracy")) {
                        location.setAccuracy((float) jSONObject.getDouble("H-Accuracy"));
                    }
                    if (jSONObject.has("Altitude")) {
                        location.setAltitude(jSONObject.getDouble("Altitude"));
                    }
                    if (jSONObject.has("Bearing")) {
                        location.setBearing((float) jSONObject.getDouble("Bearing"));
                    }
                    if (jSONObject.has("Speed")) {
                        location.setSpeed((float) jSONObject.getDouble("Speed"));
                    }
                    arrayList.add(location);
                } catch (JSONException e) {
                }
            }
        } catch (JSONException e2) {
        }
        return arrayList;
    }

    public void a() {
        JSONArray jSONArray = new JSONArray();
        for (Location location : this.d) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("Latitude", location.getLatitude());
                jSONObject.put("Longitude", location.getLongitude());
                jSONObject.put("Timestamp", location.getTime());
                jSONObject.put("Source", location.getProvider());
                if (location.hasAccuracy()) {
                    jSONObject.put("H-Accuracy", (double) location.getAccuracy());
                }
                if (location.hasAltitude()) {
                    jSONObject.put("Altitude", location.getAltitude());
                }
                if (location.hasBearing()) {
                    jSONObject.put("Bearing", (double) location.getBearing());
                }
                if (location.hasSpeed()) {
                    jSONObject.put("Speed", (double) location.getSpeed());
                }
            } catch (JSONException e) {
            }
            jSONArray.put(jSONObject);
        }
        this.b.getSharedPreferences("geo_mock_locations_file", 0).edit().putString("geo_mock_locations", jSONArray.toString()).apply();
    }

    public synchronized void a(Location location) {
        if (location != null) {
            this.d.add(location);
            i().a(true);
            if (this.g == null) {
                this.g = location;
            }
        }
    }

    public synchronized void b(Location location) {
        this.d.remove(location);
        if (this.d.isEmpty() && !this.h) {
            i().a(false);
        }
    }

    public synchronized void b() {
        this.d.clear();
        i().a(false);
        a();
    }

    public synchronized void a(Location location, Location location2) {
        int indexOf = this.d.indexOf(location);
        if (indexOf != -1) {
            this.d.set(indexOf, location2);
        }
    }

    public synchronized boolean c() {
        return this.h;
    }

    public synchronized void a(boolean z) {
        if (this.h != z) {
            bvy i = i();
            if (z) {
                i.a(true);
                i.g();
            } else if (!d()) {
                i.a(false);
            }
            this.b.getSharedPreferences("geo_mock_locations_file", 0).edit().putBoolean("geo_mock_null_location", z).apply();
            this.h = z;
        }
    }

    public synchronized boolean d() {
        return !this.d.isEmpty();
    }

    public List<Location> e() {
        return n.a(this.d);
    }

    public synchronized Location f() {
        Location location;
        if (this.h) {
            location = null;
        } else {
            location = this.g;
        }
        return location;
    }

    public void g() {
        this.e = -1;
        this.f.sendEmptyMessageDelayed(0, 2000);
    }

    public void h() {
        this.f.removeMessages(0);
    }

    public void a(a aVar) {
    }

    protected synchronized void a(Message message) {
        if (message.what == 0 && !this.d.isEmpty()) {
            if (!this.h) {
                this.e = (this.e + 1) % this.d.size();
                Location location = (Location) this.d.get(this.e);
                location.setTime(al.b());
                i().a(location);
                this.g = location;
            }
            this.f.sendEmptyMessageDelayed(0, 2000);
        }
    }

    private bvy i() {
        if (this.c == null) {
            this.c = bvy.a(this.b);
        }
        return this.c;
    }
}
