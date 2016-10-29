package com.twitter.util.collection;

import com.twitter.android.mx;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class MutableSet {

    /* compiled from: Twttr */
    class ExternalizableHashSet<T> extends HashSet<T> implements Externalizable {
        private static final long serialVersionUID = 5404267842014521568L;

        ExternalizableHashSet(int i) {
            super(i);
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeInt(size());
            Iterator it = iterator();
            while (it.hasNext()) {
                objectOutput.writeObject(it.next());
            }
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                add(ObjectUtils.a(objectInput.readObject()));
            }
        }
    }

    /* compiled from: Twttr */
    class ExternalizableTreeSet<T> extends TreeSet<T> implements au<T> {
        ExternalizableTreeSet(Comparator<? super T> comparator) {
            super(comparator);
        }

        public boolean add(T t) {
            return t != null && super.add(t);
        }

        protected Object writeReplace() {
            return new SerializationProxy(this);
        }
    }

    public static <T> Set<T> a() {
        return a(0);
    }

    public static <T> Set<T> a(int i) {
        return i > 0 ? new ExternalizableHashSet(i) : new ExternalizableHashSet();
    }

    public static <T> Set<T> a(Collection<T> collection) {
        if (collection == null) {
            return a();
        }
        Set<T> a = a(collection.size());
        a.addAll(collection);
        return a;
    }

    public static <T> Set<T> a(Comparator<? super T> comparator) {
        return new ExternalizableTreeSet(comparator);
    }

    public static <T> Set<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        Set<T> a;
        int e = pVar.e();
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                a = a(e);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                a = a(s.a(pVar));
                break;
            default:
                throw new IllegalStateException("Invalid set type in deserialization: " + c);
        }
        for (int i = 0; i < e; i++) {
            a.add(nVar.a(pVar));
        }
        return a;
    }

    public static <T> void a(q qVar, Set<T> set, n<T> nVar) throws IOException {
        qVar.e(set.size());
        if (set instanceof au) {
            qVar.b((byte) 1);
            s.a(qVar, ((ExternalizableTreeSet) set).comparator());
        } else {
            qVar.b((byte) 0);
        }
        for (T b : set) {
            nVar.b(qVar, b);
        }
    }
}
