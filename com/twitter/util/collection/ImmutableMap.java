package com.twitter.util.collection;

import com.twitter.android.mx;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ImmutableMap<K, V> implements Map<K, V> {
    private static final ImmutableMap a;

    /* compiled from: Twttr */
    class DefaultImmutableMap<K, V> extends ImmutableMap<K, V> implements Externalizable {
        private static final long serialVersionUID = -880713991692609287L;
        private transient Set<K> a;
        private transient Set<Entry<K, V>> b;
        private transient Collection<V> c;
        protected Map<K, V> mMap;

        public DefaultImmutableMap() {
            this.mMap = ImmutableMap.a();
        }

        DefaultImmutableMap(Map<K, V> map) {
            this.mMap = map;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Map) && this.mMap.equals(obj);
        }

        public String toString() {
            return this.mMap.toString();
        }

        public int hashCode() {
            return this.mMap.hashCode();
        }

        public boolean isEmpty() {
            return this.mMap.isEmpty();
        }

        public int size() {
            return this.mMap.size();
        }

        public boolean containsKey(Object obj) {
            return this.mMap.containsKey(obj);
        }

        public boolean containsValue(Object obj) {
            return this.mMap.containsValue(obj);
        }

        public V get(Object obj) {
            return this.mMap.get(obj);
        }

        public Set<K> keySet() {
            if (this.a == null) {
                this.a = ImmutableSet.a(this.mMap.keySet());
            }
            return this.a;
        }

        public Set<Entry<K, V>> entrySet() {
            if (this.b == null) {
                this.b = ImmutableSet.a(this.mMap.entrySet());
            }
            return this.b;
        }

        public Collection<V> values() {
            if (this.c == null) {
                this.c = ImmutableCollection.a(this.mMap.values());
            }
            return this.c;
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mMap);
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mMap = (Map) ObjectUtils.a(objectInput.readObject());
        }
    }

    /* compiled from: Twttr */
    class EmptyImmutableMap<K, V> extends ImmutableMap<K, V> implements au<K>, Serializable {
        private static final long serialVersionUID = -524019506382956188L;

        EmptyImmutableMap() {
        }

        public boolean equals(Object obj) {
            return (obj instanceof Map) && ((Map) obj).isEmpty();
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            return "{}";
        }

        public Comparator<? super K> comparator() {
            return ObjectUtils.d();
        }

        public boolean isEmpty() {
            return true;
        }

        public int size() {
            return 0;
        }

        public boolean containsKey(Object obj) {
            return false;
        }

        public boolean containsValue(Object obj) {
            return false;
        }

        public V get(Object obj) {
            return null;
        }

        public Set<K> keySet() {
            return ImmutableSet.c();
        }

        public Set<Entry<K, V>> entrySet() {
            return ImmutableSet.c();
        }

        public Collection<V> values() {
            return ImmutableCollection.a();
        }

        protected Object readResolve() {
            return ImmutableMap.a;
        }
    }

    /* compiled from: Twttr */
    class SingletonImmutableMap<K, V> extends ImmutableMap<K, V> implements au<K>, Externalizable {
        private static final Entry<Object, Object> a;
        private static final long serialVersionUID = -2632853330704721087L;
        private transient Set<K> b;
        private transient Set<Entry<K, V>> c;
        private transient Collection<V> d;
        private Entry<K, V> mEntry;

        static {
            a = new SimpleImmutableEntry(null, null);
        }

        public SingletonImmutableMap() {
            this.mEntry = (Entry) ObjectUtils.a(a);
        }

        SingletonImmutableMap(K k, V v) {
            this.mEntry = new SimpleImmutableEntry(k, v);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Map) && ((Map) obj).size() == 1 && ObjectUtils.a(this.mEntry, CollectionUtils.b(((Map) obj).entrySet()));
        }

        public int hashCode() {
            return this.mEntry.hashCode();
        }

        public String toString() {
            return "{" + this.mEntry + "}";
        }

        public Comparator<? super K> comparator() {
            return ObjectUtils.d();
        }

        public boolean isEmpty() {
            return false;
        }

        public int size() {
            return 1;
        }

        public boolean containsKey(Object obj) {
            return ObjectUtils.a(this.mEntry.getKey(), obj);
        }

        public boolean containsValue(Object obj) {
            return ObjectUtils.a(this.mEntry.getValue(), obj);
        }

        public V get(Object obj) {
            return containsKey(obj) ? this.mEntry.getValue() : null;
        }

        public Set<K> keySet() {
            if (this.b == null) {
                this.b = ImmutableSet.b(this.mEntry.getKey());
            }
            return this.b;
        }

        public Set<Entry<K, V>> entrySet() {
            if (this.c == null) {
                this.c = ImmutableSet.b(this.mEntry);
            }
            return this.c;
        }

        public Collection<V> values() {
            if (this.d == null) {
                this.d = ImmutableCollection.a(this.mEntry.getValue());
            }
            return this.d;
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeObject(this.mEntry.getKey());
            objectOutput.writeObject(this.mEntry.getValue());
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            this.mEntry = new SimpleImmutableEntry(ObjectUtils.a(objectInput.readObject()), ObjectUtils.a(objectInput.readObject()));
        }
    }

    /* compiled from: Twttr */
    class SortedImmutableMap<K, V> extends DefaultImmutableMap<K, V> implements au<K> {
        private static final long serialVersionUID = -1514400237977506873L;

        SortedImmutableMap(Map<K, V> map) {
            super(map);
        }

        public Comparator<? super K> comparator() {
            return ((au) ObjectUtils.a(this.mMap)).comparator();
        }
    }

    static {
        a = new EmptyImmutableMap();
    }

    public static <K, V> ImmutableMap<K, V> a() {
        return (ImmutableMap) ObjectUtils.a(a);
    }

    public static <K, V> ImmutableMap<K, V> a(K k, V v) {
        return new SingletonImmutableMap(k, v);
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        if (CollectionUtils.b((Map) map)) {
            return a();
        }
        if (CollectionUtils.a((Map) map)) {
            return map;
        }
        if (map.size() == 1) {
            Entry entry = (Entry) e.a(CollectionUtils.b(map.entrySet()));
            return a(entry.getKey(), entry.getValue());
        } else if (map instanceof au) {
            return new SortedImmutableMap(map);
        } else {
            return new DefaultImmutableMap(map);
        }
    }

    public V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    public V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableMap<K, V> a(p pVar, n<K> nVar, n<V> nVar2) throws IOException, ClassNotFoundException {
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                return (ImmutableMap) a(s.a(pVar, (n) nVar, (n) nVar2));
            case WireMessage.WIRE_CHAT /*1*/:
                return a();
            case WireMessage.WIRE_CONTROL /*2*/:
                return a(nVar.a(pVar), nVar2.a(pVar));
            default:
                throw new IllegalStateException("Invalid ImmutableMap type in deserialization: " + c);
        }
    }

    public static <K, V> void a(q qVar, ImmutableMap<K, V> immutableMap, n<K> nVar, n<V> nVar2) throws IOException {
        if (immutableMap instanceof EmptyImmutableMap) {
            qVar.b((byte) 1);
        } else if (immutableMap instanceof SingletonImmutableMap) {
            qVar.b((byte) 2);
            Entry a = ((SingletonImmutableMap) immutableMap).mEntry;
            nVar.b(qVar, a.getKey());
            nVar2.b(qVar, a.getValue());
        } else {
            qVar.b((byte) 0);
            s.a(qVar, ((DefaultImmutableMap) immutableMap).mMap, nVar, nVar2);
        }
    }

    public static <K, V> n<ImmutableMap<K, V>> a(n<K> nVar, n<V> nVar2) {
        return new j(nVar, nVar2);
    }
}
