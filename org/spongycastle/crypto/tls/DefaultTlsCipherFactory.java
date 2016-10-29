package org.spongycastle.crypto.tls;

import defpackage.cse;
import java.io.IOException;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC4Engine;
import org.spongycastle.crypto.engines.SEEDEngine;
import org.spongycastle.crypto.engines.Salsa20Engine;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CCMBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class DefaultTlsCipherFactory extends AbstractTlsCipherFactory {
    public TlsCipher a(TlsContext tlsContext, int i, int i2) throws IOException {
        switch (i) {
            case p.View_android_theme /*0*/:
                return b(tlsContext, i2);
            case p.View_paddingStart /*2*/:
                return g(tlsContext, 16, i2);
            case p.Toolbar_contentInsetLeft /*7*/:
                return a(tlsContext, i2);
            case p.Toolbar_contentInsetRight /*8*/:
                return b(tlsContext, 16, i2);
            case p.Toolbar_popupTheme /*9*/:
                return b(tlsContext, 32, i2);
            case p.Toolbar_titleTextAppearance /*10*/:
                return e(tlsContext, 16, 16);
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return e(tlsContext, 32, 16);
            case p.Toolbar_titleMargins /*12*/:
                return c(tlsContext, 16, i2);
            case p.Toolbar_titleMarginStart /*13*/:
                return c(tlsContext, 32, i2);
            case p.Toolbar_titleMarginEnd /*14*/:
                return c(tlsContext, i2);
            case p.Toolbar_titleMarginTop /*15*/:
                return d(tlsContext, 16, 16);
            case p.Toolbar_titleMarginBottom /*16*/:
                return d(tlsContext, 16, 8);
            case p.Toolbar_maxButtonHeight /*17*/:
                return d(tlsContext, 32, 16);
            case p.Toolbar_collapseIcon /*18*/:
                return d(tlsContext, 32, 8);
            case p.Toolbar_collapseContentDescription /*19*/:
                return f(tlsContext, 16, 16);
            case p.Toolbar_navigationIcon /*20*/:
                return f(tlsContext, 32, 16);
            case ApiRunnable.MAX_GET_BROADCASTS /*100*/:
                return a(tlsContext, 12, 32, i2);
            case cse.AppCompatTheme_buttonStyleSmall /*101*/:
                return a(tlsContext, 20, 32, i2);
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                return a(tlsContext);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    protected TlsBlockCipher b(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsBlockCipher(tlsContext, c(), c(), b(i2), b(i2), i);
    }

    protected TlsBlockCipher c(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsBlockCipher(tlsContext, g(), g(), b(i2), b(i2), i);
    }

    protected TlsCipher a(TlsContext tlsContext) throws IOException {
        return new Chacha20Poly1305(tlsContext);
    }

    protected TlsAEADCipher d(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, d(), d(), i, i2);
    }

    protected TlsAEADCipher e(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, e(), e(), i, i2);
    }

    protected TlsAEADCipher f(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsAEADCipher(tlsContext, f(), f(), i, i2);
    }

    protected TlsBlockCipher a(TlsContext tlsContext, int i) throws IOException {
        return new TlsBlockCipher(tlsContext, h(), h(), b(i), b(i), 24);
    }

    protected TlsNullCipher b(TlsContext tlsContext, int i) throws IOException {
        return new TlsNullCipher(tlsContext, b(i), b(i));
    }

    protected TlsStreamCipher g(TlsContext tlsContext, int i, int i2) throws IOException {
        return new TlsStreamCipher(tlsContext, i(), i(), b(i2), b(i2), i, false);
    }

    protected TlsStreamCipher a(TlsContext tlsContext, int i, int i2, int i3) throws IOException {
        return new TlsStreamCipher(tlsContext, a(i), a(i), b(i3), b(i3), i2, true);
    }

    protected TlsBlockCipher c(TlsContext tlsContext, int i) throws IOException {
        return new TlsBlockCipher(tlsContext, j(), j(), b(i), b(i), 16);
    }

    protected BlockCipher a() {
        return new AESEngine();
    }

    protected BlockCipher b() {
        return new CamelliaEngine();
    }

    protected BlockCipher c() {
        return new CBCBlockCipher(a());
    }

    protected AEADBlockCipher d() {
        return new CCMBlockCipher(a());
    }

    protected AEADBlockCipher e() {
        return new GCMBlockCipher(a());
    }

    protected AEADBlockCipher f() {
        return new GCMBlockCipher(b());
    }

    protected BlockCipher g() {
        return new CBCBlockCipher(b());
    }

    protected BlockCipher h() {
        return new CBCBlockCipher(new DESedeEngine());
    }

    protected StreamCipher i() {
        return new RC4Engine();
    }

    protected StreamCipher a(int i) {
        return new Salsa20Engine(i);
    }

    protected BlockCipher j() {
        return new CBCBlockCipher(new SEEDEngine());
    }

    protected Digest b(int i) throws IOException {
        switch (i) {
            case p.View_android_theme /*0*/:
                return null;
            case p.View_android_focusable /*1*/:
                return TlsUtils.b((short) 1);
            case p.View_paddingStart /*2*/:
                return TlsUtils.b((short) 2);
            case p.View_paddingEnd /*3*/:
                return TlsUtils.b((short) 4);
            case p.View_theme /*4*/:
                return TlsUtils.b((short) 5);
            case p.Toolbar_contentInsetStart /*5*/:
                return TlsUtils.b((short) 6);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }
}
