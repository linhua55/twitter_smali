package retrofit.mime;

import java.io.UnsupportedEncodingException;

/* compiled from: Twttr */
public class TypedString extends TypedByteArray {
    public TypedString(String str) {
        super("text/plain; charset=UTF-8", convertToBytes(str));
    }

    private static byte[] convertToBytes(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public String toString() {
        try {
            return "TypedString[" + new String(getBytes(), "UTF-8") + "]";
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError("Must be able to decode UTF-8");
        }
    }
}
