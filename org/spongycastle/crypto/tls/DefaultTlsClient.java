package org.spongycastle.crypto.tls;

import defpackage.cse;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class DefaultTlsClient extends AbstractTlsClient {
    public TlsKeyExchange d() throws IOException {
        switch (this.g) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case p.View_theme /*4*/:
            case p.Toolbar_contentInsetStart /*5*/:
            case p.Toolbar_titleTextAppearance /*10*/:
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
            case ApiRunnable.ACTION_CODE_PLAYBACK_META /*53*/:
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
            case ApiRunnable.ACTION_CODE_ACCESS_VIDEO /*65*/:
            case 132:
            case 150:
            case 156:
            case 157:
            case 186:
            case 192:
            case 49274:
            case 49275:
            case 49308:
            case 49309:
            case 49312:
            case 49313:
            case 58384:
            case 58385:
                return f();
            case p.Toolbar_titleMarginStart /*13*/:
            case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_META /*54*/:
            case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
            case ApiRunnable.ACTION_CODE_ACCESS_CHAT /*66*/:
            case cse.AppCompatTheme_editTextStyle /*104*/:
            case 133:
            case 151:
            case 164:
            case 165:
            case 187:
            case 193:
            case 49282:
            case 49283:
                return b(7);
            case p.Toolbar_titleMarginBottom /*16*/:
            case ApiRunnable.ACTION_CODE_GET_RANK_PARAMETERS /*49*/:
            case ApiRunnable.ACTION_CODE_MUTE /*55*/:
            case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
            case ApiRunnable.ACTION_CODE_START_WATCHING /*67*/:
            case cse.AppCompatTheme_radioButtonStyle /*105*/:
            case 134:
            case 152:
            case 160:
            case 161:
            case 188:
            case 194:
            case 49278:
            case 49279:
                return b(9);
            case p.Toolbar_collapseContentDescription /*19*/:
            case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
            case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
            case ApiRunnable.ACTION_CODE_PING_REPLAY_VIEWED /*68*/:
            case cse.AppCompatTheme_ratingBarStyle /*106*/:
            case 135:
            case 153:
            case 162:
            case 163:
            case 189:
            case 195:
            case 49280:
            case 49281:
                return c(3);
            case p.Toolbar_logoDescription /*22*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_RANK /*51*/:
            case ApiRunnable.ACTION_CODE_SUPPORTED_LANGUAGES /*57*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_SEARCH /*69*/:
            case cse.AppCompatTheme_checkedTextViewStyle /*103*/:
            case cse.AppCompatTheme_ratingBarStyleIndicator /*107*/:
            case 136:
            case 154:
            case 158:
            case 159:
            case 190:
            case 196:
            case 49276:
            case 49277:
            case 49310:
            case 49311:
            case 49314:
            case 49315:
            case 52245:
            case 58398:
            case 58399:
                return c(5);
            case 49153:
            case 49154:
            case 49155:
            case 49156:
            case 49157:
            case 49189:
            case 49190:
            case 49197:
            case 49198:
            case 49268:
            case 49269:
            case 49288:
            case 49289:
                return d(16);
            case 49158:
            case 49159:
            case 49160:
            case 49161:
            case 49162:
            case 49187:
            case 49188:
            case 49195:
            case 49196:
            case 49266:
            case 49267:
            case 49286:
            case 49287:
            case 52244:
            case 58388:
            case 58389:
                return e(17);
            case 49163:
            case 49164:
            case 49165:
            case 49166:
            case 49167:
            case 49193:
            case 49194:
            case 49201:
            case 49202:
            case 49272:
            case 49273:
            case 49292:
            case 49293:
                return d(18);
            case 49168:
            case 49169:
            case 49170:
            case 49171:
            case 49172:
            case 49191:
            case 49192:
            case 49199:
            case 49200:
            case 49270:
            case 49271:
            case 49290:
            case 49291:
            case 52243:
            case 58386:
            case 58387:
                return e(19);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    public TlsCipher e() throws IOException {
        switch (this.g) {
            case p.View_android_focusable /*1*/:
                return this.a.a(this.b, 0, 1);
            case p.View_paddingStart /*2*/:
            case 49153:
            case 49158:
            case 49163:
            case 49168:
                return this.a.a(this.b, 0, 2);
            case p.View_theme /*4*/:
                return this.a.a(this.b, 2, 1);
            case p.Toolbar_contentInsetStart /*5*/:
            case 49154:
            case 49159:
            case 49164:
            case 49169:
                return this.a.a(this.b, 2, 2);
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_titleMarginStart /*13*/:
            case p.Toolbar_titleMarginBottom /*16*/:
            case p.Toolbar_collapseContentDescription /*19*/:
            case p.Toolbar_logoDescription /*22*/:
            case 49155:
            case 49160:
            case 49165:
            case 49170:
                return this.a.a(this.b, 7, 2);
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
            case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
            case ApiRunnable.ACTION_CODE_GET_RANK_PARAMETERS /*49*/:
            case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_RANK /*51*/:
            case 49156:
            case 49161:
            case 49166:
            case 49171:
                return this.a.a(this.b, 8, 2);
            case ApiRunnable.ACTION_CODE_PLAYBACK_META /*53*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_META /*54*/:
            case ApiRunnable.ACTION_CODE_MUTE /*55*/:
            case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
            case ApiRunnable.ACTION_CODE_SUPPORTED_LANGUAGES /*57*/:
            case 49157:
            case 49162:
            case 49167:
            case 49172:
                return this.a.a(this.b, 9, 2);
            case ApiRunnable.ACTION_CODE_HELLO /*59*/:
                return this.a.a(this.b, 0, 3);
            case ApiRunnable.ACTION_CODE_GET_MUTUAL_FOLLOWS /*60*/:
            case ApiRunnable.ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST /*62*/:
            case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
            case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
            case cse.AppCompatTheme_checkedTextViewStyle /*103*/:
            case 49187:
            case 49189:
            case 49191:
            case 49193:
                return this.a.a(this.b, 8, 3);
            case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
            case cse.AppCompatTheme_editTextStyle /*104*/:
            case cse.AppCompatTheme_radioButtonStyle /*105*/:
            case cse.AppCompatTheme_ratingBarStyle /*106*/:
            case cse.AppCompatTheme_ratingBarStyleIndicator /*107*/:
                return this.a.a(this.b, 9, 3);
            case ApiRunnable.ACTION_CODE_ACCESS_VIDEO /*65*/:
            case ApiRunnable.ACTION_CODE_ACCESS_CHAT /*66*/:
            case ApiRunnable.ACTION_CODE_START_WATCHING /*67*/:
            case ApiRunnable.ACTION_CODE_PING_REPLAY_VIEWED /*68*/:
            case ApiRunnable.ACTION_CODE_BROADCAST_SEARCH /*69*/:
                return this.a.a(this.b, 12, 2);
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
                return this.a.a(this.b, 13, 2);
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
                return this.a.a(this.b, 14, 2);
            case 156:
            case 158:
            case 160:
            case 162:
            case 164:
            case 49195:
            case 49197:
            case 49199:
            case 49201:
                return this.a.a(this.b, 10, 0);
            case 157:
            case 159:
            case 161:
            case 163:
            case 165:
            case 49196:
            case 49198:
            case 49200:
            case 49202:
                return this.a.a(this.b, 11, 0);
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 49266:
            case 49268:
            case 49270:
            case 49272:
                return this.a.a(this.b, 12, 3);
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
                return this.a.a(this.b, 13, 3);
            case 49188:
            case 49190:
            case 49192:
            case 49194:
                return this.a.a(this.b, 9, 4);
            case 49267:
            case 49269:
            case 49271:
            case 49273:
                return this.a.a(this.b, 13, 4);
            case 49274:
            case 49276:
            case 49278:
            case 49280:
            case 49282:
            case 49286:
            case 49288:
            case 49290:
            case 49292:
                return this.a.a(this.b, 19, 0);
            case 49275:
            case 49277:
            case 49279:
            case 49281:
            case 49283:
            case 49287:
            case 49289:
            case 49291:
            case 49293:
                return this.a.a(this.b, 20, 0);
            case 49308:
            case 49310:
                return this.a.a(this.b, 15, 0);
            case 49309:
            case 49311:
                return this.a.a(this.b, 17, 0);
            case 49312:
            case 49314:
                return this.a.a(this.b, 16, 0);
            case 49313:
            case 49315:
                return this.a.a(this.b, 18, 0);
            case 52243:
            case 52244:
            case 52245:
                return this.a.a(this.b, cse.AppCompatTheme_checkboxStyle, 0);
            case 58384:
            case 58386:
            case 58388:
            case 58398:
                return this.a.a(this.b, 100, 2);
            case 58385:
            case 58387:
            case 58389:
            case 58399:
                return this.a.a(this.b, cse.AppCompatTheme_buttonStyleSmall, 2);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    protected TlsKeyExchange b(int i) {
        return new TlsDHKeyExchange(i, this.c, null);
    }

    protected TlsKeyExchange c(int i) {
        return new TlsDHEKeyExchange(i, this.c, null);
    }

    protected TlsKeyExchange d(int i) {
        return new TlsECDHKeyExchange(i, this.c, this.d, this.e, this.f);
    }

    protected TlsKeyExchange e(int i) {
        return new TlsECDHEKeyExchange(i, this.c, this.d, this.e, this.f);
    }

    protected TlsKeyExchange f() {
        return new TlsRSAKeyExchange(this.c);
    }
}
