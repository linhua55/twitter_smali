package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.util.serialization.i;
import com.twitter.util.serialization.n;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public abstract class ModelSerializationProxy<T> implements Externalizable {
    public static final long serialVersionUID = 6518447514822849372L;
    private T mObject;
    private final n<T> mSerializer;

    protected ModelSerializationProxy(n<T> nVar) {
        this.mSerializer = nVar;
    }

    public final void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.mObject = this.mSerializer.c(new i(objectInput, false));
    }

    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        if (this.mObject != null) {
            return this.mObject;
        }
        throw new IllegalStateException("readResolve called without an object.");
    }
}
