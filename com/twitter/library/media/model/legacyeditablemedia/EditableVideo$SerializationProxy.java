package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.VideoFile;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class EditableVideo$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = 3496858402433330067L;
    private EditableVideo mEditableVideo;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mEditableVideo = new EditableVideo((VideoFile) objectInput.readObject(), MediaSource.a((String) objectInput.readObject()));
        this.mEditableVideo.b = objectInput.readInt();
        this.mEditableVideo.c = objectInput.readInt();
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mEditableVideo;
    }
}
