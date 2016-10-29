package com.twitter.model.core;

import com.twitter.model.core.MediaEntity.Type;
import com.twitter.util.serialization.n;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class z extends j<MediaEntity> {
    public static final n<z> a;
    private static final z b;

    static {
        a = new ac();
        b = new z(com.twitter.util.collection.n.g());
    }

    public static z e() {
        return b;
    }

    public static z b(List<MediaEntity> list) {
        return (z) ((ab) new ab(list.size()).a((Iterable) list)).q();
    }

    z(List<MediaEntity> list) {
        super(list);
    }

    public MediaEntity a(long j) {
        Iterator it = iterator();
        while (it.hasNext()) {
            MediaEntity mediaEntity = (MediaEntity) it.next();
            if (mediaEntity.c == j) {
                return mediaEntity;
            }
        }
        return null;
    }

    public boolean f() {
        Iterator it = iterator();
        while (it.hasNext()) {
            if (((MediaEntity) it.next()).u) {
                return true;
            }
        }
        return false;
    }

    public boolean a(Type type) {
        Iterator it = iterator();
        while (it.hasNext()) {
            if (((MediaEntity) it.next()).m == type) {
                return true;
            }
        }
        return false;
    }
}
