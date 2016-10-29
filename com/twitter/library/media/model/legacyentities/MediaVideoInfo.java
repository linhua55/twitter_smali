package com.twitter.library.media.model.legacyentities;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.List;

@Deprecated
/* compiled from: Twttr */
public class MediaVideoInfo implements Externalizable {
    static final long serialVersionUID = 3295350313851190225L;
    public float aspectRatio;
    public float durationSeconds;
    public List<MediaVideoVariant> variants;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.aspectRatio = objectInput.readFloat();
        this.durationSeconds = objectInput.readFloat();
        this.variants = (List) objectInput.readObject();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }
}
