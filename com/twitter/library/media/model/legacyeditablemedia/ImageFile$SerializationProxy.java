package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.ImageFile;
import com.twitter.media.model.e;
import com.twitter.util.math.Size;
import java.io.Externalizable;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class ImageFile$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = -43936705225171357L;
    private ImageFile mImageFile;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mImageFile = e.b((File) objectInput.readObject(), (Size) objectInput.readObject());
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mImageFile;
    }
}
