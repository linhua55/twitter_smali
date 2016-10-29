package tv.periscope.android.ui.broadcast;

import android.support.annotation.Nullable;
import defpackage.dcv;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class c {
    String a;
    Map<String, e> b;
    String c;
    String d;
    final /* synthetic */ a e;
    private e f;

    c(a aVar) {
        this.e = aVar;
        this.b = new HashMap();
    }

    void a(@Nullable String str) {
        if (!(this.f == null || this.f.b())) {
            b();
        }
        this.c = str;
        e eVar = new e(this.e, str);
        this.f = eVar;
        eVar.c();
    }

    void b(String str) {
        if (this.f != null && this.f.a == null) {
            this.f.a = str;
            this.b.put(str, this.f);
        }
    }

    void a() {
        if (this.e.e.playable) {
            if (this.e.d != null) {
                dcv.e("BLCM", "Preparing ping, with " + this.e.g.b() + " hearts given and " + this.e.g.c() + " comments sent.");
            }
            if (this.f != null) {
                this.f.d();
            }
        }
    }

    void b() {
        if (this.f != null) {
            this.f.a();
        }
    }

    void c(String str) {
        e eVar = (e) this.b.get(str);
        if (eVar != null) {
            eVar.a(true);
            this.b.remove(str);
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" [ mSessions: ");
        for (String str : this.b.keySet()) {
            stringBuilder.append(" { ").append(((e) this.b.get(str)).toString()).append("}. \n");
        }
        stringBuilder.append(" ]");
        return stringBuilder.toString();
    }
}
