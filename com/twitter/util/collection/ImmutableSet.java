package com.twitter.util.collection;

import com.twitter.android.mx;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import defpackage.ctf;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ImmutableSet<T> extends ImmutableCollection<T> implements Set<T> {
    private static final ImmutableSet a;

    /* compiled from: Twttr */
    class DefaultImmutableSet<T> extends ImmutableSet<T> implements Externalizable {
        private static final long serialVersionUID = 826214257802516615L;
        protected Set<T> mSet;

        public DefaultImmutableSet() {
            this.mSet = ImmutableSet.c();
        }

        DefaultImmutableSet(Set<T> set) {
            this.mSet = set;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Set) && ((Set) obj).size() == size() && this.mSet.containsAll((Set) obj);
        }

        public int hashCode() {
            return this.mSet.hashCode();
        }

        public int size() {
            return this.mSet.size();
        }

        public boolean contains(Object obj) {
            return this.mSet.contains(obj);
        }

        public Iterator<T> iterator() {
            return ctf.a(this.mSet.iterator());
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mSet);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mSet = (Set) ObjectUtils.a(objectInput.readObject());
        }
    }

    /* compiled from: Twttr */
    class EmptyImmutableSet<T> extends ImmutableSet<T> implements au<T>, Serializable {
        private static final long serialVersionUID = 5669655681543833371L;

        EmptyImmutableSet() {
        }

        public boolean equals(Object obj) {
            return (obj instanceof Set) && ((Set) obj).isEmpty();
        }

        public Comparator<? super T> comparator() {
            return ObjectUtils.d();
        }

        public int hashCode() {
            return 0;
        }

        public boolean isEmpty() {
            return true;
        }

        public int size() {
            return 0;
        }

        public boolean contains(Object obj) {
            return false;
        }

        public Iterator<T> iterator() {
            return ctf.c();
        }

        public Object[] toArray() {
            return CollectionUtils.b;
        }

        public <U> U[] toArray(U[] uArr) {
            if (uArr.length > 0) {
                uArr[0] = null;
            }
            return uArr;
        }

        protected Object readResolve() {
            return ImmutableSet.a;
        }
    }

    /* compiled from: Twttr */
    class SingletonImmutableSet<T> extends ImmutableSet<T> implements au<T>, Externalizable {
        private static final long serialVersionUID = 2030227006967788624L;
        private T mItem;

        SingletonImmutableSet(T t) {
            this.mItem = t;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Set) && ((Set) obj).size() == 1 && ObjectUtils.a(this.mItem, CollectionUtils.b((Set) obj));
        }

        public int hashCode() {
            return ObjectUtils.b(this.mItem);
        }

        public Comparator<? super T> comparator() {
            return ObjectUtils.d();
        }

        public boolean isEmpty() {
            return false;
        }

        public int size() {
            return 1;
        }

        public boolean contains(Object obj) {
            return ObjectUtils.a(this.mItem, obj);
        }

        public Iterator<T> iterator() {
            return ctf.a(this.mItem);
        }

        public Object[] toArray() {
            return new Object[]{this.mItem};
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mItem);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mItem = ObjectUtils.a(objectInput.readObject());
        }
    }

    /* compiled from: Twttr */
    class SortedImmutableSet<T> extends DefaultImmutableSet<T> implements au<T> {
        private static final long serialVersionUID = -9143369496511311836L;

        SortedImmutableSet(Set<T> set) {
            super(set);
        }

        public Comparator<? super T> comparator() {
            return ((au) ObjectUtils.a(this.mSet)).comparator();
        }
    }

    static {
        a = new EmptyImmutableSet();
    }

    public static <T> ImmutableSet<T> c() {
        return (ImmutableSet) ObjectUtils.a(a);
    }

    public static <T> ImmutableSet<T> b(T t) {
        return new SingletonImmutableSet(t);
    }

    public static <T> Set<T> a(Set<T> set) {
        if (CollectionUtils.b((Collection) set)) {
            return c();
        }
        if (CollectionUtils.a((Collection) set)) {
            return set;
        }
        if (set.size() == 1) {
            return b(CollectionUtils.b((Iterable) set));
        }
        if (set instanceof au) {
            return new SortedImmutableSet(set);
        }
        return new DefaultImmutableSet(set);
    }

    public static <T> ImmutableSet<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return (ImmutableSet) a(s.b(pVar, (n) nVar));
            case WireMessage.WIRE_CHAT /*1*/:
                return c();
            case WireMessage.WIRE_CONTROL /*2*/:
                return (ImmutableSet) ar.b(nVar.a(pVar));
            default:
                throw new IllegalStateException("Invalid ImmutableSet type in deserialization: " + c);
        }
    }

    public static <T> void a(q qVar, ImmutableSet<T> immutableSet, n<T> nVar) throws IOException {
        if (immutableSet instanceof EmptyImmutableSet) {
            qVar.b((byte) 1);
        } else if (immutableSet instanceof SingletonImmutableSet) {
            qVar.b((byte) 2);
            nVar.b(qVar, ((SingletonImmutableSet) immutableSet).mItem);
        } else {
            qVar.b((byte) 0);
            s.a(qVar, ((DefaultImmutableSet) immutableSet).mSet, (n) nVar);
        }
    }
}
