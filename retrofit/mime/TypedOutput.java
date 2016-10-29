package retrofit.mime;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public interface TypedOutput {
    String fileName();

    long length();

    String mimeType();

    void writeTo(OutputStream outputStream) throws IOException;
}
