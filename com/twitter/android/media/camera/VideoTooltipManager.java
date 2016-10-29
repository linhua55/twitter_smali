package com.twitter.android.media.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;

/* compiled from: Twttr */
public class VideoTooltipManager implements af {
    private final Context a;
    private final SharedPreferences b;
    private final FragmentManager c;
    private final int d;
    private boolean e;
    private final int f;
    private Tooltip g;

    /* compiled from: Twttr */
    public enum CameraTooltip {
        TOO_SHORT(0),
        SHOW_PUSH_TO_RECORD(1),
        SHOW_ANOTHER_SEGMENT(2),
        SHOW_FINISHED(4),
        SHOW_PLAYBACK(8),
        SHOW_SWITCH_TO_VIDEOS(16),
        SHOW_IMPORT_GRIPPER(32);
        
        public final int tipValue;

        private CameraTooltip(int i) {
            this.tipValue = i;
        }
    }

    public VideoTooltipManager(Context context, FragmentManager fragmentManager, int i) {
        this.a = context;
        this.c = fragmentManager;
        this.f = 0;
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.d = i;
    }

    public static boolean a(Context context) {
        return (PreferenceManager.getDefaultSharedPreferences(context).getInt("video_recorder_education_tips", CameraTooltip.TOO_SHORT.tipValue) & CameraTooltip.SHOW_SWITCH_TO_VIDEOS.tipValue) != 0;
    }

    public void a(CameraTooltip cameraTooltip) {
        int i = cameraTooltip.tipValue;
        int i2 = this.b.getInt("video_recorder_education_tips", CameraTooltip.TOO_SHORT.tipValue);
        if (!this.e && (i2 & i) == 0) {
            switch (bd.a[cameraTooltip.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    b(2131362034);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    c(2131362036);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    b(2131362033);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    d(this.d == 1 ? 2131364157 : 2131364156);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    e(2131362039);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    f(2131364154);
                    break;
                default:
                    b(2131362037);
                    break;
            }
            this.e = true;
            if (i != 0) {
                this.b.edit().putInt("video_recorder_education_tips", i | i2).apply();
            }
        }
    }

    private void b(int i) {
        if (this.f != 2131952054) {
            Tooltip.a(this.a, 2131952054).d(2131952035).b(2131559423).a(i).c(0).a(this).a(this.c, "shutter_tag");
        }
    }

    private void c(int i) {
        if (this.f != 2131952522) {
            Tooltip.a(this.a, 2131952522).d(2131952035).b(2131559425).a(i).c(0).a(this).a(this.c, "segment_tag");
        }
    }

    private void d(int i) {
        if (this.f != 2131951937) {
            Tooltip.a(this.a, 2131951937).d(2131952035).b(2131559423).a(i).c(1).a(this).a(this.c, "done_tag");
        }
    }

    private void e(int i) {
        if (this.f != 2131952051) {
            Tooltip.a(this.a, 2131952051).d(2131952035).b(2131559426).a(i).c(0).a(this).a(this.c, "switch_mode_tag");
        }
    }

    private void f(int i) {
        if (this.f != 2131952497) {
            Tooltip.a(this.a, 2131952497).d(2131951922).b(2131559426).a(i).c(0).a(this).a(this.c, "import_gripper_tag");
        }
    }

    public void a(int i) {
        CharSequence string = this.a.getResources().getString(i > 1 ? 2131364153 : 2131364152, new Object[]{Integer.valueOf(Math.max(1, i))});
        this.g = Tooltip.a(this.a, 2131952497).d(2131951922).b(2131559424).a(string).c(0).a(this).a(this.c, "import_gripper_duration_tag", false).a(string);
    }

    public void a() {
        if (this.g != null) {
            this.g.a(true);
        }
    }

    public void a(Tooltip tooltip, int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                tooltip.a(true);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.e = false;
            default:
        }
    }
}
