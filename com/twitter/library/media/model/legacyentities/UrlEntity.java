package com.twitter.library.media.model.legacyentities;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

@Deprecated
/* compiled from: Twttr */
public class UrlEntity extends Entity {
    static final long serialVersionUID = 7946903601032197538L;
    public int displayEnd;
    public int displayStart;
    public String displayUrl;
    public String expandedUrl;
    public String insecureUrl;
    public String url;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this.url = (String) objectInput.readObject();
        this.insecureUrl = (String) objectInput.readObject();
        this.expandedUrl = (String) objectInput.readObject();
        this.displayUrl = (String) objectInput.readObject();
        this.displayStart = objectInput.readInt();
        this.displayEnd = objectInput.readInt();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.url);
        objectOutput.writeObject(this.insecureUrl);
        objectOutput.writeObject(this.expandedUrl);
        objectOutput.writeObject(this.displayUrl);
        objectOutput.writeInt(this.displayStart);
        objectOutput.writeInt(this.displayEnd);
    }
}
