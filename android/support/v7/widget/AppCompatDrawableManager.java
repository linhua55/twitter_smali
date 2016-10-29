package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: Twttr */
public final class AppCompatDrawableManager {
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY;
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED;
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE;
    private static final boolean DEBUG = false;
    private static final Mode DEFAULT_MODE;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManager";
    private static final int[] TINT_CHECKABLE_BUTTON_LIST;
    private static final int[] TINT_COLOR_CONTROL_NORMAL;
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST;
    private final Object mDelegateDrawableCacheLock;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<ConstantState>>> mDelegateDrawableCaches;
    private ArrayMap<String, InflateDelegate> mDelegates;
    private boolean mHasCheckedVectorDrawableSetup;
    private SparseArray<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArray<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;

    /* compiled from: Twttr */
    interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme);
    }

    /* compiled from: Twttr */
    class AvdcInflateDelegate implements InflateDelegate {
        private AvdcInflateDelegate() {
        }

        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Throwable e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* compiled from: Twttr */
    class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        PorterDuffColorFilter get(int i, Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        PorterDuffColorFilter put(int i, Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }

        private static int generateCacheKey(int i, Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* compiled from: Twttr */
    class VdcInflateDelegate implements InflateDelegate {
        private VdcInflateDelegate() {
        }

        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Throwable e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    public AppCompatDrawableManager() {
        this.mDelegateDrawableCacheLock = new Object();
        this.mDelegateDrawableCaches = new WeakHashMap(0);
    }

    static {
        DEFAULT_MODE = Mode.SRC_IN;
        COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
        COLORFILTER_TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_ic_ab_back_mtrl_am_alpha, R.drawable.abc_ic_go_search_api_mtrl_alpha, R.drawable.abc_ic_search_api_mtrl_alpha, R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_ic_clear_mtrl_alpha, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha, R.drawable.abc_ic_menu_moreoverflow_mtrl_alpha, R.drawable.abc_ic_voice_search_api_mtrl_alpha};
        COLORFILTER_COLOR_CONTROL_ACTIVATED = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material};
        COLORFILTER_COLOR_BACKGROUND_MULTIPLY = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        TINT_COLOR_CONTROL_STATE_LIST = new int[]{R.drawable.abc_edit_text_material, R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material, R.drawable.abc_spinner_mtrl_am_alpha, R.drawable.abc_spinner_textfield_background_material, R.drawable.abc_ratingbar_full_material, R.drawable.abc_switch_track_mtrl_alpha, R.drawable.abc_switch_thumb_material, R.drawable.abc_btn_default_mtrl_shape, R.drawable.abc_btn_borderless_material};
        TINT_CHECKABLE_BUTTON_LIST = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};
    }

    public static AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            INSTANCE = new AppCompatDrawableManager();
            installDefaultInflateDelegates(INSTANCE);
        }
        return INSTANCE;
    }

    private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        int i = VERSION.SDK_INT;
        if (i < 21) {
            appCompatDrawableManager.addDelegate("vector", new VdcInflateDelegate());
            if (i >= 11) {
                appCompatDrawableManager.addDelegate("animated-vector", new AvdcInflateDelegate());
            }
        }
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return getDrawable(context, i, DEBUG);
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
        }
        if (loadDrawableFromDelegates != null) {
            loadDrawableFromDelegates = tintDrawable(context, i, z, loadDrawableFromDelegates);
        }
        if (loadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(loadDrawableFromDelegates);
        }
        return loadDrawableFromDelegates;
    }

    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            drawable = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(drawable, tintList);
            Mode tintMode = getTintMode(i);
            if (tintMode == null) {
                return drawable;
            }
            DrawableCompat.setTintMode(drawable, tintMode);
            return drawable;
        } else if (i == R.drawable.abc_cab_background_top_material) {
            return new LayerDrawable(new Drawable[]{getDrawable(context, R.drawable.abc_cab_background_internal_bg), getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
        } else if (i == R.drawable.abc_seekbar_track_material) {
            r0 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        } else if (i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
            r0 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        } else if (tintDrawableUsingColorFilter(context, i, drawable) || !z) {
            return drawable;
        } else {
            return null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.drawable.Drawable loadDrawableFromDelegates(@android.support.annotation.NonNull android.content.Context r11, @android.support.annotation.DrawableRes int r12) {
        /*
        r10 = this;
        r1 = 0;
        r9 = 2;
        r8 = 1;
        r0 = r10.mDelegates;
        if (r0 == 0) goto L_0x00cb;
    L_0x0007:
        r0 = r10.mDelegates;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x00cb;
    L_0x000f:
        r0 = r10.mKnownDrawableIdTags;
        if (r0 == 0) goto L_0x0030;
    L_0x0013:
        r0 = r10.mKnownDrawableIdTags;
        r0 = r0.get(r12);
        r0 = (java.lang.String) r0;
        r2 = "appcompat_skip_skip";
        r2 = r2.equals(r0);
        if (r2 != 0) goto L_0x002e;
    L_0x0024:
        if (r0 == 0) goto L_0x0037;
    L_0x0026:
        r2 = r10.mDelegates;
        r0 = r2.get(r0);
        if (r0 != 0) goto L_0x0037;
    L_0x002e:
        r0 = r1;
    L_0x002f:
        return r0;
    L_0x0030:
        r0 = new android.util.SparseArray;
        r0.<init>();
        r10.mKnownDrawableIdTags = r0;
    L_0x0037:
        r0 = r10.mTypedValue;
        if (r0 != 0) goto L_0x0042;
    L_0x003b:
        r0 = new android.util.TypedValue;
        r0.<init>();
        r10.mTypedValue = r0;
    L_0x0042:
        r2 = r10.mTypedValue;
        r0 = r11.getResources();
        r0.getValue(r12, r2, r8);
        r1 = r2.assetCookie;
        r4 = (long) r1;
        r1 = 32;
        r4 = r4 << r1;
        r1 = r2.data;
        r6 = (long) r1;
        r4 = r4 | r6;
        r1 = r10.getCachedDelegateDrawable(r11, r4);
        if (r1 == 0) goto L_0x005d;
    L_0x005b:
        r0 = r1;
        goto L_0x002f;
    L_0x005d:
        r3 = r2.string;
        if (r3 == 0) goto L_0x0095;
    L_0x0061:
        r3 = r2.string;
        r3 = r3.toString();
        r6 = ".xml";
        r3 = r3.endsWith(r6);
        if (r3 == 0) goto L_0x0095;
    L_0x0070:
        r3 = r0.getXml(r12);	 Catch:{ Exception -> 0x008b }
        r6 = android.util.Xml.asAttributeSet(r3);	 Catch:{ Exception -> 0x008b }
    L_0x0078:
        r0 = r3.next();	 Catch:{ Exception -> 0x008b }
        if (r0 == r9) goto L_0x0080;
    L_0x007e:
        if (r0 != r8) goto L_0x0078;
    L_0x0080:
        if (r0 == r9) goto L_0x00a1;
    L_0x0082:
        r0 = new org.xmlpull.v1.XmlPullParserException;	 Catch:{ Exception -> 0x008b }
        r2 = "No start tag found";
        r0.<init>(r2);	 Catch:{ Exception -> 0x008b }
        throw r0;	 Catch:{ Exception -> 0x008b }
    L_0x008b:
        r0 = move-exception;
        r2 = "AppCompatDrawableManager";
        r3 = "Exception while inflating drawable";
        android.util.Log.e(r2, r3, r0);
    L_0x0095:
        r0 = r1;
    L_0x0096:
        if (r0 != 0) goto L_0x002f;
    L_0x0098:
        r1 = r10.mKnownDrawableIdTags;
        r2 = "appcompat_skip_skip";
        r1.append(r12, r2);
        goto L_0x002f;
    L_0x00a1:
        r0 = r3.getName();	 Catch:{ Exception -> 0x008b }
        r7 = r10.mKnownDrawableIdTags;	 Catch:{ Exception -> 0x008b }
        r7.append(r12, r0);	 Catch:{ Exception -> 0x008b }
        r7 = r10.mDelegates;	 Catch:{ Exception -> 0x008b }
        r0 = r7.get(r0);	 Catch:{ Exception -> 0x008b }
        r0 = (android.support.v7.widget.AppCompatDrawableManager.InflateDelegate) r0;	 Catch:{ Exception -> 0x008b }
        if (r0 == 0) goto L_0x00bc;
    L_0x00b4:
        r7 = r11.getTheme();	 Catch:{ Exception -> 0x008b }
        r1 = r0.createFromXmlInner(r11, r3, r6, r7);	 Catch:{ Exception -> 0x008b }
    L_0x00bc:
        if (r1 == 0) goto L_0x00c9;
    L_0x00be:
        r0 = r2.changingConfigurations;	 Catch:{ Exception -> 0x008b }
        r1.setChangingConfigurations(r0);	 Catch:{ Exception -> 0x008b }
        r0 = r10.addCachedDelegateDrawable(r11, r4, r1);	 Catch:{ Exception -> 0x008b }
        if (r0 == 0) goto L_0x00c9;
    L_0x00c9:
        r0 = r1;
        goto L_0x0096;
    L_0x00cb:
        r0 = r1;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatDrawableManager.loadDrawableFromDelegates(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    private Drawable getCachedDelegateDrawable(@NonNull Context context, long j) {
        synchronized (this.mDelegateDrawableCacheLock) {
            LongSparseArray longSparseArray = (LongSparseArray) this.mDelegateDrawableCaches.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) longSparseArray.get(j);
            if (weakReference != null) {
                ConstantState constantState = (ConstantState) weakReference.get();
                if (constantState != null) {
                    Drawable newDrawable = constantState.newDrawable(context.getResources());
                    return newDrawable;
                }
                longSparseArray.delete(j);
            }
            return null;
        }
    }

    private boolean addCachedDelegateDrawable(@NonNull Context context, long j, @NonNull Drawable drawable) {
        ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return DEBUG;
        }
        synchronized (this.mDelegateDrawableCacheLock) {
            LongSparseArray longSparseArray = (LongSparseArray) this.mDelegateDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray();
                this.mDelegateDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference(constantState));
        }
        return true;
    }

    public final Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull TintResources tintResources, @DrawableRes int i) {
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = tintResources.superGetDrawable(i);
        }
        if (loadDrawableFromDelegates != null) {
            return tintDrawable(context, i, DEBUG, loadDrawableFromDelegates);
        }
        return null;
    }

    private static boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        int i2;
        Mode mode;
        boolean z;
        int i3;
        Mode mode2 = DEFAULT_MODE;
        if (arrayContains(COLORFILTER_TINT_COLOR_CONTROL_NORMAL, i)) {
            i2 = R.attr.colorControlNormal;
            mode = mode2;
            z = true;
            i3 = -1;
        } else if (arrayContains(COLORFILTER_COLOR_CONTROL_ACTIVATED, i)) {
            i2 = R.attr.colorControlActivated;
            mode = mode2;
            z = true;
            i3 = -1;
        } else if (arrayContains(COLORFILTER_COLOR_BACKGROUND_MULTIPLY, i)) {
            z = true;
            mode = Mode.MULTIPLY;
            i2 = 16842801;
            i3 = -1;
        } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
            i2 = 16842800;
            i3 = Math.round(40.8f);
            mode = mode2;
            z = true;
        } else {
            i3 = -1;
            i2 = 0;
            mode = mode2;
            z = false;
        }
        if (!z) {
            return DEBUG;
        }
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        drawable.setColorFilter(getPorterDuffColorFilter(ThemeUtils.getThemeAttrColor(context, i2), mode));
        if (i3 == -1) {
            return true;
        }
        drawable.setAlpha(i3);
        return true;
    }

    private void addDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private void removeDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates != null && this.mDelegates.get(str) == inflateDelegate) {
            this.mDelegates.remove(str);
        }
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return DEBUG;
    }

    final Mode getTintMode(int i) {
        if (i == R.drawable.abc_switch_thumb_material) {
            return Mode.MULTIPLY;
        }
        return null;
    }

    public final ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            if (i == R.drawable.abc_edit_text_material) {
                tintListFromCache = createEditTextColorStateList(context);
            } else if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                tintListFromCache = createSwitchTrackColorStateList(context);
            } else if (i == R.drawable.abc_switch_thumb_material) {
                tintListFromCache = createSwitchThumbColorStateList(context);
            } else if (i == R.drawable.abc_btn_default_mtrl_shape || i == R.drawable.abc_btn_borderless_material) {
                tintListFromCache = createDefaultButtonColorStateList(context);
            } else if (i == R.drawable.abc_btn_colored_material) {
                tintListFromCache = createColoredButtonColorStateList(context);
            } else if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                tintListFromCache = createSpinnerColorStateList(context);
            } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                tintListFromCache = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                tintListFromCache = createDefaultColorStateList(context);
            } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                tintListFromCache = createCheckableButtonColorStateList(context);
            } else if (i == R.drawable.abc_seekbar_thumb_material) {
                tintListFromCache = createSeekbarThumbColorStateList(context);
            }
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    private ColorStateList getTintListFromCache(@NonNull Context context, @DrawableRes int i) {
        if (this.mTintLists == null) {
            return null;
        }
        SparseArray sparseArray = (SparseArray) this.mTintLists.get(context);
        if (sparseArray != null) {
            return (ColorStateList) sparseArray.get(i);
        }
        return null;
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap();
        }
        SparseArray sparseArray = (SparseArray) this.mTintLists.get(context);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            this.mTintLists.put(context, sparseArray);
        }
        sparseArray.append(i, colorStateList);
    }

    private ColorStateList createDefaultColorStateList(Context context) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        r2 = new int[7][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.FOCUSED_STATE_SET, themeAttrColor2, ThemeUtils.ACTIVATED_STATE_SET, themeAttrColor2, ThemeUtils.PRESSED_STATE_SET};
        iArr[3] = themeAttrColor2;
        r2[4] = ThemeUtils.CHECKED_STATE_SET;
        iArr[4] = themeAttrColor2;
        r2[5] = ThemeUtils.SELECTED_STATE_SET;
        iArr[5] = themeAttrColor2;
        r2[6] = ThemeUtils.EMPTY_STATE_SET;
        iArr[6] = themeAttrColor;
        return new ColorStateList(r2, iArr);
    }

    private ColorStateList createCheckableButtonColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.CHECKED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSwitchTrackColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getThemeAttrColor(context, 16842800, 0.1f), ThemeUtils.CHECKED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated, 0.3f);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, 16842800, 0.3f);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        } else {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    private ColorStateList createEditTextColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createDefaultButtonColorStateList(Context context) {
        return createButtonColorStateList(context, R.attr.colorButtonNormal);
    }

    private ColorStateList createColoredButtonColorStateList(Context context) {
        return createButtonColorStateList(context, R.attr.colorAccent);
    }

    private ColorStateList createButtonColorStateList(Context context, int i) {
        r0 = new int[4][];
        r1 = new int[4];
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, i);
        int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        r0[0] = ThemeUtils.DISABLED_STATE_SET;
        r1[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal);
        r0[1] = ThemeUtils.PRESSED_STATE_SET;
        r1[1] = ColorUtils.compositeColors(themeAttrColor2, themeAttrColor);
        r0[2] = ThemeUtils.FOCUSED_STATE_SET;
        r1[2] = ColorUtils.compositeColors(themeAttrColor2, themeAttrColor);
        r0[3] = ThemeUtils.EMPTY_STATE_SET;
        r1[3] = themeAttrColor;
        return new ColorStateList(r0, r1);
    }

    private ColorStateList createSpinnerColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSeekbarThumbColorStateList(Context context) {
        r0 = new int[2][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlActivated)};
        r0[1] = ThemeUtils.EMPTY_STATE_SET;
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.canSafelyMutateDrawable(drawable) || drawable.mutate() == drawable) {
            if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d(TAG, "Mutated drawable is not the same instance as the input.");
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter = COLOR_FILTER_CACHE.get(i, mode);
        if (porterDuffColorFilter != null) {
            return porterDuffColorFilter;
        }
        porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        COLOR_FILTER_CACHE.put(i, mode, porterDuffColorFilter);
        return porterDuffColorFilter;
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i, Mode mode) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        drawable.setColorFilter(getPorterDuffColorFilter(i, mode));
    }

    private static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return ((drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName())) ? true : DEBUG;
    }
}
