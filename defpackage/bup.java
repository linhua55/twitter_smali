package defpackage;

import android.os.Build.VERSION;
import bcw;
import com.twitter.config.d;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bup */
public class bup implements asp {
    private static bup a;
    private static final List<Integer> b;
    private static final List<Integer> c;
    private boolean d;

    static {
        b = n.a(Integer.valueOf(bcw.heart_animation_60fps_00000), Integer.valueOf(bcw.heart_animation_60fps_00001), Integer.valueOf(bcw.heart_animation_60fps_00002), Integer.valueOf(bcw.heart_animation_60fps_00003), Integer.valueOf(bcw.heart_animation_60fps_00004), Integer.valueOf(bcw.heart_animation_60fps_00005), Integer.valueOf(bcw.heart_animation_60fps_00006), Integer.valueOf(bcw.heart_animation_60fps_00007), Integer.valueOf(bcw.heart_animation_60fps_00008), Integer.valueOf(bcw.heart_animation_60fps_00009), Integer.valueOf(bcw.heart_animation_60fps_00010), Integer.valueOf(bcw.heart_animation_60fps_00011), Integer.valueOf(bcw.heart_animation_60fps_00012), Integer.valueOf(bcw.heart_animation_60fps_00013), Integer.valueOf(bcw.heart_animation_60fps_00014), Integer.valueOf(bcw.heart_animation_60fps_00015), Integer.valueOf(bcw.heart_animation_60fps_00016), Integer.valueOf(bcw.heart_animation_60fps_00017), Integer.valueOf(bcw.heart_animation_60fps_00018), Integer.valueOf(bcw.heart_animation_60fps_00019), Integer.valueOf(bcw.heart_animation_60fps_00020), Integer.valueOf(bcw.heart_animation_60fps_00021), Integer.valueOf(bcw.heart_animation_60fps_00022), Integer.valueOf(bcw.heart_animation_60fps_00023), Integer.valueOf(bcw.heart_animation_60fps_00024), Integer.valueOf(bcw.heart_animation_60fps_00025), Integer.valueOf(bcw.heart_animation_60fps_00026), Integer.valueOf(bcw.heart_animation_60fps_00027), Integer.valueOf(bcw.heart_animation_60fps_00028), Integer.valueOf(bcw.heart_animation_60fps_00029), Integer.valueOf(bcw.heart_animation_60fps_00030), Integer.valueOf(bcw.heart_animation_60fps_00031), Integer.valueOf(bcw.heart_animation_60fps_00032), Integer.valueOf(bcw.heart_animation_60fps_00033), Integer.valueOf(bcw.heart_animation_60fps_00034), Integer.valueOf(bcw.heart_animation_60fps_00035), Integer.valueOf(bcw.heart_animation_60fps_00036), Integer.valueOf(bcw.heart_animation_60fps_00037), Integer.valueOf(bcw.heart_animation_60fps_00038), Integer.valueOf(bcw.heart_animation_60fps_00039), Integer.valueOf(bcw.heart_animation_60fps_00040), Integer.valueOf(bcw.heart_animation_60fps_00041), Integer.valueOf(bcw.heart_animation_60fps_00042), Integer.valueOf(bcw.heart_animation_60fps_00043), Integer.valueOf(bcw.heart_animation_60fps_00044), Integer.valueOf(bcw.heart_animation_60fps_00045), Integer.valueOf(bcw.heart_animation_60fps_00046), Integer.valueOf(bcw.heart_animation_60fps_00047), Integer.valueOf(bcw.heart_animation_60fps_00048), Integer.valueOf(bcw.heart_animation_60fps_00049), Integer.valueOf(bcw.heart_animation_60fps_00050), Integer.valueOf(bcw.heart_animation_60fps_00051), Integer.valueOf(bcw.heart_animation_60fps_00052), Integer.valueOf(bcw.heart_animation_60fps_00053), Integer.valueOf(bcw.heart_animation_60fps_00054), Integer.valueOf(bcw.heart_animation_60fps_00055), Integer.valueOf(bcw.heart_animation_60fps_00056), Integer.valueOf(bcw.heart_animation_60fps_00057), Integer.valueOf(bcw.heart_animation_60fps_00058), Integer.valueOf(bcw.heart_animation_60fps_00059));
        c = n.a(Integer.valueOf(bcw.heart_animation_detail_60fps_00000), Integer.valueOf(bcw.heart_animation_detail_60fps_00001), Integer.valueOf(bcw.heart_animation_detail_60fps_00002), Integer.valueOf(bcw.heart_animation_detail_60fps_00003), Integer.valueOf(bcw.heart_animation_detail_60fps_00004), Integer.valueOf(bcw.heart_animation_detail_60fps_00005), Integer.valueOf(bcw.heart_animation_detail_60fps_00006), Integer.valueOf(bcw.heart_animation_detail_60fps_00007), Integer.valueOf(bcw.heart_animation_detail_60fps_00008), Integer.valueOf(bcw.heart_animation_detail_60fps_00009), Integer.valueOf(bcw.heart_animation_detail_60fps_00010), Integer.valueOf(bcw.heart_animation_detail_60fps_00011), Integer.valueOf(bcw.heart_animation_detail_60fps_00012), Integer.valueOf(bcw.heart_animation_detail_60fps_00013), Integer.valueOf(bcw.heart_animation_detail_60fps_00014), Integer.valueOf(bcw.heart_animation_detail_60fps_00015), Integer.valueOf(bcw.heart_animation_detail_60fps_00016), Integer.valueOf(bcw.heart_animation_detail_60fps_00017), Integer.valueOf(bcw.heart_animation_detail_60fps_00018), Integer.valueOf(bcw.heart_animation_detail_60fps_00019), Integer.valueOf(bcw.heart_animation_detail_60fps_00020), Integer.valueOf(bcw.heart_animation_detail_60fps_00021), Integer.valueOf(bcw.heart_animation_detail_60fps_00022), Integer.valueOf(bcw.heart_animation_detail_60fps_00023), Integer.valueOf(bcw.heart_animation_detail_60fps_00024), Integer.valueOf(bcw.heart_animation_detail_60fps_00025), Integer.valueOf(bcw.heart_animation_detail_60fps_00026), Integer.valueOf(bcw.heart_animation_detail_60fps_00027), Integer.valueOf(bcw.heart_animation_detail_60fps_00028), Integer.valueOf(bcw.heart_animation_detail_60fps_00029), Integer.valueOf(bcw.heart_animation_detail_60fps_00030), Integer.valueOf(bcw.heart_animation_detail_60fps_00031), Integer.valueOf(bcw.heart_animation_detail_60fps_00032), Integer.valueOf(bcw.heart_animation_detail_60fps_00033), Integer.valueOf(bcw.heart_animation_detail_60fps_00034), Integer.valueOf(bcw.heart_animation_detail_60fps_00035), Integer.valueOf(bcw.heart_animation_detail_60fps_00036), Integer.valueOf(bcw.heart_animation_detail_60fps_00037), Integer.valueOf(bcw.heart_animation_detail_60fps_00038), Integer.valueOf(bcw.heart_animation_detail_60fps_00039), Integer.valueOf(bcw.heart_animation_detail_60fps_00040), Integer.valueOf(bcw.heart_animation_detail_60fps_00041), Integer.valueOf(bcw.heart_animation_detail_60fps_00042), Integer.valueOf(bcw.heart_animation_detail_60fps_00043), Integer.valueOf(bcw.heart_animation_detail_60fps_00044), Integer.valueOf(bcw.heart_animation_detail_60fps_00045), Integer.valueOf(bcw.heart_animation_detail_60fps_00046), Integer.valueOf(bcw.heart_animation_detail_60fps_00047), Integer.valueOf(bcw.heart_animation_detail_60fps_00048), Integer.valueOf(bcw.heart_animation_detail_60fps_00049), Integer.valueOf(bcw.heart_animation_detail_60fps_00050), Integer.valueOf(bcw.heart_animation_detail_60fps_00051), Integer.valueOf(bcw.heart_animation_detail_60fps_00052), Integer.valueOf(bcw.heart_animation_detail_60fps_00053), Integer.valueOf(bcw.heart_animation_detail_60fps_00054), Integer.valueOf(bcw.heart_animation_detail_60fps_00055), Integer.valueOf(bcw.heart_animation_detail_60fps_00056), Integer.valueOf(bcw.heart_animation_detail_60fps_00057), Integer.valueOf(bcw.heart_animation_detail_60fps_00058), Integer.valueOf(bcw.heart_animation_detail_60fps_00059));
    }

    public static bup a() {
        if (a == null) {
            synchronized (bup.class) {
                if (a == null) {
                    a = new bup();
                }
            }
        }
        return a;
    }

    private bup() {
        this.d = d.a("hal_android_hearts_animations");
        bvj.a((asp) this);
    }

    public boolean b() {
        return this.d && VERSION.SDK_INT >= 17;
    }

    public List<Integer> c() {
        return b;
    }

    public List<Integer> d() {
        return c;
    }

    public void a(long j) {
        this.d = d.a("hal_android_hearts_animations");
    }
}
