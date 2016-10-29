package defpackage;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Twttr */
/* renamed from: cqe */
public class cqe {
    private final String a;

    public cqe() {
        this("HmacSHA1");
    }

    public cqe(String str) {
        if (str == null) {
            throw new NullPointerException("Hashing algorithm cannot be null.");
        }
        this.a = str;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        Key secretKeySpec = new SecretKeySpec(bArr, this.a);
        Mac instance = Mac.getInstance(this.a);
        instance.init(secretKeySpec);
        return instance.doFinal(bArr2);
    }
}
