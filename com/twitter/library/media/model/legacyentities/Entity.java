package com.twitter.library.media.model.legacyentities;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public class Entity implements Externalizable {
    private static final long serialVersionUID = 5621176132729378592L;
    public int end;
    public int start;

    public Entity() {
        this.start = -1;
        this.end = -1;
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.start = objectInput.readInt();
        this.end = objectInput.readInt();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.start);
        objectOutput.writeInt(this.end);
    }
}
