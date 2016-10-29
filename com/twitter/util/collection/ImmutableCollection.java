package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import defpackage.ctf;
import defpackage.cto;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

/* compiled from: Twttr */
public abstract class ImmutableCollection<T> extends AbstractCollection<T> {
    private static final ImmutableCollection a;

    /* compiled from: Twttr */
    class DefaultImmutableCollection<T> extends ImmutableCollection<T> implements Externalizable {
        private static final long serialVersionUID = -8758920915723237885L;
        protected Collection<T> mCollection;

        public DefaultImmutableCollection() {
            this.mCollection = ImmutableCollection.a();
        }

        DefaultImmutableCollection(Collection<T> collection) {
            this.mCollection = collection;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Collection) && ((Collection) obj).size() == size() && cto.a(this.mCollection, (Collection) obj);
        }

        public int hashCode() {
            return ObjectUtils.a(this.mCollection);
        }

        public int size() {
            return this.mCollection.size();
        }

        public boolean contains(Object obj) {
            return this.mCollection.contains(obj);
        }

        public Iterator<T> iterator() {
            return ctf.a(this.mCollection.iterator());
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mCollection);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mCollection = (Collection) ObjectUtils.a(objectInput.readObject());
        }
    }

    /* compiled from: Twttr */
    class EmptyImmutableCollection<T> extends ImmutableCollection<T> implements au<T>, Serializable {
        private static final long serialVersionUID = 5440131080462700315L;

        EmptyImmutableCollection() {
        }

        public boolean equals(Object obj) {
            return (obj instanceof Collection) && ((Collection) obj).isEmpty();
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

        protected Object readResolve() {
            return ImmutableCollection.a;
        }
    }

    /* compiled from: Twttr */
    class SingletonImmutableCollection<T> extends ImmutableCollection<T> implements au<T>, Externalizable {
        private static final long serialVersionUID = -3314326413825623587L;
        private T mItem;

        SingletonImmutableCollection(T t) {
            this.mItem = t;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Collection) && ((Collection) obj).size() == 1 && ObjectUtils.a(this.mItem, CollectionUtils.b((Collection) obj));
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
    class SortedImmutableCollection<T> extends DefaultImmutableCollection<T> implements au<T> {
        private static final long serialVersionUID = -2728767305766129763L;

        SortedImmutableCollection(Collection<T> collection) {
            super(collection);
        }

        public Comparator<? super T> comparator() {
            return ((au) ObjectUtils.a(this.mCollection)).comparator();
        }
    }

    static {
        a = new EmptyImmutableCollection();
    }

    public static <T> ImmutableCollection<T> a() {
        return (ImmutableCollection) ObjectUtils.a(a);
    }

    public static <T> ImmutableCollection<T> a(T t) {
        return new SingletonImmutableCollection(t);
    }

    public static <T> Collection<T> a(Collection<T> collection) {
        if (CollectionUtils.b((Collection) collection)) {
            return a();
        }
        if (CollectionUtils.a((Collection) collection)) {
            return collection;
        }
        if (collection.size() == 1) {
            return a(CollectionUtils.b((Iterable) collection));
        }
        if (collection instanceof au) {
            return new SortedImmutableCollection(collection);
        }
        return new DefaultImmutableCollection(collection);
    }

    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }
}
