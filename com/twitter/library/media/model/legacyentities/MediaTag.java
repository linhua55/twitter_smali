package com.twitter.library.media.model.legacyentities;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public class MediaTag implements Externalizable {
    static final long serialVersionUID = 5429693440322044067L;
    public String name;
    public String screenName;
    public long userId;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.userId = objectInput.readLong();
        this.name = (String) objectInput.readObject();
        this.screenName = (String) objectInput.readObject();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }
}
