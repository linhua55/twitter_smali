package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.model.media.MediaSource;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class EditableSegmentedVideo$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = -8316430463197754811L;
    private EditableSegmentedVideo mEditableSegmentedVideo;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mEditableSegmentedVideo = new EditableSegmentedVideo((SegmentedVideoFile) objectInput.readObject(), MediaSource.a((String) objectInput.readObject()));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mEditableSegmentedVideo;
    }
}
