package defpackage;

import android.content.Context;
import bpx;
import com.twitter.config.d;
import com.twitter.library.api.w;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.b;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.util.aj;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: tv */
public class tv implements tw {
    private final az a;
    private final bg b;
    private final Context c;

    public tv(Context context) {
        this(context, az.a(context), bg.a());
    }

    public tv(Context context, az azVar, bg bgVar) {
        this.a = azVar;
        this.b = bgVar;
        this.c = context.getApplicationContext();
    }

    public void a(Context context, List<String> list, String str, AVMediaPlaylist aVMediaPlaylist) {
        if (aVMediaPlaylist != null) {
            Session c = this.b.c();
            for (String str2 : list) {
                if (aj.b(str2)) {
                    w wVar = new w(context, c);
                    a(wVar, str2, str, aVMediaPlaylist, c);
                    this.a.a(wVar, null);
                }
            }
        }
    }

    public void a() {
    }

    void a(b bVar, String str, String str2, AVMediaPlaylist aVMediaPlaylist, Session session) {
        Object obj = null;
        JSONObject jSONObject = new JSONObject();
        try {
            if (aVMediaPlaylist.h() != null) {
                CharSequence b = d.b(String.format("audio_configurations_macawnymizer_beaconing_integration_key_%s", new Object[]{aVMediaPlaylist.h().toLowerCase()}));
                if (!aj.a(b)) {
                    CharSequence charSequence = b;
                }
            }
            if (obj != null) {
                jSONObject.put("integration", obj);
            }
            if (str2 != null) {
                jSONObject.put("page", str2);
            }
            String c = bpx.c(this.c);
            if (c != null) {
                jSONObject.put("user_agent", c);
            }
            Locale locale = Locale.getDefault();
            if (locale != null) {
                jSONObject.put("locale", locale);
            }
            jSONObject.put("beacon_url", str);
            if (session.d()) {
                jSONObject.put("user_id", Long.toString(session.g()));
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            bVar.b("data", jSONArray.toString());
        } catch (JSONException e) {
        }
    }
}
