package tv.periscope.android.exoplayer.player;

import android.content.Context;

/* compiled from: Twttr */
public class c implements k {
    private final Context a;
    private final String b;
    private final String c;
    private d d;

    public c(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    public void a(e eVar) {
        this.d = new d(this.a, this.b, this.c, eVar);
        this.d.a();
    }

    public void a() {
        if (this.d != null) {
            this.d.b();
            this.d = null;
        }
    }
}
