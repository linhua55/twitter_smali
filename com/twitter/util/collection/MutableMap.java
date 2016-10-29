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
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class MutableMap {

    /* compiled from: Twttr */
    class ExternalizableHashMap<K, V> extends HashMap<K, V> implements Externalizable {
        private static final long serialVersionUID = 3801550319325993065L;

        ExternalizableHashMap(int i) {
            super(i);
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeInt(size());
            for (Entry entry : entrySet()) {
                objectOutput.writeObject(entry.getKey());
                objectOutput.writeObject(entry.getValue());
            }
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                put(ObjectUtils.a(objectInput.readObject()), ObjectUtils.a(objectInput.readObject()));
            }
        }
    }

    /* compiled from: Twttr */
    class ExternalizableLinkedHashMap<K, V> extends LinkedHashMap<K, V> implements Externalizable {
        private static final long serialVersionUID = 3801550319325993065L;

        ExternalizableLinkedHashMap(int i) {
            super(i);
        }

        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeInt(size());
            for (Entry entry : entrySet()) {
                objectOutput.writeObject(entry.getKey());
                objectOutput.writeObject(entry.getValue());
            }
        }

        public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                put(ObjectUtils.a(objectInput.readObject()), ObjectUtils.a(objectInput.readObject()));
            }
        }
    }

    /* compiled from: Twttr */
    class ExternalizableTreeMap<K, V> extends TreeMap<K, V> implements au<K> {
        private Set<Entry<K, V>> mEntrySet;
        private Set<K> mKeySet;

        ExternalizableTreeMap(Comparator<? super K> comparator) {
            super(comparator);
        }

        public V put(K k, V v) {
            return k != null ? super.put(k, v) : null;
        }

        public Set<K> keySet() {
            if (this.mKeySet == null) {
                this.mKeySet = new v(super.keySet(), comparator());
            }
            return this.mKeySet;
        }

        public Set<Entry<K, V>> entrySet() {
            if (this.mEntrySet == null) {
                this.mEntrySet = new v(super.entrySet(), comparator());
            }
            return this.mEntrySet;
        }

        protected Object writeReplace() {
            return new SerializationProxy(this);
        }
    }

    public static <K, V> Map<K, V> a() {
        return a(0);
    }

    public static <K, V> Map<K, V> a(int i) {
        return i > 0 ? new ExternalizableHashMap(i) : new ExternalizableHashMap();
    }

    public static <K extends Comparable<K>, V> Map<K, V> b() {
        return a(ObjectUtils.b());
    }

    public static <K, V> Map<K, V> a(Comparator<? super K> comparator) {
        return new ExternalizableTreeMap(comparator);
    }

    public static <K, V> Map<K, V> c() {
        return b(0);
    }

    public static <K, V> Map<K, V> b(int i) {
        return i > 0 ? new ExternalizableLinkedHashMap(i) : new ExternalizableLinkedHashMap();
    }

    public static <K, V> Map<K, V> a(p pVar, n<K> nVar, n<V> nVar2) throws IOException, ClassNotFoundException {
        Map<K, V> a;
        int e = pVar.e();
        byte c = pVar.c();
        switch (c) {
            case mx.View_android_theme /*0*/:
                a = a(e);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                a = a(s.a(pVar));
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a = b(e);
                break;
            default:
                throw new IllegalStateException("Invalid map type in deserialization: " + c);
        }
        for (int i = 0; i < e; i++) {
            a.put(nVar.a(pVar), nVar2.a(pVar));
        }
        return a;
    }

    public static <K, V> void a(q qVar, Map<K, V> map, n<K> nVar, n<V> nVar2) throws IOException {
        qVar.e(map.size());
        if (map instanceof au) {
            qVar.b((byte) 1);
            s.a(qVar, ((au) map).comparator());
        } else if (map instanceof LinkedHashMap) {
            qVar.b((byte) 2);
        } else {
            qVar.b((byte) 0);
        }
        for (Entry entry : map.entrySet()) {
            nVar.b(qVar, entry.getKey());
            nVar2.b(qVar, entry.getValue());
        }
    }
}
