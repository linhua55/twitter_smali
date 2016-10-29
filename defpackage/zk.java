package defpackage;

import android.support.v4.app.Fragment;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: zk */
public class zk implements zj {
    private final List<zj> a;

    public zk() {
        this.a = new LinkedList();
    }

    public void a(zj zjVar) {
        this.a.add(zjVar);
    }

    public void a(Fragment fragment) {
        for (zj zjVar : this.a) {
            if (zjVar.b(fragment)) {
                zjVar.a(fragment);
            }
        }
    }

    public void b(Fragment fragment, int i) {
        for (zj zjVar : this.a) {
            if (zjVar.b(fragment)) {
                zjVar.a(fragment);
            }
        }
    }

    public void a(Fragment fragment, int i) {
        for (zj zjVar : this.a) {
            if (zjVar.b(fragment)) {
                zjVar.a(fragment, i);
            }
        }
    }

    public boolean b(Fragment fragment) {
        for (zj b : this.a) {
            if (b.b(fragment)) {
                return true;
            }
        }
        return false;
    }
}
