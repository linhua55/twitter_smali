package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Signer;

/* compiled from: Twttr */
class SignerInputBuffer extends ByteArrayOutputStream {
    SignerInputBuffer() {
    }

    void a(Signer signer) {
        signer.a(this.buf, 0, this.count);
    }
}
