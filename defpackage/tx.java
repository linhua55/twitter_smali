package defpackage;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
/* renamed from: tx */
public class tx {
    static tx a;
    private final tw b;
    private final tw c;

    public static tx a(Context context) {
        if (a == null) {
            a = new tx(new tv(context), new tt());
        }
        return a;
    }

    tx(tv tvVar, tt ttVar) {
        this.b = tvVar;
        this.c = ttVar;
    }

    public tw a(AVMedia aVMedia) {
        if (b(aVMedia)) {
            return this.b;
        }
        return this.c;
    }

    boolean b(AVMedia aVMedia) {
        return "audio".equals(aVMedia.b()) && d.a("audio_configurations_macawnymizer_beaconing_enabled");
    }

    public void a() {
        this.b.a();
        this.c.a();
    }
}
