package org.spongycastle.jcajce.provider.symmetric.util;

import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

/* compiled from: Twttr */
public class BCPBEKey implements PBEKey {
    String algorithm;
    int digest;
    int ivSize;
    int keySize;
    ASN1ObjectIdentifier oid;
    CipherParameters param;
    PBEKeySpec pbeKeySpec;
    boolean tryWrong;
    int type;

    public BCPBEKey(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, int i2, int i3, int i4, PBEKeySpec pBEKeySpec, CipherParameters cipherParameters) {
        this.tryWrong = false;
        this.algorithm = str;
        this.oid = aSN1ObjectIdentifier;
        this.type = i;
        this.digest = i2;
        this.keySize = i3;
        this.ivSize = i4;
        this.pbeKeySpec = pBEKeySpec;
        this.param = cipherParameters;
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "RAW";
    }

    public byte[] getEncoded() {
        if (this.param != null) {
            KeyParameter keyParameter;
            if (this.param instanceof ParametersWithIV) {
                keyParameter = (KeyParameter) ((ParametersWithIV) this.param).b();
            } else {
                keyParameter = (KeyParameter) this.param;
            }
            return keyParameter.a();
        } else if (this.type == 2) {
            return PBEParametersGenerator.c(this.pbeKeySpec.getPassword());
        } else {
            if (this.type == 5) {
                return PBEParametersGenerator.b(this.pbeKeySpec.getPassword());
            }
            return PBEParametersGenerator.a(this.pbeKeySpec.getPassword());
        }
    }

    int a() {
        return this.type;
    }

    int b() {
        return this.digest;
    }

    int c() {
        return this.keySize;
    }

    public int d() {
        return this.ivSize;
    }

    public CipherParameters e() {
        return this.param;
    }

    public char[] getPassword() {
        return this.pbeKeySpec.getPassword();
    }

    public byte[] getSalt() {
        return this.pbeKeySpec.getSalt();
    }

    public int getIterationCount() {
        return this.pbeKeySpec.getIterationCount();
    }

    public ASN1ObjectIdentifier f() {
        return this.oid;
    }

    public void a(boolean z) {
        this.tryWrong = z;
    }

    boolean g() {
        return this.tryWrong;
    }
}
