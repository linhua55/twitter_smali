package defpackage;

import com.twitter.model.moments.viewmodels.MomentPage;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aiu */
public class aiu implements amz<MomentPage> {
    private List<MomentPage> a;

    public /* synthetic */ Object b(int i) {
        return a(i);
    }

    public aiu(List<MomentPage> list) {
        this.a = a((Collection) list);
    }

    public int a() {
        return this.a.size();
    }

    public MomentPage a(int i) {
        return (MomentPage) this.a.get(i);
    }

    public int a(MomentPage momentPage) {
        return 0;
    }

    public void a(List<MomentPage> list) {
        this.a = a((Collection) list);
    }

    public void a(int i, int i2) {
        this.a.add(i2, (MomentPage) this.a.remove(i));
    }

    private List<MomentPage> a(Collection<MomentPage> collection) {
        return new LinkedList(collection);
    }
}
