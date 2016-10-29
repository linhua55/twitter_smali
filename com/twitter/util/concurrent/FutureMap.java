package com.twitter.util.concurrent;

import com.twitter.util.collection.ImmutableCollection;
import com.twitter.util.collection.ImmutableSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class FutureMap<ID, FV> extends HashMap<ID, Future<FV>> {
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a(obj, (Future) obj2);
    }

    public /* synthetic */ Object remove(Object obj) {
        return a(obj);
    }

    public Future<FV> a(ID id, Future<FV> future) {
        Future<FV> future2 = (Future) super.put(id, future);
        if (!(future2 == null || future2 == future)) {
            future2.cancel(true);
        }
        return future2;
    }

    public Future<FV> a(Object obj) {
        Future<FV> future = (Future) super.remove(obj);
        if (future != null) {
            future.cancel(true);
        }
        return future;
    }

    public void clear() {
        for (Future future : values()) {
            if (future != null) {
                future.cancel(true);
            }
        }
        super.clear();
    }

    public Set<ID> keySet() {
        return ImmutableSet.a(super.keySet());
    }

    public Collection<Future<FV>> values() {
        return ImmutableCollection.a(super.values());
    }

    public Set<Entry<ID, Future<FV>>> entrySet() {
        return ImmutableSet.a(super.entrySet());
    }
}
