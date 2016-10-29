package tv.periscope.android.api;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

/* compiled from: Twttr */
public class TypedFiles implements TypedInput, TypedOutput {
    private static final int BUFFER_SIZE = 4096;
    private final String mFilename;
    private final File[] mFiles;

    public TypedFiles(File[] fileArr, String str) {
        this.mFiles = fileArr;
        this.mFilename = str;
    }

    public String mimeType() {
        return "text/plain; charset=UTF-8";
    }

    public long length() {
        int i = 0;
        File[] fileArr = this.mFiles;
        int i2 = 0;
        while (i < fileArr.length) {
            i2 = (int) (fileArr[i].length() + ((long) i2));
            i++;
        }
        return (long) i2;
    }

    public InputStream in() throws IOException {
        return getInputStream();
    }

    private InputStream getInputStream() throws FileNotFoundException {
        Collection arrayList = new ArrayList(this.mFiles.length);
        for (File fileInputStream : this.mFiles) {
            arrayList.add(new FileInputStream(fileInputStream));
        }
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    public String fileName() {
        return this.mFilename;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[BUFFER_SIZE];
        InputStream inputStream = getInputStream();
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
            } finally {
                inputStream.close();
            }
        }
    }
}
