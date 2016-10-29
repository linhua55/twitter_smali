package com.twitter.util.collection;

import com.twitter.android.mx;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import defpackage.ctf;
import defpackage.ctk;
import defpackage.cto;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ImmutableList<T> extends ImmutableCollection<T> implements List<T> {
    private static final ImmutableList a;

    /* compiled from: Twttr */
    class DefaultImmutableList<T> extends ImmutableList<T> implements Externalizable {
        private static final long serialVersionUID = -6124653068933655178L;
        protected List<T> mList;

        public DefaultImmutableList() {
            this.mList = ImmutableList.c();
        }

        protected DefaultImmutableList(List<T> list) {
            this.mList = list;
        }

        public boolean equals(Object obj) {
            return (obj instanceof List) && ((Collection) obj).size() == size() && cto.a(this.mList, (Collection) obj);
        }

        public int hashCode() {
            return this.mList.hashCode();
        }

        public int size() {
            return this.mList.size();
        }

        public boolean contains(Object obj) {
            return this.mList.contains(obj);
        }

        public Iterator<T> iterator() {
            return ctf.a(this.mList.iterator());
        }

        public T get(int i) {
            return this.mList.get(i);
        }

        public int indexOf(Object obj) {
            return this.mList.indexOf(obj);
        }

        public int lastIndexOf(Object obj) {
            return this.mList.lastIndexOf(obj);
        }

        public ListIterator<T> listIterator() {
            return listIterator(0);
        }

        public ListIterator<T> listIterator(int i) {
            return ctk.a(this.mList, i);
        }

        public List<T> subList(int i, int i2) {
            int size = size();
            if (i < 0 || i2 > size || i > i2) {
                throw new IndexOutOfBoundsException();
            } else if (i == i2) {
                return ImmutableList.c();
            } else {
                if (i + 1 == i2) {
                    return ImmutableList.b(get(i));
                }
                return (i == 0 && i2 == size) ? this : ImmutableList.a(this.mList.subList(i, i2));
            }
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeInt(1);
            objectOutput.writeObject(this.mList);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            if (objectInput.readInt() == 0) {
                int readInt = objectInput.readInt();
                List a = MutableList.a(readInt);
                for (int i = 0; i < readInt; i++) {
                    a.add(ObjectUtils.a(objectInput.readObject()));
                }
                this.mList = a;
                return;
            }
            this.mList = (List) ObjectUtils.a(objectInput.readObject());
        }
    }

    /* compiled from: Twttr */
    final class EmptyImmutableList<T> extends ImmutableList<T> implements au<T>, Serializable, RandomAccess {
        private static final long serialVersionUID = -105334176962427064L;

        EmptyImmutableList() {
        }

        public boolean equals(Object obj) {
            return (obj instanceof List) && ((Collection) obj).isEmpty();
        }

        public int hashCode() {
            return 0;
        }

        public Comparator<? super T> comparator() {
            return ObjectUtils.d();
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

        public T get(int i) {
            throw new IndexOutOfBoundsException();
        }

        public int indexOf(Object obj) {
            return -1;
        }

        public int lastIndexOf(Object obj) {
            return -1;
        }

        public ListIterator<T> listIterator() {
            return listIterator(0);
        }

        public ListIterator<T> listIterator(int i) {
            if (i == 0) {
                return ctk.a();
            }
            throw new IndexOutOfBoundsException();
        }

        public List<T> subList(int i, int i2) {
            if (i == 0 && i2 == 0) {
                return this;
            }
            throw new IndexOutOfBoundsException();
        }

        protected Object readResolve() {
            return ImmutableList.a;
        }
    }

    /* compiled from: Twttr */
    class RandomAccessDefaultImmutableList<T> extends DefaultImmutableList<T> implements RandomAccess {
        private static final long serialVersionUID = -4744649830560214794L;

        protected RandomAccessDefaultImmutableList(List<T> list) {
            super(list);
        }
    }

    /* compiled from: Twttr */
    class SortedImmutableList<T> extends DefaultImmutableList<T> implements au<T> {
        private static final long serialVersionUID = -4755749930860089514L;

        SortedImmutableList(List<T> list) {
            super(list);
        }

        public Comparator<? super T> comparator() {
            return ((au) ObjectUtils.a(this.mList)).comparator();
        }
    }

    /* compiled from: Twttr */
    class RandomAccessSortedImmutableList<T> extends SortedImmutableList<T> implements RandomAccess {
        private static final long serialVersionUID = 3245496231564177524L;

        protected RandomAccessSortedImmutableList(List<T> list) {
            super(list);
        }
    }

    /* compiled from: Twttr */
    final class SingletonImmutableList<T> extends ImmutableList<T> implements au<T>, Externalizable, RandomAccess {
        private static final long serialVersionUID = 4157109830850226813L;
        private T mItem;

        SingletonImmutableList(T t) {
            this.mItem = t;
        }

        public boolean equals(Object obj) {
            return (obj instanceof List) && ((Collection) obj).size() == 1 && ObjectUtils.a(this.mItem, CollectionUtils.b((Collection) obj));
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

        public T get(int i) {
            if (i == 0) {
                return this.mItem;
            }
            throw new IndexOutOfBoundsException();
        }

        public int indexOf(Object obj) {
            return ObjectUtils.a(this.mItem, obj) ? 0 : -1;
        }

        public int lastIndexOf(Object obj) {
            return ObjectUtils.a(this.mItem, obj) ? 0 : -1;
        }

        public ListIterator<T> listIterator() {
            return listIterator(0);
        }

        public ListIterator<T> listIterator(int i) {
            if (i == 0 || i == 1) {
                return ctk.a(this.mItem, i);
            }
            throw new IndexOutOfBoundsException();
        }

        public List<T> subList(int i, int i2) {
            if (i >= 0 && i2 <= 1 && i <= i2) {
                return i == i2 ? ImmutableList.c() : this;
            } else {
                throw new IndexOutOfBoundsException();
            }
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mItem);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mItem = ObjectUtils.a(objectInput.readObject());
        }
    }

    static {
        a = new EmptyImmutableList();
    }

    public static <T> ImmutableList<T> c() {
        return (ImmutableList) ObjectUtils.a(a);
    }

    public static <T> ImmutableList<T> b(T t) {
        return new SingletonImmutableList(t);
    }

    @SafeVarargs
    public static <T> List<T> a(T... tArr) {
        if (CollectionUtils.a((Object[]) tArr)) {
            return c();
        }
        if (tArr.length == 1) {
            return b(tArr[0]);
        }
        return new DefaultImmutableList(Arrays.asList(tArr));
    }

    public static <T> List<T> a(List<T> list) {
        if (CollectionUtils.b((Collection) list)) {
            return c();
        }
        if (CollectionUtils.a((Collection) list)) {
            return list;
        }
        if (list.size() == 1) {
            return b(CollectionUtils.b((List) list));
        }
        if (CollectionUtils.a((List) list)) {
            if (list instanceof au) {
                return new RandomAccessSortedImmutableList(list);
            }
            return new RandomAccessDefaultImmutableList(list);
        } else if (list instanceof au) {
            return new SortedImmutableList(list);
        } else {
            return new DefaultImmutableList(list);
        }
    }

    public void add(int i, T t) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(int i, Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public T remove(int i) {
        throw new UnsupportedOperationException();
    }

    public T set(int i, T t) {
        throw new UnsupportedOperationException();
    }

    public static <T> ImmutableList<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return c();
            case WireMessage.WIRE_CHAT /*1*/:
                return b(nVar.a(pVar));
            case WireMessage.WIRE_CONTROL /*2*/:
                return (ImmutableList) a(s.a(pVar, (n) nVar));
            default:
                throw new IllegalStateException("Invalid immutable list type: " + c);
        }
    }

    public static <T> void a(q qVar, ImmutableList<T> immutableList, n<T> nVar) throws IOException {
        if (immutableList instanceof EmptyImmutableList) {
            qVar.b((byte) 0);
        } else if (immutableList instanceof SingletonImmutableList) {
            qVar.b((byte) 1);
            nVar.b(qVar, immutableList.get(0));
        } else {
            qVar.b((byte) 2);
            s.a(qVar, ((DefaultImmutableList) immutableList).mList, (n) nVar);
        }
    }
}
