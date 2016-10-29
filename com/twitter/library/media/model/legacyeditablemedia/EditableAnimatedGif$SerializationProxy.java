package com.twitter.library.media.model.legacyeditablemedia;

import android.net.Uri;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.MediaSource;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* compiled from: Twttr */
public class EditableAnimatedGif$SerializationProxy implements Externalizable {
    public static final long serialVersionUID = -438662659801197828L;
    private EditableAnimatedGif mEditableAnimatedGif;

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        Uri parse;
        objectInput.readInt();
        AnimatedGifFile animatedGifFile = (AnimatedGifFile) objectInput.readObject();
        String str = (String) objectInput.readObject();
        try {
            String str2 = (String) objectInput.readObject();
            parse = str2 != null ? Uri.parse(str2) : null;
        } catch (Exception e) {
            parse = null;
        }
        if (parse == null) {
            parse = animatedGifFile.a();
        }
        this.mEditableAnimatedGif = new EditableAnimatedGif(animatedGifFile, parse, MediaSource.a(str));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
    }

    protected Object readResolve() {
        return this.mEditableAnimatedGif;
    }
}
