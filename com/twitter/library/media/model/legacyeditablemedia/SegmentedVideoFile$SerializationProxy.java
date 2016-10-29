package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.model.e;
import cvi;
import java.io.ByteArrayInputStream;
import java.io.Externalizable;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Reader;

/* compiled from: Twttr */
public class SegmentedVideoFile$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = -5751292908243493952L;
    private SegmentedVideoFile mSegmentedVideoFile;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        File file = (File) objectInput.readObject();
        int readInt = objectInput.readInt();
        this.mSegmentedVideoFile = null;
        if (readInt != 0) {
            byte[] bArr = new byte[readInt];
            cvi.a(bArr, objectInput);
            Reader inputStreamReader = new InputStreamReader(new ByteArrayInputStream(bArr));
            this.mSegmentedVideoFile = e.a(file, inputStreamReader);
            inputStreamReader.close();
        }
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mSegmentedVideoFile;
    }
}
