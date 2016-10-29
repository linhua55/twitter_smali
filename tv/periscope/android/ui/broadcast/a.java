package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import android.os.Message;
import android.support.annotation.Nullable;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.ui.chat.y;
import tv.periscope.model.ac;
import tv.periscope.model.p;

/* compiled from: Twttr */
public class a {
    private static final long a;
    private final d b;
    private final ApiManager c;
    private final ac d;
    private PlayMode e;
    private c f;
    private y g;
    private String h;

    static {
        a = TimeUnit.SECONDS.toMillis(30);
    }

    public a(ApiManager apiManager, @Nullable ac acVar, PlayMode playMode, @Nullable Activity activity) {
        this.c = apiManager;
        this.d = acVar;
        this.e = playMode;
        if (activity == null) {
            this.b = null;
        } else {
            this.b = new d(activity, null);
        }
    }

    public void a(y yVar) {
        this.g = yVar;
    }

    public void a(String str) {
        if (this.f == null) {
            this.f = new c(this);
            this.f.a = str;
            if (this.b != null) {
                this.b.a(this.f);
            }
            this.c.getAccessVideo(null, str);
            return;
        }
        this.c.getAccessVideo(this.f.c, str);
    }

    public void a(ac acVar, p pVar, boolean z) {
        this.c.getBroadcastViewers(pVar.o(), pVar.c());
        if (this.f.d == null || !this.f.d.equals(acVar.a())) {
            this.f.d = acVar.a();
            d(this.f.d);
        }
        if (!acVar.b().equals(this.f.c)) {
            if (this.f.c == null) {
                this.f.c = acVar.b();
                if (z) {
                    a();
                    return;
                }
                return;
            }
            this.f.c = acVar.b();
            a();
        }
    }

    public void a() {
        if (this.f != null) {
            this.f.a(this.f.c);
        }
    }

    public void b(String str) {
        this.f.b(str);
        if (this.b != null) {
            this.b.removeMessages(123);
            this.b.sendMessageDelayed(Message.obtain(this.b, 123), a);
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.removeMessages(123);
        }
        if (this.f != null) {
            this.f.b();
        }
    }

    public void c(String str) {
        this.f.c(str);
    }

    public void d(String str) {
        this.h = this.c.getAccessChat(str);
    }

    public boolean e(String str) {
        return str.equals(this.h);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{ BroadcastLifeCyleManager:\n").append("{ mCurrentLifeCycle:\n");
        if (this.f == null) {
            stringBuilder.append(" null \n");
        } else {
            stringBuilder.append(this.f.toString());
        }
        stringBuilder.append(" } \n").append(" } \n").append("\n");
        return stringBuilder.toString();
    }
}
