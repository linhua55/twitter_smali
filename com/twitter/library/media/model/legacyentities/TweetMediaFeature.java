package com.twitter.library.media.model.legacyentities;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public class TweetMediaFeature implements Externalizable {
    static final long serialVersionUID = 6441783362961660943L;
    public int h;
    public String type;
    public int w;
    public int x;
    public int y;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.x = objectInput.readInt();
        this.y = objectInput.readInt();
        this.w = objectInput.readInt();
        this.h = objectInput.readInt();
        this.type = (String) objectInput.readObject();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }
}
