package org.spongycastle.pqc.jcajce.provider.gmss;

import java.security.PublicKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.GMSSPublicKey;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.ParSet;
import org.spongycastle.pqc.crypto.gmss.GMSSParameters;
import org.spongycastle.pqc.jcajce.provider.util.KeyUtil;
import org.spongycastle.util.encoders.Hex;

/* compiled from: Twttr */
public class BCGMSSPublicKey implements PublicKey, CipherParameters {
    private static final long serialVersionUID = 1;
    private GMSSParameters gmssParameterSet;
    private GMSSParameters gmssParams;
    private byte[] publicKeyBytes;

    public String getAlgorithm() {
        return "GMSS";
    }

    public String toString() {
        String str = "GMSS public key : " + new String(Hex.a(this.publicKeyBytes)) + "\n" + "Height of Trees: \n";
        for (int i = 0; i < this.gmssParameterSet.b().length; i++) {
            str = str + "Layer " + i + " : " + this.gmssParameterSet.b()[i] + " WinternitzParameter: " + this.gmssParameterSet.c()[i] + " K: " + this.gmssParameterSet.d()[i] + "\n";
        }
        return str;
    }

    public byte[] getEncoded() {
        return KeyUtil.a(new AlgorithmIdentifier(PQCObjectIdentifiers.g, new ParSet(this.gmssParameterSet.a(), this.gmssParameterSet.b(), this.gmssParameterSet.c(), this.gmssParameterSet.d()).d()), new GMSSPublicKey(this.publicKeyBytes));
    }

    public String getFormat() {
        return "X.509";
    }
}
