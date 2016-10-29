package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.e;
import com.twitter.util.math.Size;
import java.io.Externalizable;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class AnimatedGifFile$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = 6446199009249531834L;
    private AnimatedGifFile mAnimatedGifFile;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mAnimatedGifFile = e.a((File) objectInput.readObject(), (Size) objectInput.readObject());
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mAnimatedGifFile;
    }
}
