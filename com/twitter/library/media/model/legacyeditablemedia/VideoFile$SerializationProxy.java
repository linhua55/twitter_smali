package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.VideoFile;
import com.twitter.media.model.e;
import com.twitter.util.math.Size;
import java.io.Externalizable;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class VideoFile$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = 6069472170219726439L;
    private VideoFile mVideoFile;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mVideoFile = e.a((File) objectInput.readObject(), objectInput.readInt(), (Size) objectInput.readObject());
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mVideoFile;
    }
}
