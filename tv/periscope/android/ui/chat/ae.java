package tv.periscope.android.ui.chat;

import defpackage.dbx;
import defpackage.dby;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import tv.periscope.android.library.p;
import tv.periscope.chatman.api.Occupant;
import tv.periscope.chatman.model.Presence;
import tv.periscope.chatman.model.Roster;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
public class ae {
    private WeakReference<ah> a;
    private WeakReference<ai> b;
    private WeakReference<ag> c;
    private final String d;
    private final dby e;
    private final dbx f;
    private final HashMap<String, Integer> g;
    private final ao h;
    private final boolean i;

    public ae(dby dby, dbx dbx, boolean z, String str) {
        this.g = new HashMap();
        this.e = dby;
        this.f = dbx;
        this.i = z;
        this.d = str;
        this.h = new ao(25, 500, 4);
    }

    public void a(ah ahVar) {
        this.a = new WeakReference(ahVar);
    }

    public void a(ai aiVar) {
        this.b = new WeakReference(aiVar);
    }

    public void a(ag agVar) {
        this.c = new WeakReference(agVar);
    }

    private ah b() {
        if (this.a != null) {
            return (ah) this.a.get();
        }
        return null;
    }

    private ai c() {
        if (this.b != null) {
            return (ai) this.b.get();
        }
        return null;
    }

    private ag d() {
        if (this.c != null) {
            return (ag) this.c.get();
        }
        return null;
    }

    public void a() {
        this.g.clear();
    }

    public void onEventMainThread(Message message) {
        ah b = b();
        ai c = c();
        ag d = d();
        if (b != null && c != null && d != null) {
            switch (af.a[message.b().ordinal()]) {
                case p.View_android_focusable /*1*/:
                case p.View_paddingStart /*2*/:
                case p.View_paddingEnd /*3*/:
                case p.View_theme /*4*/:
                    b.b(message);
                case p.Toolbar_contentInsetStart /*5*/:
                    a(message, b);
                    a(message, c);
                case p.Toolbar_contentInsetEnd /*6*/:
                    b(message, b);
                case p.Toolbar_contentInsetLeft /*7*/:
                    d.L();
                case p.Toolbar_contentInsetRight /*8*/:
                    b.b(message);
                    a(message, d);
                case p.Toolbar_popupTheme /*9*/:
                    if (this.i) {
                        String A = message.A();
                        if (this.g.containsKey(A)) {
                            this.g.put(A, Integer.valueOf(((Integer) this.g.get(A)).intValue() + 1));
                        } else {
                            this.g.put(A, Integer.valueOf(1));
                        }
                        b.c(message);
                    }
                default:
            }
        }
    }

    private void a(Message message, ag agVar) {
        if (this.e.c(message.s())) {
            agVar.b(message);
        }
    }

    private void a(List<Occupant> list, ai aiVar) {
        if (list != null && this.d != null) {
            tv.periscope.model.p a = this.f.a(this.d);
            if (a != null) {
                List arrayList = new ArrayList();
                for (Occupant occupant : list) {
                    if (!occupant.userId.equals(a.o()) && this.e.b(occupant.userId)) {
                        arrayList.add(occupant);
                    }
                }
                aiVar.a(arrayList);
            }
        }
    }

    public void onEventMainThread(Roster roster) {
        ai c = c();
        if (c != null) {
            c.b(roster.a());
            a(roster.a(), c);
        }
    }

    public void onEventMainThread(Presence presence) {
        ai c = c();
        if (c != null) {
            c.a(Math.max(presence.a() - 1, 0));
            c.b(Math.max(presence.b() - 1, 0));
        }
    }

    public int a(String str) {
        if (this.g.containsKey(str)) {
            return ((Integer) this.g.get(str)).intValue();
        }
        return 0;
    }

    private void a(Message message, ai aiVar) {
        if (!this.e.c(message.c())) {
            aiVar.a(message.c(), message.d().intValue(), false);
        }
    }

    private void a(Message message, ah ahVar) {
        if (!this.h.a()) {
            ahVar.a(message, false);
        }
    }

    private void b(Message message, ah ahVar) {
        if (!this.e.c(message.c())) {
            ahVar.b(message, false);
        }
    }
}
