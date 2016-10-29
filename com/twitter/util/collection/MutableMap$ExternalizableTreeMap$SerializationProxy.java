package com.twitter.util.collection;

import com.twitter.util.collection.MutableMap.ExternalizableTreeMap;
import com.twitter.util.object.ObjectUtils;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.TreeMap;

/* compiled from: Twttr */
class MutableMap$ExternalizableTreeMap$SerializationProxy<K, V> implements Externalizable {
    private static final long serialVersionUID = 5077103739229943013L;
    private TreeMap<K, V> mMap;

    MutableMap$ExternalizableTreeMap$SerializationProxy(TreeMap<K, V> treeMap) {
        this.mMap = treeMap;
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.mMap.comparator());
        objectOutput.writeInt(this.mMap.size());
        for (Entry entry : this.mMap.entrySet()) {
            objectOutput.writeObject(entry.getKey());
            objectOutput.writeObject(entry.getValue());
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        ExternalizableTreeMap externalizableTreeMap = new ExternalizableTreeMap((Comparator) ObjectUtils.a(objectInput.readObject()));
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            externalizableTreeMap.put(ObjectUtils.a(objectInput.readObject()), ObjectUtils.a(objectInput.readObject()));
        }
        this.mMap = externalizableTreeMap;
    }

    protected Object readResolve() {
        return this.mMap;
    }
}
