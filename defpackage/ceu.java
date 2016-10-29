package defpackage;

import com.twitter.android.timeline.ar;
import com.twitter.android.timeline.bb;
import com.twitter.internal.android.widget.GroupedRowView;

/* compiled from: Twttr */
/* renamed from: ceu */
public class ceu {
    public static boolean a(bb bbVar) {
        return !ceu.b(bbVar);
    }

    public static boolean b(bb bbVar) {
        return bbVar.c().b == 14;
    }

    public static cev c(bb bbVar) {
        boolean z;
        boolean z2 = true;
        ar c = bbVar.c();
        if (ceu.b(bbVar)) {
            z = !c.e;
            if (c.f) {
                z2 = false;
            }
        } else {
            z = bbVar.b.o();
        }
        return cev.a(z, z2);
    }

    public static void a(GroupedRowView groupedRowView, cev cev) {
        groupedRowView.setSingle(false);
        if (cev.b) {
            groupedRowView.setStyle(0);
        } else if (cev.a) {
            groupedRowView.setStyle(3);
        } else {
            groupedRowView.setStyle(2);
        }
    }
}
