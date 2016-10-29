package com.twitter.library.media.model.legacyentities;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public class MediaVideoVariant implements Externalizable {
    static final long serialVersionUID = -1124359188841849336L;
    public int bitrate;
    public String contentType;
    public String url;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.url = (String) objectInput.readObject();
        this.contentType = (String) objectInput.readObject();
        this.bitrate = objectInput.readInt();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }
}
