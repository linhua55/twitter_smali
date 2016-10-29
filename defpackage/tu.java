package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.av.g;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.j;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.util.aj;
import com.twitter.util.i;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: tu */
final class tu extends i<Context, Void, Void> {
    private final AVMediaPlaylist a;
    private final List<String> b;
    private final String c;
    private final g d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Context[]) objArr);
    }

    tu(AVMediaPlaylist aVMediaPlaylist, List<String> list, String str, g gVar) {
        this.a = aVMediaPlaylist;
        this.b = list;
        this.c = str;
        this.d = gVar;
    }

    protected Void a(Context... contextArr) {
        Context context = contextArr[0];
        Session c = bg.a().c();
        for (String str : this.b) {
            if (aj.b(str)) {
                new j(context, this.d.a(c, str, this.c, this.a)).a(RequestMethod.a).a().c();
            }
        }
        return null;
    }
}
