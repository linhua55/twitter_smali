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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class MutableList {

    /* compiled from: Twttr */
    class ExternalizableArrayList<T> extends ArrayList<T> implements Externalizable {
        private static final long serialVersionUID = -1286735371001572329L;

        ExternalizableArrayList(int i) {
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

        public void a(int i, T t) {
            super.add(i, t);
        }
    }

    /* compiled from: Twttr */
    class SortedArrayList<T> extends ExternalizableArrayList<T> implements au<T> {
        private static final long serialVersionUID = -1731750868431848246L;
        protected Comparator<? super T> mComparator;

        SortedArrayList(Comparator<? super T> comparator) {
            this.mComparator = comparator;
        }

        SortedArrayList(Comparator<? super T> comparator, int i) {
            super(i);
            this.mComparator = comparator;
        }

        public Comparator<? super T> comparator() {
            return this.mComparator;
        }

        public T set(int i, T t) {
            throw new UnsupportedOperationException();
        }

        public boolean add(T t) {
            if (t == null) {
                return false;
            }
            a(CollectionUtils.a((List) this, (Object) t, this.mComparator), t);
            return true;
        }

        public void add(int i, T t) {
            add(t);
        }

        public boolean addAll(Collection<? extends T> collection) {
            for (Object add : collection) {
                add(add);
            }
            return !collection.isEmpty();
        }

        public boolean addAll(int i, Collection<? extends T> collection) {
            return addAll(collection);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mComparator = (Comparator) ObjectUtils.a(objectInput.readObject());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                a(i, ObjectUtils.a(objectInput.readObject()));
            }
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mComparator);
            super.writeExternal(objectOutput);
        }
    }

    /* compiled from: Twttr */
    class UniqueSortedArrayList<T> extends SortedArrayList<T> {
        private static final long serialVersionUID = -1724417772512689720L;

        UniqueSortedArrayList(Comparator<? super T> comparator) {
            super(comparator);
        }

        UniqueSortedArrayList(Comparator<? super T> comparator, int i) {
            super(comparator, i);
        }

        public boolean add(T t) {
            if (t != null) {
                int a = CollectionUtils.a((List) this, (Object) t, this.mComparator);
                if (a == 0 || !get(a - 1).equals(t)) {
                    a(a, t);
                }
            }
            return true;
        }
    }

    public static <T> List<T> a() {
        return a(0);
    }

    public static <T> List<T> a(int i) {
        return i > 0 ? new ExternalizableArrayList(i) : new ExternalizableArrayList();
    }

    public static <T> List<T> a(Comparator<? super T> comparator, int i) {
        return i > 0 ? new SortedArrayList(comparator, i) : new SortedArrayList(comparator);
    }

    public static <T> List<T> b(Comparator<? super T> comparator, int i) {
        return i > 0 ? new UniqueSortedArrayList(comparator, i) : new UniqueSortedArrayList(comparator);
    }

    @SafeVarargs
    public static <T> List<T> a(T... tArr) {
        return tArr != null ? Arrays.asList(tArr) : ImmutableList.c();
    }

    public static <T> List<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        List list;
        int e = pVar.e();
        byte c = pVar.c();
        ExternalizableArrayList externalizableArrayList;
        switch (c) {
            case mx.View_android_theme /*0*/:
                externalizableArrayList = (ExternalizableArrayList) a(e);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                externalizableArrayList = (ExternalizableArrayList) a(s.a(pVar), e);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                list = (ExternalizableArrayList) b(s.a(pVar), e);
                break;
            default:
                throw new IllegalStateException("Invalid list type found in deserialization: " + c);
        }
        for (int i = 0; i < e; i++) {
            list.a(i, nVar.a(pVar));
        }
        return list;
    }

    public static <T> void a(q qVar, List<T> list, n<T> nVar) throws IOException {
        qVar.e(list.size());
        if (list instanceof au) {
            if (list instanceof UniqueSortedArrayList) {
                qVar.b((byte) 2);
            } else {
                qVar.b((byte) 1);
            }
            s.a(qVar, ((au) list).comparator());
        } else {
            qVar.b((byte) 0);
        }
        for (T b : list) {
            nVar.b(qVar, b);
        }
    }
}
