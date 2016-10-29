package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

@oi
public class si {
    public static <A, B> sm<B> a(sm<A> smVar, sl<A, B> slVar) {
        sg sgVar = new sg();
        smVar.a(new sj(sgVar, slVar, smVar));
        return sgVar;
    }

    public static <V> sm<List<V>> a(List<sm<V>> list) {
        sg sgVar = new sg();
        int size = list.size();
        AtomicInteger atomicInteger = new AtomicInteger(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((sm) it.next()).a(new sk(atomicInteger, size, sgVar, list));
        }
        return sgVar;
    }

    private static <V> List<V> c(List<sm<V>> list) throws ExecutionException, InterruptedException {
        List<V> arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object obj = ((sm) it.next()).get();
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
