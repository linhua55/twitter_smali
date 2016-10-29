package defpackage;

import android.content.Context;
import com.twitter.library.av.g;
import com.twitter.model.av.AVMediaPlaylist;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: tt */
public class tt implements tw {
    private final g a;

    public tt() {
        this(g.a());
    }

    tt(g gVar) {
        this.a = gVar;
    }

    public void a(Context context, List<String> list, String str, AVMediaPlaylist aVMediaPlaylist) {
        new tu(aVMediaPlaylist, list, str, this.a).a(context);
    }

    public void a() {
        this.a.d();
    }
}
