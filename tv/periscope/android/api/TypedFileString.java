package tv.periscope.android.api;

import retrofit.mime.TypedString;

/* compiled from: Twttr */
public class TypedFileString extends TypedString {
    private final String mFilename;

    public TypedFileString(String str, String str2) {
        super(str);
        this.mFilename = str2;
    }

    public String fileName() {
        return this.mFilename;
    }
}
