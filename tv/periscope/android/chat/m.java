package tv.periscope.android.chat;

import de.greenrobot.event.c;
import defpackage.dcf;
import java.util.Map;
import java.util.Queue;
import tv.periscope.android.library.p;
import tv.periscope.android.player.e;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.Throttle;

/* compiled from: Twttr */
class m extends h<Message> {
    private final c a;
    private final String b;
    private e c;
    private boolean d;
    private boolean e;

    public m(e eVar, c cVar, i iVar, String str) {
        super(new o(), iVar);
        this.e = false;
        this.a = cVar;
        this.c = eVar;
        this.b = str;
    }

    protected void a() {
        super.a();
        this.c = null;
    }

    public void a(Map<Throttle, j<Message>> map, Map<Throttle, j<Message>> map2) throws Exception {
        int i = 0;
        int size = map.size();
        long j = 200;
        for (j jVar : map.values()) {
            a((Object) (Message) jVar.a.poll(), jVar.b);
        }
        for (j jVar2 : map2.values()) {
            long j2;
            int i2;
            Message message = (Message) jVar2.a.poll();
            if (message == null) {
                j2 = j;
                i2 = i + 1;
            } else {
                a(jVar2.b);
                if (jVar2.a()) {
                    e(message);
                    j2 = Math.min(j, jVar2.c());
                    i2 = i;
                } else {
                    jVar2.a.offer(message);
                    j2 = Math.min(j, jVar2.b());
                    i2 = i;
                }
            }
            i = i2;
            j = j2;
        }
        if (i >= size) {
            d();
        } else {
            a(j);
        }
    }

    public boolean a(Message message) {
        if (message.b() == MessageType.Chat && message.b() == MessageType.Heart) {
            return b(message);
        }
        return true;
    }

    public boolean a(Throttle throttle, Queue<Message> queue, Message message) {
        if ((throttle == Throttle.c || throttle == Throttle.b) && queue.size() > throttle.minQueueSizeForDrop && dcf.a(message.e()) - this.c.p() < throttle.deliveryThresholdMs) {
            return true;
        }
        return false;
    }

    private void e(Message message) {
        long p = this.c.p();
        long a = dcf.a(message.e());
        long currentTimeMillis = System.currentTimeMillis();
        p = (p - currentTimeMillis) + a;
        if (this.e) {
            switch (n.a[message.b().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    f(message);
                default:
            }
        } else if (b(message)) {
            f(message);
        } else if (this.d && currentTimeMillis >= p) {
            if (message.b() == MessageType.BroadcastEnded) {
                this.e = true;
            }
            f(message);
        } else if (message.b() == MessageType.Location) {
            f(message);
        } else if (message.b() == MessageType.BroadcasterBlockedViewer && this.b.equals(message.s())) {
            f(message);
        } else {
            c(message.b().throttle, message);
        }
    }

    protected boolean b(Message message) {
        return this.c.p() >= dcf.a(message.e());
    }

    private void f(Message message) {
        this.a.c(message);
    }

    public void c(Message message) {
        b(message.b().throttle, message);
    }

    public void d(Message message) {
        a(message.b().throttle, (Object) message);
    }

    void a(boolean z) {
        this.d = z;
    }
}
