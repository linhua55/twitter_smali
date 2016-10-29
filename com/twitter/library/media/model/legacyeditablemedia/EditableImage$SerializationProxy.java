package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.media.model.ImageFile;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.MediaSource;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.List;

/* compiled from: Twttr */
public class EditableImage$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = 233136753015761794L;
    private EditableImage mEditableImage;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readInt();
        this.mEditableImage = new EditableImage((ImageFile) objectInput.readObject(), MediaSource.a((String) objectInput.readObject()));
        this.mEditableImage.b = objectInput.readBoolean();
        this.mEditableImage.c = objectInput.readInt();
        this.mEditableImage.d = objectInput.readFloat();
        if (objectInput.readInt() == 1) {
            float readFloat = objectInput.readFloat();
            float readFloat2 = objectInput.readFloat();
            float readFloat3 = objectInput.readFloat();
            float readFloat4 = objectInput.readFloat();
            this.mEditableImage.f = c.a(readFloat, readFloat2, readFloat3, readFloat4);
        }
        this.mEditableImage.e = objectInput.readInt();
        try {
            this.mEditableImage.g = (List) ObjectUtils.a(objectInput.readObject());
        } catch (Exception e) {
        }
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mEditableImage;
    }
}
