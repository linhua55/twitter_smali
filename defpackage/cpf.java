package defpackage;

import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ab;
import com.twitter.model.core.ag;
import com.twitter.model.core.bc;
import com.twitter.model.core.e;
import com.twitter.model.core.x;
import com.twitter.model.core.z;
import com.twitter.util.collection.n;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cpf */
public class cpf {
    public static List<ag> a(Iterable<MediaEntity> iterable) {
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return n.g();
        }
        MediaEntity mediaEntity = (MediaEntity) it.next();
        if (!it.hasNext()) {
            return mediaEntity.p;
        }
        n c = n.e().c(mediaEntity.p);
        while (it.hasNext()) {
            c.c(((MediaEntity) it.next()).p);
        }
        return (List) c.q();
    }

    public static List<ag> a(List<? extends bc> list) {
        if (list.isEmpty()) {
            return n.g();
        }
        if (list.size() == 1) {
            return ((bc) list.get(0)).b();
        }
        n e = n.e();
        for (bc b : list) {
            e.c(b.b());
        }
        return (List) e.q();
    }

    public static boolean a(List<MediaEntity> list, long j) {
        return cpf.b(cpf.a((Iterable) list), j) != null;
    }

    public static ag b(List<ag> list, long j) {
        for (ag agVar : list) {
            if (agVar.b == j) {
                return agVar;
            }
        }
        return null;
    }

    public static z a(z zVar, List<Long> list, Set<Long> set) {
        ab abVar = new ab();
        Iterator it = zVar.iterator();
        Object obj = null;
        while (it.hasNext()) {
            e eVar;
            Object obj2;
            e eVar2;
            e eVar3 = (MediaEntity) it.next();
            if (list.contains(Long.valueOf(eVar3.c)) && !eVar3.p.isEmpty()) {
                List a = cpf.a(eVar3.p, (Set) set);
                if (a != eVar3.p) {
                    eVar = (MediaEntity) new x(eVar3).b(a).q();
                    obj2 = 1;
                    eVar2 = eVar;
                    abVar.a(eVar2);
                    obj = obj2;
                }
            }
            eVar = eVar3;
            obj2 = obj;
            eVar2 = eVar;
            abVar.a(eVar2);
            obj = obj2;
        }
        return obj != null ? (z) abVar.q() : zVar;
    }

    private static List<ag> a(List<ag> list, Set<Long> set) {
        n a = n.a(list.size());
        for (Object obj : list) {
            if (!set.contains(Long.valueOf(obj.b))) {
                a.c(obj);
            }
        }
        return a.i() != list.size() ? (List) a.q() : list;
    }

    public static long[] b(List<ag> list) {
        int size = list.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((ag) list.get(i)).b;
        }
        return jArr;
    }
}
