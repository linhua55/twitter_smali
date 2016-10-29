package tv.periscope.android.chat;

import android.support.annotation.NonNull;
import com.codahale.metrics.Histogram;
import defpackage.dcf;
import defpackage.dcv;
import defpackage.dde;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.api.PsMessage;
import tv.periscope.chatman.c;
import tv.periscope.chatman.model.Ban;
import tv.periscope.chatman.model.Presence;
import tv.periscope.chatman.model.Roster;
import tv.periscope.chatman.model.q;
import tv.periscope.chatman.model.r;
import tv.periscope.model.chat.ChatEvent;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
class e implements c {
    private final de.greenrobot.event.c a;
    private final Histogram b;

    public e(de.greenrobot.event.c cVar, Histogram histogram) {
        this.a = cVar;
        this.b = histogram;
    }

    public void a(String str) {
        this.a.c(ChatRoomEvent.JOINED);
    }

    public void b(String str) {
        this.a.c(ChatRoomEvent.REJOINED);
    }

    public void c(String str) {
        this.a.c(ChatRoomEvent.PARTED);
    }

    public void a(q qVar) {
        Message toMessage = ((PsMessage) dde.a.a(qVar.b(), PsMessage.class)).toMessage(qVar);
        BigInteger u = toMessage.u();
        if (u != null) {
            long a = dcf.a();
            if (a > 0) {
                a = Math.max(0, a - dcf.a(u));
                dcv.a("CM", "received message, latency=" + a);
                if (a > 0) {
                    synchronized (this.b) {
                        this.b.update(a);
                    }
                }
            }
        }
        this.a.c(ChatEvent.a(toMessage));
    }

    public void a(Roster roster) {
        this.a.c(roster);
    }

    public void a(Presence presence) {
        this.a.c(presence);
    }

    public void a(@NonNull Ban ban) {
        this.a.c(ban);
    }

    public void a(r rVar, boolean z) {
        List arrayList = new ArrayList();
        for (q qVar : rVar.a()) {
            arrayList.add(new w(((PsMessage) dde.a.a(qVar.b(), PsMessage.class)).toMessage(qVar), qVar.d()));
        }
        this.a.c(new EventHistory(arrayList, z, rVar.b(), rVar.c(), rVar.d()));
    }
}
