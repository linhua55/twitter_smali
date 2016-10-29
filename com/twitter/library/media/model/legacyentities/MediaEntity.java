package com.twitter.library.media.model.legacyentities;

import android.graphics.RectF;
import com.twitter.media.model.MediaType;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.OptionalFieldException;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.OptionalDataException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Deprecated
/* compiled from: Twttr */
public class MediaEntity extends UrlEntity {
    static final long serialVersionUID = 3820360449367569386L;
    public int clipEnd;
    public int clipStart;
    public String composerSourceUrl;
    public RectF cropRect;
    public int duration;
    public int effect;
    public boolean enhanced;
    public HashMap<String, ArrayList<TweetMediaFeature>> features;
    public long id;
    public String insecureMediaUrl;
    public float intensity;
    public String mediaUrl;
    public int rotation;
    public Size size;
    public long sourceStatusId;
    public List<MediaTag> tags;
    public MediaType type;
    public MediaVideoInfo videoInfo;

    public MediaEntity() {
        this.type = MediaType.UNKNOWN;
        this.size = Size.b;
        this.features = new HashMap();
        this.tags = n.g();
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this.intensity = 1.0f;
        this.id = objectInput.readLong();
        this.mediaUrl = (String) objectInput.readObject();
        this.insecureMediaUrl = (String) objectInput.readObject();
        this.type = MediaType.a(objectInput.readInt());
        this.size = Size.a(objectInput.readInt(), objectInput.readInt());
        this.enhanced = objectInput.readBoolean();
        this.effect = objectInput.readInt();
        objectInput.readBoolean();
        try {
            this.features = (HashMap) objectInput.readObject();
            this.tags = (List) objectInput.readObject();
            if (this.tags == null) {
                this.tags = n.g();
            }
            this.sourceStatusId = objectInput.readLong();
            this.composerSourceUrl = (String) objectInput.readObject();
            objectInput.readObject();
            this.duration = objectInput.readInt();
            this.clipStart = objectInput.readInt();
            this.clipEnd = objectInput.readInt();
            this.rotation = objectInput.readInt();
            ByteBuffer allocate = ByteBuffer.allocate(16);
            if (objectInput.read(allocate.array()) == 16) {
                this.cropRect = new RectF(allocate.getFloat(), allocate.getFloat(), allocate.getFloat(), allocate.getFloat());
            }
            this.intensity = objectInput.readFloat();
            this.videoInfo = (MediaVideoInfo) objectInput.readObject();
        } catch (OptionalDataException e) {
        } catch (EOFException e2) {
        } catch (OptionalFieldException e3) {
        }
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeLong(this.id);
        objectOutput.writeObject(this.mediaUrl);
        objectOutput.writeObject(this.insecureMediaUrl);
        objectOutput.writeInt(this.type.typeId);
        objectOutput.writeInt(this.size.a());
        objectOutput.writeInt(this.size.b());
        objectOutput.writeBoolean(this.enhanced);
        objectOutput.writeInt(this.effect);
        objectOutput.writeBoolean(false);
    }
}
