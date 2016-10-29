package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.util.math.Size;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class Size$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = 2344626313801010644L;
    private Size mSize;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.mSize = Size.a(objectInput.readInt(), objectInput.readInt());
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mSize;
    }
}
