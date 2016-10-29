package flow;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;

/* compiled from: Twttr */
public final class k implements Iterable<Object> {
    private final Deque<n> a;

    public static k a(Parcelable parcelable, s sVar) {
        ArrayList parcelableArrayList = ((Bundle) parcelable).getParcelableArrayList("ENTRIES");
        Deque arrayDeque = new ArrayDeque(parcelableArrayList.size());
        Iterator it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle) it.next();
            n nVar = new n(sVar.a(bundle.getParcelable("OBJECT")));
            nVar.b = bundle.getSparseParcelableArray("VIEW_STATE");
            arrayDeque.add(nVar);
        }
        return new k(arrayDeque);
    }

    public Parcelable a(s sVar, o oVar) {
        Bundle bundle = new Bundle();
        Object arrayList = new ArrayList(this.a.size());
        Iterator descendingIterator = this.a.descendingIterator();
        while (descendingIterator.hasNext()) {
            n nVar = (n) descendingIterator.next();
            if (oVar.a(nVar.a)) {
                arrayList.add(nVar.a(sVar));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Collections.reverse(arrayList);
        bundle.putParcelableArrayList("ENTRIES", arrayList);
        return bundle;
    }

    public static m a() {
        return new m(Collections.emptyList(), null);
    }

    public static k a(Object obj) {
        return a().a(obj).e();
    }

    private k(Deque<n> deque) {
        boolean z;
        if (deque == null || deque.isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        r.a(z, "History may not be empty", new Object[0]);
        this.a = deque;
    }

    public Iterator<Object> iterator() {
        return new p(this.a.iterator());
    }

    public <T> Iterator<T> b() {
        return new p(this.a.descendingIterator());
    }

    public int c() {
        return this.a.size();
    }

    public <T> T d() {
        return ((n) this.a.peek()).a;
    }

    public t e() {
        return (t) this.a.peek();
    }

    public m f() {
        return new m(this.a, null);
    }

    public String toString() {
        return this.a.toString();
    }
}
