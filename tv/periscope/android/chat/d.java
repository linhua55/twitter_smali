package tv.periscope.android.chat;

import com.codahale.metrics.Histogram;
import com.codahale.metrics.UniformReservoir;
import de.greenrobot.event.c;
import defpackage.dcv;
import defpackage.ddg;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.api.PsMessage;
import tv.periscope.android.player.PlayMode;
import tv.periscope.chatman.a;
import tv.periscope.model.StreamType;
import tv.periscope.model.chat.Message;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class d {
    private final Histogram a;
    private final String b;
    private a c;

    private d(String str) {
        this.a = new Histogram(new UniformReservoir());
        this.b = str;
    }

    public static d a(String str) {
        return new d(str);
    }

    public void a(c cVar, u uVar, StreamType streamType, PlayMode playMode, LogLevel logLevel) {
        int g = uVar.g();
        if (playMode.replayable) {
            g &= -2;
        }
        String e = uVar.e();
        String f = uVar.f();
        String b = uVar.b();
        if (g > 0 && ddg.b(e) && ddg.b(f) && ddg.b(b)) {
            this.c = a.a(new e(cVar, this.a), e, f, g, logLevel, this.b);
            this.c.a(b);
            dcv.e("CM", "Subscribed to ChatMan: YES");
            dcv.e("CM", "ChatMan: joining room " + b);
        } else {
            dcv.e("CM", "Subscribed to ChatMan: NO");
        }
        dcv.e("CM", "room=" + b + ", endpoint=" + f + ", token=" + e + ", perms={cm=" + g + "}" + ", subs={cm=" + (this.c != null ? 1 : 0) + "}" + ", stream-type=" + streamType);
    }

    public void a(f fVar, String str, long j, String str2) {
        a(str, j, str2);
    }

    void a(String str, long j, String str2) {
        if (this.c != null && str != null) {
            if (j >= 0 || str2 != null) {
                dcv.e("CM", "ChatMan: fetching history");
                this.c.a(str, j, str2);
            }
        }
    }

    public void a(Message message) {
        Object psMessage = new PsMessage(message);
        if (this.c != null) {
            dcv.e("CM", "ChatMan: sending message " + psMessage.type);
            this.c.a(psMessage);
        }
    }

    public void a(f fVar) {
        if (this.c != null) {
            dcv.e("CM", "ChatMan: roster");
            this.c.b(fVar.a);
        }
    }

    public void a() {
        if (this.c != null) {
            this.c.a();
            this.c = null;
        }
    }
}
