package defpackage;

import arj;
import aru;
import java.util.Comparator;

/* compiled from: Twttr */
/* renamed from: arv */
class arv implements Comparator<arj> {
    final /* synthetic */ aru a;

    arv(aru aru) {
        this.a = aru;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((arj) obj, (arj) obj2);
    }

    public int a(arj arj, arj arj2) {
        return arj.f < arj2.f ? -1 : 1;
    }
}
