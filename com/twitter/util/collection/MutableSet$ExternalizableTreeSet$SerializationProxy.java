package com.twitter.util.collection;

import com.twitter.util.collection.MutableSet.ExternalizableTreeSet;
import com.twitter.util.object.ObjectUtils;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;

/* compiled from: Twttr */
class MutableSet$ExternalizableTreeSet$SerializationProxy<T> implements Externalizable {
    private static final long serialVersionUID = 6484199390078549533L;
    private TreeSet<T> mSet;

    MutableSet$ExternalizableTreeSet$SerializationProxy(TreeSet<T> treeSet) {
        this.mSet = treeSet;
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.mSet.comparator());
        objectOutput.writeInt(this.mSet.size());
        Iterator it = this.mSet.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject(it.next());
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        ExternalizableTreeSet externalizableTreeSet = new ExternalizableTreeSet((Comparator) ObjectUtils.a(objectInput.readObject()));
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            externalizableTreeSet.add(ObjectUtils.a(objectInput.readObject()));
        }
        this.mSet = externalizableTreeSet;
    }

    protected Object readResolve() {
        return this.mSet;
    }
}
