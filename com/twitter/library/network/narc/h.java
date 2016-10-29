package com.twitter.library.network.narc;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.util.collection.b;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class h extends b {
    public String a;
    public f b;
    private final b<AbstractNARCEntry> c;

    public h() {
        this.a = null;
        this.b = new f();
        this.c = new b(Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    public void a(AbstractNARCEntry abstractNARCEntry) {
        this.c.add(abstractNARCEntry);
    }

    public h b() {
        h hVar = new h();
        hVar.a = this.a;
        hVar.b = this.b;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            hVar.a((AbstractNARCEntry) it.next());
        }
        return hVar;
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject.put("log", jSONObject2);
        jSONObject2.put("version", "1.2");
        jSONObject2.put("creator", this.b.a());
        jSONObject2.put("comment", this.a);
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            jSONArray.put(((AbstractNARCEntry) it.next()).a());
        }
        jSONObject2.put("entries", jSONArray);
        if (!this.c.isEmpty()) {
            jSONArray = new JSONArray();
            l lVar = new l();
            lVar.b = ((AbstractNARCEntry) this.c.a()).b;
            jSONArray.put(lVar.a());
            jSONObject2.put("pages", jSONArray);
        }
        return jSONObject;
    }
}
