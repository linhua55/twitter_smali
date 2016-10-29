package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.overlay.zzk;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@oi
public final class gb implements fj {
    private final Map<sz, Integer> a;

    public gb() {
        this.a = new WeakHashMap();
    }

    private static int a(Context context, Map<String, String> map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                i = aa.a().a(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                b.d("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        return i;
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("action");
        if (str == null) {
            b.d("Action missing from video GMSG.");
            return;
        }
        if (b.a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            b.a("Video GMSG: " + str + " " + jSONObject.toString());
        }
        String str2;
        if ("background".equals(str)) {
            str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                b.d("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                int parseColor = Color.parseColor(str2);
                sy v = szVar.v();
                if (v != null) {
                    zzk a = v.a();
                    if (a != null) {
                        a.setBackgroundColor(parseColor);
                        return;
                    }
                }
                this.a.put(szVar, Integer.valueOf(parseColor));
                return;
            } catch (IllegalArgumentException e) {
                b.d("Invalid color parameter in video GMSG.");
                return;
            }
        }
        sy v2 = szVar.v();
        if (v2 == null) {
            b.d("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        int a2;
        int a3;
        if (equals || equals2) {
            int parseInt;
            Context context = szVar.getContext();
            int a4 = a(context, map, "x", 0);
            a2 = a(context, map, "y", 0);
            a3 = a(context, map, "w", -1);
            int a5 = a(context, map, "h", -1);
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                parseInt = 0;
            }
            if (equals && v2.a() == null) {
                v2.a(a4, a2, a3, a5, parseInt);
                if (this.a.containsKey(szVar)) {
                    a4 = ((Integer) this.a.get(szVar)).intValue();
                    zzk a6 = v2.a();
                    a6.setBackgroundColor(a4);
                    a6.l();
                    return;
                }
                return;
            }
            v2.a(a4, a2, a3, a5);
            return;
        }
        zzk a7 = v2.a();
        if (a7 == null) {
            zzk.a(szVar);
        } else if ("click".equals(str)) {
            Context context2 = szVar.getContext();
            a2 = a(context2, map, "x", 0);
            a3 = a(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) a2, (float) a3, 0);
            a7.a(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            str2 = (String) map.get("time");
            if (str2 == null) {
                b.d("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                a7.a((int) (Float.parseFloat(str2) * 1000.0f));
            } catch (NumberFormatException e3) {
                b.d("Could not parse time parameter from currentTime video GMSG: " + str2);
            }
        } else if ("hide".equals(str)) {
            a7.setVisibility(4);
        } else if ("load".equals(str)) {
            a7.g();
        } else if ("mimetype".equals(str)) {
            a7.setMimeType((String) map.get("mimetype"));
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                a7.j();
            } else {
                a7.k();
            }
        } else if ("pause".equals(str)) {
            a7.h();
        } else if ("play".equals(str)) {
            a7.i();
        } else if ("show".equals(str)) {
            a7.setVisibility(0);
        } else if ("src".equals(str)) {
            a7.a((String) map.get("src"));
        } else if ("volume".equals(str)) {
            str2 = (String) map.get("volume");
            if (str2 == null) {
                b.d("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                a7.a(Float.parseFloat(str2));
            } catch (NumberFormatException e4) {
                b.d("Could not parse volume parameter from volume video GMSG: " + str2);
            }
        } else if ("watermark".equals(str)) {
            a7.l();
        } else {
            b.d("Unknown video action: " + str);
        }
    }
}
