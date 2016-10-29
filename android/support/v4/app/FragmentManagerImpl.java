package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
final class FragmentManagerImpl extends FragmentManager implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC;
    static final Interpolator ACCELERATE_QUINT;
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC;
    static final Interpolator DECELERATE_QUINT;
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    static Field sAnimationListenerField;
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    FragmentController mController;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState;
    boolean mDestroyed;
    Runnable mExecCommit;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray;
    Bundle mStateBundle;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.app.FragmentManagerImpl.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ String val$name;

        AnonymousClass3(String str, int i) {
            this.val$name = str;
            this.val$flags = i;
        }

        public void run() {
            FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), this.val$name, -1, this.val$flags);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.app.FragmentManagerImpl.4 */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$id;

        AnonymousClass4(int i, int i2) {
            this.val$id = i;
            this.val$flags = i2;
        }

        public void run() {
            FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, this.val$id, this.val$flags);
        }
    }

    /* compiled from: Twttr */
    class AnimateOnHWLayerIfNeededListener implements AnimationListener {
        private AnimationListener mOrignalListener;
        private boolean mShouldRunOnHWLayer;
        private View mView;

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation) {
            this.mOrignalListener = null;
            this.mShouldRunOnHWLayer = FragmentManagerImpl.HONEYCOMB;
            this.mView = null;
            if (view != null && animation != null) {
                this.mView = view;
            }
        }

        public AnimateOnHWLayerIfNeededListener(View view, Animation animation, AnimationListener animationListener) {
            this.mOrignalListener = null;
            this.mShouldRunOnHWLayer = FragmentManagerImpl.HONEYCOMB;
            this.mView = null;
            if (view != null && animation != null) {
                this.mOrignalListener = animationListener;
                this.mView = view;
            }
        }

        @CallSuper
        public void onAnimationStart(Animation animation) {
            if (this.mView != null) {
                this.mShouldRunOnHWLayer = FragmentManagerImpl.shouldRunOnHWLayer(this.mView, animation);
                if (this.mShouldRunOnHWLayer) {
                    this.mView.post(new Runnable() {
                        public void run() {
                            ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, FragmentManagerImpl.ANIM_STYLE_OPEN_EXIT, null);
                        }
                    });
                }
            }
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationStart(animation);
            }
        }

        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mView != null && this.mShouldRunOnHWLayer) {
                this.mView.post(new Runnable() {
                    public void run() {
                        ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                    }
                });
            }
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation) {
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationRepeat(animation);
            }
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.app.FragmentManagerImpl.5 */
    class AnonymousClass5 extends AnimateOnHWLayerIfNeededListener {
        final /* synthetic */ Fragment val$fragment;

        AnonymousClass5(View view, Animation animation, Fragment fragment) {
            this.val$fragment = fragment;
            super(view, animation);
        }

        public void onAnimationEnd(Animation animation) {
            super.onAnimationEnd(animation);
            if (this.val$fragment.mAnimatingAway != null) {
                this.val$fragment.mAnimatingAway = null;
                FragmentManagerImpl.this.moveToState(this.val$fragment, this.val$fragment.mStateAfterAnimating, 0, 0, FragmentManagerImpl.HONEYCOMB);
            }
        }
    }

    /* compiled from: Twttr */
    class FragmentTag {
        public static final int[] Fragment;
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }

        static {
            Fragment = new int[]{16842755, 16842960, 16842961};
        }
    }

    FragmentManagerImpl() {
        this.mCurState = 0;
        this.mStateBundle = null;
        this.mStateArray = null;
        this.mExecCommit = new Runnable() {
            public void run() {
                FragmentManagerImpl.this.execPendingActions();
            }
        };
    }

    static {
        boolean z = HONEYCOMB;
        DEBUG = HONEYCOMB;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
        sAnimationListenerField = null;
        DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
        DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
        ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
        ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    }

    static boolean modifiesAlpha(Animation animation) {
        if (animation instanceof AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof AnimationSet)) {
            return HONEYCOMB;
        }
        List animations = ((AnimationSet) animation).getAnimations();
        for (int i = 0; i < animations.size(); i += ANIM_STYLE_OPEN_ENTER) {
            if (animations.get(i) instanceof AlphaAnimation) {
                return true;
            }
        }
        return HONEYCOMB;
    }

    static boolean shouldRunOnHWLayer(View view, Animation animation) {
        return (VERSION.SDK_INT >= 19 && ViewCompat.getLayerType(view) == 0 && ViewCompat.hasOverlappingRendering(view) && modifiesAlpha(animation)) ? true : HONEYCOMB;
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, printWriter, new String[0]);
            } catch (Throwable e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", null, printWriter, new String[0]);
            } catch (Throwable e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    public void popBackStack() {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, -1, 0);
            }
        }, HONEYCOMB);
    }

    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), null, -1, 0);
    }

    public void popBackStack(String str, int i) {
        enqueueAction(new AnonymousClass3(str, i), HONEYCOMB);
    }

    public boolean popBackStackImmediate(String str, int i) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), str, -1, i);
    }

    public void popBackStack(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        enqueueAction(new AnonymousClass4(i, i2), HONEYCOMB);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        checkStateLoss();
        executePendingTransactions();
        if (i >= 0) {
            return popBackStackState(this.mHost.getHandler(), null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    public int getBackStackEntryCount() {
        return this.mBackStack != null ? this.mBackStack.size() : 0;
    }

    public BackStackEntry getBackStackEntryAt(int i) {
        return (BackStackEntry) this.mBackStack.get(i);
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public Fragment getFragment(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.mActive.get(i);
        if (fragment != null) {
            return fragment;
        }
        throwException(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public List<Fragment> getFragments() {
        return this.mActive;
    }

    public SavedState saveFragmentInstanceState(Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0) {
            return null;
        }
        Bundle saveFragmentBasicState = saveFragmentBasicState(fragment);
        if (saveFragmentBasicState != null) {
            return new SavedState(saveFragmentBasicState);
        }
        return null;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, stringBuilder);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int i;
        Fragment fragment;
        int i2 = 0;
        String str2 = str + "    ";
        if (this.mActive != null) {
            size = this.mActive.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (i = 0; i < size; i += ANIM_STYLE_OPEN_ENTER) {
                    fragment = (Fragment) this.mActive.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(str2, fileDescriptor, printWriter, strArr);
                    }
                }
            }
        }
        if (this.mAdded != null) {
            size = this.mAdded.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                for (i = 0; i < size; i += ANIM_STYLE_OPEN_ENTER) {
                    fragment = (Fragment) this.mAdded.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.mCreatedMenus != null) {
            size = this.mCreatedMenus.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (i = 0; i < size; i += ANIM_STYLE_OPEN_ENTER) {
                    fragment = (Fragment) this.mCreatedMenus.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.mBackStack != null) {
            size = this.mBackStack.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (i = 0; i < size; i += ANIM_STYLE_OPEN_ENTER) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(backStackRecord.toString());
                    backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null) {
                int size2 = this.mBackStackIndices.size();
                if (size2 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (i = 0; i < size2; i += ANIM_STYLE_OPEN_ENTER) {
                        backStackRecord = (BackStackRecord) this.mBackStackIndices.get(i);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(backStackRecord);
                    }
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null) {
            i = this.mPendingActions.size();
            if (i > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                while (i2 < i) {
                    Runnable runnable = (Runnable) this.mPendingActions.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(runnable);
                    i2 += ANIM_STYLE_OPEN_ENTER;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float f, float f2, float f3, float f4) {
        Animation animationSet = new AnimationSet(HONEYCOMB);
        Animation scaleAnimation = new ScaleAnimation(f, f2, f, f2, ANIM_STYLE_OPEN_ENTER, 0.5f, ANIM_STYLE_OPEN_ENTER, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        scaleAnimation = new AlphaAnimation(f3, f4);
        scaleAnimation.setInterpolator(DECELERATE_CUBIC);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        return animationSet;
    }

    static Animation makeFadeAnimation(Context context, float f, float f2) {
        Animation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    Animation loadAnimation(Fragment fragment, int i, boolean z, int i2) {
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0) {
            onCreateAnimation = AnimationUtils.loadAnimation(this.mHost.getContext(), fragment.mNextAnim);
            if (onCreateAnimation != null) {
                return onCreateAnimation;
            }
        }
        if (i == 0) {
            return null;
        }
        int transitToStyleIndex = transitToStyleIndex(i, z);
        if (transitToStyleIndex < 0) {
            return null;
        }
        switch (transitToStyleIndex) {
            case ANIM_STYLE_OPEN_ENTER /*1*/:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
            case ANIM_STYLE_OPEN_EXIT /*2*/:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
            case ANIM_STYLE_CLOSE_ENTER /*3*/:
                return makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
            case ANIM_STYLE_CLOSE_EXIT /*4*/:
                return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
            case ANIM_STYLE_FADE_ENTER /*5*/:
                return makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
            case ANIM_STYLE_FADE_EXIT /*6*/:
                return makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.mHost.onHasWindowAnimations()) {
                    i2 = this.mHost.onGetWindowAnimations();
                }
                if (i2 == 0) {
                    return null;
                }
                return null;
        }
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        fragment.mDeferStart = HONEYCOMB;
        moveToState(fragment, this.mCurState, 0, 0, HONEYCOMB);
    }

    private void setHWLayerAnimListenerIfAlpha(View view, Animation animation) {
        if (view != null && animation != null && shouldRunOnHWLayer(view, animation)) {
            AnimationListener animationListener;
            try {
                if (sAnimationListenerField == null) {
                    sAnimationListenerField = Animation.class.getDeclaredField("mListener");
                    sAnimationListenerField.setAccessible(true);
                }
                animationListener = (AnimationListener) sAnimationListenerField.get(animation);
            } catch (Throwable e) {
                Log.e(TAG, "No field with the name mListener is found in Animation class", e);
                animationListener = null;
            } catch (Throwable e2) {
                Log.e(TAG, "Cannot access Animation's mListener field", e2);
                animationListener = null;
            }
            animation.setAnimationListener(new AnimateOnHWLayerIfNeededListener(view, animation, animationListener));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void moveToState(android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
        r10 = this;
        r9 = 4;
        r6 = 3;
        r5 = 1;
        r3 = 0;
        r7 = 0;
        r0 = r11.mAdded;
        if (r0 == 0) goto L_0x000d;
    L_0x0009:
        r0 = r11.mDetached;
        if (r0 == 0) goto L_0x0010;
    L_0x000d:
        if (r12 <= r5) goto L_0x0010;
    L_0x000f:
        r12 = r5;
    L_0x0010:
        r0 = r11.mRemoving;
        if (r0 == 0) goto L_0x001a;
    L_0x0014:
        r0 = r11.mState;
        if (r12 <= r0) goto L_0x001a;
    L_0x0018:
        r12 = r11.mState;
    L_0x001a:
        r0 = r11.mDeferStart;
        if (r0 == 0) goto L_0x0025;
    L_0x001e:
        r0 = r11.mState;
        if (r0 >= r9) goto L_0x0025;
    L_0x0022:
        if (r12 <= r6) goto L_0x0025;
    L_0x0024:
        r12 = r6;
    L_0x0025:
        r0 = r11.mState;
        if (r0 >= r12) goto L_0x02c0;
    L_0x0029:
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x0032;
    L_0x002d:
        r0 = r11.mInLayout;
        if (r0 != 0) goto L_0x0032;
    L_0x0031:
        return;
    L_0x0032:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x0040;
    L_0x0036:
        r11.mAnimatingAway = r7;
        r2 = r11.mStateAfterAnimating;
        r0 = r10;
        r1 = r11;
        r4 = r3;
        r0.moveToState(r1, r2, r3, r4, r5);
    L_0x0040:
        r0 = r11.mState;
        switch(r0) {
            case 0: goto L_0x0085;
            case 1: goto L_0x0183;
            case 2: goto L_0x0259;
            case 3: goto L_0x0259;
            case 4: goto L_0x027c;
            default: goto L_0x0045;
        };
    L_0x0045:
        r0 = r11.mState;
        if (r0 == r12) goto L_0x0031;
    L_0x0049:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveToState: Fragment state for ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " not updated inline; ";
        r1 = r1.append(r2);
        r2 = "expected state ";
        r1 = r1.append(r2);
        r1 = r1.append(r12);
        r2 = " found ";
        r1 = r1.append(r2);
        r2 = r11.mState;
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.w(r0, r1);
        r11.mState = r12;
        goto L_0x0031;
    L_0x0085:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x00a3;
    L_0x0089:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x00a3:
        r0 = r11.mSavedFragmentState;
        if (r0 == 0) goto L_0x00ef;
    L_0x00a7:
        r0 = r11.mSavedFragmentState;
        r1 = r10.mHost;
        r1 = r1.getContext();
        r1 = r1.getClassLoader();
        r0.setClassLoader(r1);
        r0 = r11.mSavedFragmentState;
        r1 = "android:view_state";
        r0 = r0.getSparseParcelableArray(r1);
        r11.mSavedViewState = r0;
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_state";
        r0 = r10.getFragment(r0, r1);
        r11.mTarget = r0;
        r0 = r11.mTarget;
        if (r0 == 0) goto L_0x00db;
    L_0x00d0:
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_req_state";
        r0 = r0.getInt(r1, r3);
        r11.mTargetRequestCode = r0;
    L_0x00db:
        r0 = r11.mSavedFragmentState;
        r1 = "android:user_visible_hint";
        r0 = r0.getBoolean(r1, r5);
        r11.mUserVisibleHint = r0;
        r0 = r11.mUserVisibleHint;
        if (r0 != 0) goto L_0x00ef;
    L_0x00ea:
        r11.mDeferStart = r5;
        if (r12 <= r6) goto L_0x00ef;
    L_0x00ee:
        r12 = r6;
    L_0x00ef:
        r0 = r10.mHost;
        r11.mHost = r0;
        r0 = r10.mParent;
        r11.mParentFragment = r0;
        r0 = r10.mParent;
        if (r0 == 0) goto L_0x0131;
    L_0x00fb:
        r0 = r10.mParent;
        r0 = r0.mChildFragmentManager;
    L_0x00ff:
        r11.mFragmentManager = r0;
        r11.mCalled = r3;
        r0 = r10.mHost;
        r0 = r0.getContext();
        r11.onAttach(r0);
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x0138;
    L_0x0110:
        r0 = new android.support.v4.app.SuperNotCalledException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onAttach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0131:
        r0 = r10.mHost;
        r0 = r0.getFragmentManagerImpl();
        goto L_0x00ff;
    L_0x0138:
        r0 = r11.mParentFragment;
        if (r0 != 0) goto L_0x0141;
    L_0x013c:
        r0 = r10.mHost;
        r0.onAttachFragment(r11);
    L_0x0141:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x014a;
    L_0x0145:
        r0 = r11.mSavedFragmentState;
        r11.performCreate(r0);
    L_0x014a:
        r11.mRetaining = r3;
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x0183;
    L_0x0150:
        r0 = r11.mSavedFragmentState;
        r0 = r11.getLayoutInflater(r0);
        r1 = r11.mSavedFragmentState;
        r0 = r11.performCreateView(r0, r7, r1);
        r11.mView = r0;
        r0 = r11.mView;
        if (r0 == 0) goto L_0x02af;
    L_0x0162:
        r0 = r11.mView;
        r11.mInnerView = r0;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 11;
        if (r0 < r1) goto L_0x02a5;
    L_0x016c:
        r0 = r11.mView;
        android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r0, r3);
    L_0x0171:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x017c;
    L_0x0175:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x017c:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x0183:
        if (r12 <= r5) goto L_0x0259;
    L_0x0185:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x01a3;
    L_0x0189:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x01a3:
        r0 = r11.mFromLayout;
        if (r0 != 0) goto L_0x0249;
    L_0x01a7:
        r0 = r11.mContainerId;
        if (r0 == 0) goto L_0x042a;
    L_0x01ab:
        r0 = r10.mContainer;
        r1 = r11.mContainerId;
        r0 = r0.onFindViewById(r1);
        r0 = (android.view.ViewGroup) r0;
        if (r0 != 0) goto L_0x01fd;
    L_0x01b7:
        r1 = r11.mRestored;
        if (r1 != 0) goto L_0x01fd;
    L_0x01bb:
        r1 = new java.lang.IllegalArgumentException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "No view found for id 0x";
        r2 = r2.append(r4);
        r4 = r11.mContainerId;
        r4 = java.lang.Integer.toHexString(r4);
        r2 = r2.append(r4);
        r4 = " (";
        r2 = r2.append(r4);
        r4 = r11.getResources();
        r8 = r11.mContainerId;
        r4 = r4.getResourceName(r8);
        r2 = r2.append(r4);
        r4 = ") for fragment ";
        r2 = r2.append(r4);
        r2 = r2.append(r11);
        r2 = r2.toString();
        r1.<init>(r2);
        r10.throwException(r1);
    L_0x01fd:
        r11.mContainer = r0;
        r1 = r11.mSavedFragmentState;
        r1 = r11.getLayoutInflater(r1);
        r2 = r11.mSavedFragmentState;
        r1 = r11.performCreateView(r1, r0, r2);
        r11.mView = r1;
        r1 = r11.mView;
        if (r1 == 0) goto L_0x02bd;
    L_0x0211:
        r1 = r11.mView;
        r11.mInnerView = r1;
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 11;
        if (r1 < r2) goto L_0x02b3;
    L_0x021b:
        r1 = r11.mView;
        android.support.v4.view.ViewCompat.setSaveFromParentEnabled(r1, r3);
    L_0x0220:
        if (r0 == 0) goto L_0x0237;
    L_0x0222:
        r1 = r10.loadAnimation(r11, r13, r5, r14);
        if (r1 == 0) goto L_0x0232;
    L_0x0228:
        r2 = r11.mView;
        r10.setHWLayerAnimListenerIfAlpha(r2, r1);
        r2 = r11.mView;
        r2.startAnimation(r1);
    L_0x0232:
        r1 = r11.mView;
        r0.addView(r1);
    L_0x0237:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x0242;
    L_0x023b:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x0242:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x0249:
        r0 = r11.mSavedFragmentState;
        r11.performActivityCreated(r0);
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0257;
    L_0x0252:
        r0 = r11.mSavedFragmentState;
        r11.restoreViewState(r0);
    L_0x0257:
        r11.mSavedFragmentState = r7;
    L_0x0259:
        if (r12 <= r6) goto L_0x027c;
    L_0x025b:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0279;
    L_0x025f:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0279:
        r11.performStart();
    L_0x027c:
        if (r12 <= r9) goto L_0x0045;
    L_0x027e:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x029c;
    L_0x0282:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x029c:
        r11.performResume();
        r11.mSavedFragmentState = r7;
        r11.mSavedViewState = r7;
        goto L_0x0045;
    L_0x02a5:
        r0 = r11.mView;
        r0 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r0);
        r11.mView = r0;
        goto L_0x0171;
    L_0x02af:
        r11.mInnerView = r7;
        goto L_0x0183;
    L_0x02b3:
        r1 = r11.mView;
        r1 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r1);
        r11.mView = r1;
        goto L_0x0220;
    L_0x02bd:
        r11.mInnerView = r7;
        goto L_0x0249;
    L_0x02c0:
        r0 = r11.mState;
        if (r0 <= r12) goto L_0x0045;
    L_0x02c4:
        r0 = r11.mState;
        switch(r0) {
            case 1: goto L_0x02cb;
            case 2: goto L_0x034f;
            case 3: goto L_0x032c;
            case 4: goto L_0x0309;
            case 5: goto L_0x02e5;
            default: goto L_0x02c9;
        };
    L_0x02c9:
        goto L_0x0045;
    L_0x02cb:
        if (r12 >= r5) goto L_0x0045;
    L_0x02cd:
        r0 = r10.mDestroyed;
        if (r0 == 0) goto L_0x02dc;
    L_0x02d1:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x02dc;
    L_0x02d5:
        r0 = r11.mAnimatingAway;
        r11.mAnimatingAway = r7;
        r0.clearAnimation();
    L_0x02dc:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x03c0;
    L_0x02e0:
        r11.mStateAfterAnimating = r12;
        r12 = r5;
        goto L_0x0045;
    L_0x02e5:
        r0 = 5;
        if (r12 >= r0) goto L_0x0309;
    L_0x02e8:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0306;
    L_0x02ec:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0306:
        r11.performPause();
    L_0x0309:
        if (r12 >= r9) goto L_0x032c;
    L_0x030b:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0329;
    L_0x030f:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0329:
        r11.performStop();
    L_0x032c:
        if (r12 >= r6) goto L_0x034f;
    L_0x032e:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x034c;
    L_0x0332:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STOPPED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x034c:
        r11.performReallyStop();
    L_0x034f:
        r0 = 2;
        if (r12 >= r0) goto L_0x02cb;
    L_0x0352:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x0370;
    L_0x0356:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0370:
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0383;
    L_0x0374:
        r0 = r10.mHost;
        r0 = r0.onShouldSaveFragmentState(r11);
        if (r0 == 0) goto L_0x0383;
    L_0x037c:
        r0 = r11.mSavedViewState;
        if (r0 != 0) goto L_0x0383;
    L_0x0380:
        r10.saveFragmentViewState(r11);
    L_0x0383:
        r11.performDestroyView();
        r0 = r11.mView;
        if (r0 == 0) goto L_0x03b8;
    L_0x038a:
        r0 = r11.mContainer;
        if (r0 == 0) goto L_0x03b8;
    L_0x038e:
        r0 = r10.mCurState;
        if (r0 <= 0) goto L_0x0427;
    L_0x0392:
        r0 = r10.mDestroyed;
        if (r0 != 0) goto L_0x0427;
    L_0x0396:
        r0 = r10.loadAnimation(r11, r13, r3, r14);
    L_0x039a:
        if (r0 == 0) goto L_0x03b1;
    L_0x039c:
        r1 = r11.mView;
        r11.mAnimatingAway = r1;
        r11.mStateAfterAnimating = r12;
        r1 = r11.mView;
        r2 = new android.support.v4.app.FragmentManagerImpl$5;
        r2.<init>(r1, r0, r11);
        r0.setAnimationListener(r2);
        r1 = r11.mView;
        r1.startAnimation(r0);
    L_0x03b1:
        r0 = r11.mContainer;
        r1 = r11.mView;
        r0.removeView(r1);
    L_0x03b8:
        r11.mContainer = r7;
        r11.mView = r7;
        r11.mInnerView = r7;
        goto L_0x02cb;
    L_0x03c0:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x03de;
    L_0x03c4:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x03de:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x040f;
    L_0x03e2:
        r11.performDestroy();
    L_0x03e5:
        r11.mCalled = r3;
        r11.onDetach();
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x0412;
    L_0x03ee:
        r0 = new android.support.v4.app.SuperNotCalledException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onDetach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x040f:
        r11.mState = r3;
        goto L_0x03e5;
    L_0x0412:
        if (r15 != 0) goto L_0x0045;
    L_0x0414:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x041d;
    L_0x0418:
        r10.makeInactive(r11);
        goto L_0x0045;
    L_0x041d:
        r11.mHost = r7;
        r11.mParentFragment = r7;
        r11.mFragmentManager = r7;
        r11.mChildFragmentManager = r7;
        goto L_0x0045;
    L_0x0427:
        r0 = r7;
        goto L_0x039a;
    L_0x042a:
        r0 = r7;
        goto L_0x01fd;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, HONEYCOMB);
    }

    void moveToState(int i, boolean z) {
        moveToState(i, 0, 0, z);
    }

    void moveToState(int i, int i2, int i3, boolean z) {
        if (this.mHost == null && i != 0) {
            throw new IllegalStateException("No host");
        } else if (z || this.mCurState != i) {
            this.mCurState = i;
            if (this.mActive != null) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.mActive.size()) {
                    int hasRunningLoaders;
                    Fragment fragment = (Fragment) this.mActive.get(i4);
                    if (fragment != null) {
                        moveToState(fragment, i, i2, i3, HONEYCOMB);
                        if (fragment.mLoaderManager != null) {
                            hasRunningLoaders = i5 | fragment.mLoaderManager.hasRunningLoaders();
                            i4 += ANIM_STYLE_OPEN_ENTER;
                            i5 = hasRunningLoaders;
                        }
                    }
                    hasRunningLoaders = i5;
                    i4 += ANIM_STYLE_OPEN_ENTER;
                    i5 = hasRunningLoaders;
                }
                if (i5 == 0) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mHost != null && this.mCurState == ANIM_STYLE_FADE_ENTER) {
                    this.mHost.onSupportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = HONEYCOMB;
                }
            }
        }
    }

    void startPendingDeferredFragments() {
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i += ANIM_STYLE_OPEN_ENTER) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null) {
                    performPendingDeferredStart(fragment);
                }
            }
        }
    }

    void makeActive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList();
                }
                fragment.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(fragment);
            } else {
                fragment.setIndex(((Integer) this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue(), this.mParent);
                this.mActive.set(fragment.mIndex, fragment);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + fragment);
            }
        }
    }

    void makeInactive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + fragment);
            }
            this.mActive.set(fragment.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
            this.mHost.inactivateFragment(fragment.mWho);
            fragment.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean z) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = HONEYCOMB;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (z) {
                moveToState(fragment);
            }
        }
    }

    public void removeFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack() ? true : HONEYCOMB;
        if (!fragment.mDetached || z) {
            int i3;
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = HONEYCOMB;
            fragment.mRemoving = true;
            if (z) {
                i3 = 0;
            } else {
                i3 = ANIM_STYLE_OPEN_ENTER;
            }
            moveToState(fragment, i3, i, i2, HONEYCOMB);
        }
    }

    public void hideFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, HONEYCOMB, i2);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void showFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = HONEYCOMB;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, true, i2);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(HONEYCOMB);
        }
    }

    public void detachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = HONEYCOMB;
                moveToState(fragment, ANIM_STYLE_OPEN_ENTER, i, i2, HONEYCOMB);
            }
        }
    }

    public void attachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = HONEYCOMB;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, i, i2, HONEYCOMB);
            }
        }
    }

    public Fragment findFragmentById(int i) {
        int size;
        Fragment fragment;
        if (this.mAdded != null) {
            for (size = this.mAdded.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null) {
            for (size = this.mActive.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mActive.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String str) {
        int size;
        Fragment fragment;
        if (!(this.mAdded == null || str == null)) {
            for (size = this.mAdded.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (!(this.mActive == null || str == null)) {
            for (size = this.mActive.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.mActive.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        if (!(this.mActive == null || str == null)) {
            for (int size = this.mActive.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.mActive.get(size);
                if (fragment != null) {
                    fragment = fragment.findFragmentByWho(str);
                    if (fragment != null) {
                        return fragment;
                    }
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(Runnable runnable, boolean z) {
        if (!z) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == ANIM_STYLE_OPEN_ENTER) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        int size;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                size = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + size + " to " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            } else {
                size = ((Integer) this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + size + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(size, backStackRecord);
            }
        }
        return size;
    }

    public void setBackStackIndex(int i, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            int size = this.mBackStackIndices.size();
            if (i < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            } else {
                while (size < i) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size += ANIM_STYLE_OPEN_ENTER;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void freeBackStackIndex(int i) {
        synchronized (this) {
            this.mBackStackIndices.set(i, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + i);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean execPendingActions() {
        /*
        r6 = this;
        r0 = 1;
        r2 = 0;
        r1 = r6.mExecutingActions;
        if (r1 == 0) goto L_0x000f;
    L_0x0006:
        r0 = new java.lang.IllegalStateException;
        r1 = "Recursive entry to executePendingTransactions";
        r0.<init>(r1);
        throw r0;
    L_0x000f:
        r1 = android.os.Looper.myLooper();
        r3 = r6.mHost;
        r3 = r3.getHandler();
        r3 = r3.getLooper();
        if (r1 == r3) goto L_0x0028;
    L_0x001f:
        r0 = new java.lang.IllegalStateException;
        r1 = "Must be called from main thread of process";
        r0.<init>(r1);
        throw r0;
    L_0x0028:
        r1 = r2;
    L_0x0029:
        monitor-enter(r6);
        r3 = r6.mPendingActions;	 Catch:{ all -> 0x009d }
        if (r3 == 0) goto L_0x0036;
    L_0x002e:
        r3 = r6.mPendingActions;	 Catch:{ all -> 0x009d }
        r3 = r3.size();	 Catch:{ all -> 0x009d }
        if (r3 != 0) goto L_0x005e;
    L_0x0036:
        monitor-exit(r6);	 Catch:{ all -> 0x009d }
        r0 = r6.mHavePendingDeferredStart;
        if (r0 == 0) goto L_0x00ab;
    L_0x003b:
        r3 = r2;
        r4 = r2;
    L_0x003d:
        r0 = r6.mActive;
        r0 = r0.size();
        if (r3 >= r0) goto L_0x00a4;
    L_0x0045:
        r0 = r6.mActive;
        r0 = r0.get(r3);
        r0 = (android.support.v4.app.Fragment) r0;
        if (r0 == 0) goto L_0x005a;
    L_0x004f:
        r5 = r0.mLoaderManager;
        if (r5 == 0) goto L_0x005a;
    L_0x0053:
        r0 = r0.mLoaderManager;
        r0 = r0.hasRunningLoaders();
        r4 = r4 | r0;
    L_0x005a:
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x003d;
    L_0x005e:
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009d }
        r3 = r1.size();	 Catch:{ all -> 0x009d }
        r1 = r6.mTmpActions;	 Catch:{ all -> 0x009d }
        if (r1 == 0) goto L_0x006d;
    L_0x0068:
        r1 = r6.mTmpActions;	 Catch:{ all -> 0x009d }
        r1 = r1.length;	 Catch:{ all -> 0x009d }
        if (r1 >= r3) goto L_0x0071;
    L_0x006d:
        r1 = new java.lang.Runnable[r3];	 Catch:{ all -> 0x009d }
        r6.mTmpActions = r1;	 Catch:{ all -> 0x009d }
    L_0x0071:
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009d }
        r4 = r6.mTmpActions;	 Catch:{ all -> 0x009d }
        r1.toArray(r4);	 Catch:{ all -> 0x009d }
        r1 = r6.mPendingActions;	 Catch:{ all -> 0x009d }
        r1.clear();	 Catch:{ all -> 0x009d }
        r1 = r6.mHost;	 Catch:{ all -> 0x009d }
        r1 = r1.getHandler();	 Catch:{ all -> 0x009d }
        r4 = r6.mExecCommit;	 Catch:{ all -> 0x009d }
        r1.removeCallbacks(r4);	 Catch:{ all -> 0x009d }
        monitor-exit(r6);	 Catch:{ all -> 0x009d }
        r6.mExecutingActions = r0;
        r1 = r2;
    L_0x008c:
        if (r1 >= r3) goto L_0x00a0;
    L_0x008e:
        r4 = r6.mTmpActions;
        r4 = r4[r1];
        r4.run();
        r4 = r6.mTmpActions;
        r5 = 0;
        r4[r1] = r5;
        r1 = r1 + 1;
        goto L_0x008c;
    L_0x009d:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x009d }
        throw r0;
    L_0x00a0:
        r6.mExecutingActions = r2;
        r1 = r0;
        goto L_0x0029;
    L_0x00a4:
        if (r4 != 0) goto L_0x00ab;
    L_0x00a6:
        r6.mHavePendingDeferredStart = r2;
        r6.startPendingDeferredFragments();
    L_0x00ab:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i = 0; i < this.mBackStackChangeListeners.size(); i += ANIM_STYLE_OPEN_ENTER) {
                ((OnBackStackChangedListener) this.mBackStackChangeListeners.get(i)).onBackStackChanged();
            }
        }
    }

    void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(backStackRecord);
        reportBackStackChanged();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean popBackStackState(android.os.Handler r12, java.lang.String r13, int r14, int r15) {
        /*
        r11 = this;
        r4 = 0;
        r2 = 1;
        r3 = 0;
        r0 = r11.mBackStack;
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return r3;
    L_0x0008:
        if (r13 != 0) goto L_0x0037;
    L_0x000a:
        if (r14 >= 0) goto L_0x0037;
    L_0x000c:
        r0 = r15 & 1;
        if (r0 != 0) goto L_0x0037;
    L_0x0010:
        r0 = r11.mBackStack;
        r0 = r0.size();
        r0 = r0 + -1;
        if (r0 < 0) goto L_0x0007;
    L_0x001a:
        r1 = r11.mBackStack;
        r0 = r1.remove(r0);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        r1 = new android.util.SparseArray;
        r1.<init>();
        r3 = new android.util.SparseArray;
        r3.<init>();
        r0.calculateBackFragments(r1, r3);
        r0.popFromBackStack(r2, r4, r1, r3);
        r11.reportBackStackChanged();
    L_0x0035:
        r3 = r2;
        goto L_0x0007;
    L_0x0037:
        r0 = -1;
        if (r13 != 0) goto L_0x003c;
    L_0x003a:
        if (r14 < 0) goto L_0x008b;
    L_0x003c:
        r0 = r11.mBackStack;
        r0 = r0.size();
        r1 = r0 + -1;
    L_0x0044:
        if (r1 < 0) goto L_0x005a;
    L_0x0046:
        r0 = r11.mBackStack;
        r0 = r0.get(r1);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        if (r13 == 0) goto L_0x0081;
    L_0x0050:
        r5 = r0.getName();
        r5 = r13.equals(r5);
        if (r5 == 0) goto L_0x0081;
    L_0x005a:
        if (r1 < 0) goto L_0x0007;
    L_0x005c:
        r0 = r15 & 1;
        if (r0 == 0) goto L_0x008a;
    L_0x0060:
        r1 = r1 + -1;
    L_0x0062:
        if (r1 < 0) goto L_0x008a;
    L_0x0064:
        r0 = r11.mBackStack;
        r0 = r0.get(r1);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        if (r13 == 0) goto L_0x0078;
    L_0x006e:
        r5 = r0.getName();
        r5 = r13.equals(r5);
        if (r5 != 0) goto L_0x007e;
    L_0x0078:
        if (r14 < 0) goto L_0x008a;
    L_0x007a:
        r0 = r0.mIndex;
        if (r14 != r0) goto L_0x008a;
    L_0x007e:
        r1 = r1 + -1;
        goto L_0x0062;
    L_0x0081:
        if (r14 < 0) goto L_0x0087;
    L_0x0083:
        r0 = r0.mIndex;
        if (r14 == r0) goto L_0x005a;
    L_0x0087:
        r1 = r1 + -1;
        goto L_0x0044;
    L_0x008a:
        r0 = r1;
    L_0x008b:
        r1 = r11.mBackStack;
        r1 = r1.size();
        r1 = r1 + -1;
        if (r0 == r1) goto L_0x0007;
    L_0x0095:
        r6 = new java.util.ArrayList;
        r6.<init>();
        r1 = r11.mBackStack;
        r1 = r1.size();
        r1 = r1 + -1;
    L_0x00a2:
        if (r1 <= r0) goto L_0x00b0;
    L_0x00a4:
        r5 = r11.mBackStack;
        r5 = r5.remove(r1);
        r6.add(r5);
        r1 = r1 + -1;
        goto L_0x00a2;
    L_0x00b0:
        r0 = r6.size();
        r7 = r0 + -1;
        r8 = new android.util.SparseArray;
        r8.<init>();
        r9 = new android.util.SparseArray;
        r9.<init>();
        r1 = r3;
    L_0x00c1:
        if (r1 > r7) goto L_0x00d0;
    L_0x00c3:
        r0 = r6.get(r1);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        r0.calculateBackFragments(r8, r9);
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x00c1;
    L_0x00d0:
        r5 = r4;
        r4 = r3;
    L_0x00d2:
        if (r4 > r7) goto L_0x010a;
    L_0x00d4:
        r0 = DEBUG;
        if (r0 == 0) goto L_0x00f6;
    L_0x00d8:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r10 = "Popping back stack state: ";
        r1 = r1.append(r10);
        r10 = r6.get(r4);
        r1 = r1.append(r10);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x00f6:
        r0 = r6.get(r4);
        r0 = (android.support.v4.app.BackStackRecord) r0;
        if (r4 != r7) goto L_0x0108;
    L_0x00fe:
        r1 = r2;
    L_0x00ff:
        r1 = r0.popFromBackStack(r1, r5, r8, r9);
        r0 = r4 + 1;
        r4 = r0;
        r5 = r1;
        goto L_0x00d2;
    L_0x0108:
        r1 = r3;
        goto L_0x00ff;
    L_0x010a:
        r11.reportBackStackChanged();
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.popBackStackState(android.os.Handler, java.lang.String, int, int):boolean");
    }

    ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i += ANIM_STYLE_OPEN_ENTER) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (DEBUG) {
                        Log.v(TAG, "retainNonConfig: keeping retained " + fragment);
                    }
                }
            }
        }
        return arrayList;
    }

    void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray();
            } else {
                this.mStateArray.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                fragment.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (this.mStateBundle.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    Parcelable saveAllState() {
        BackStackState[] backStackStateArr = null;
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int size = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size];
        int i = 0;
        boolean z = false;
        while (i < size) {
            boolean z2;
            Fragment fragment = (Fragment) this.mActive.get(i);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                } else {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, fragment.mTargetRequestCode);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + fragment + ": " + fragmentState.mSavedFragmentState);
                }
                z2 = true;
            } else {
                z2 = z;
            }
            i += ANIM_STYLE_OPEN_ENTER;
            z = z2;
        }
        if (z) {
            int[] iArr;
            int i2;
            FragmentManagerState fragmentManagerState;
            if (this.mAdded != null) {
                i = this.mAdded.size();
                if (i > 0) {
                    iArr = new int[i];
                    for (i2 = 0; i2 < i; i2 += ANIM_STYLE_OPEN_ENTER) {
                        iArr[i2] = ((Fragment) this.mAdded.get(i2)).mIndex;
                        if (iArr[i2] < 0) {
                            throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i2) + " has cleared index: " + iArr[i2]));
                        }
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding fragment #" + i2 + ": " + this.mAdded.get(i2));
                        }
                    }
                    if (this.mBackStack != null) {
                        i = this.mBackStack.size();
                        if (i > 0) {
                            backStackStateArr = new BackStackState[i];
                            for (i2 = 0; i2 < i; i2 += ANIM_STYLE_OPEN_ENTER) {
                                backStackStateArr[i2] = new BackStackState((BackStackRecord) this.mBackStack.get(i2));
                                if (DEBUG) {
                                    Log.v(TAG, "saveAllState: adding back stack #" + i2 + ": " + this.mBackStack.get(i2));
                                }
                            }
                        }
                    }
                    fragmentManagerState = new FragmentManagerState();
                    fragmentManagerState.mActive = fragmentStateArr;
                    fragmentManagerState.mAdded = iArr;
                    fragmentManagerState.mBackStack = backStackStateArr;
                    return fragmentManagerState;
                }
            }
            iArr = null;
            if (this.mBackStack != null) {
                i = this.mBackStack.size();
                if (i > 0) {
                    backStackStateArr = new BackStackState[i];
                    for (i2 = 0; i2 < i; i2 += ANIM_STYLE_OPEN_ENTER) {
                        backStackStateArr[i2] = new BackStackState((BackStackRecord) this.mBackStack.get(i2));
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding back stack #" + i2 + ": " + this.mBackStack.get(i2));
                        }
                    }
                }
            }
            fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mActive = fragmentStateArr;
            fragmentManagerState.mAdded = iArr;
            fragmentManagerState.mBackStack = backStackStateArr;
            return fragmentManagerState;
        } else if (!DEBUG) {
            return null;
        } else {
            Log.v(TAG, "saveAllState: no fragments!");
            return null;
        }
    }

    void restoreAllState(Parcelable parcelable, List<Fragment> list) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                int i;
                Fragment fragment;
                int i2;
                if (list != null) {
                    for (i = 0; i < list.size(); i += ANIM_STYLE_OPEN_ENTER) {
                        fragment = (Fragment) list.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = HONEYCOMB;
                        fragment.mAdded = HONEYCOMB;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                        }
                    }
                }
                this.mActive = new ArrayList(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (i2 = 0; i2 < fragmentManagerState.mActive.length; i2 += ANIM_STYLE_OPEN_ENTER) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i2];
                    if (fragmentState2 != null) {
                        Fragment instantiate = fragmentState2.instantiate(this.mHost, this.mParent);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i2 + ": " + instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i2);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                }
                if (list != null) {
                    for (int i3 = 0; i3 < list.size(); i3 += ANIM_STYLE_OPEN_ENTER) {
                        fragment = (Fragment) list.get(i3);
                        if (fragment.mTargetIndex >= 0) {
                            if (fragment.mTargetIndex < this.mActive.size()) {
                                fragment.mTarget = (Fragment) this.mActive.get(fragment.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.mTargetIndex);
                                fragment.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList(fragmentManagerState.mAdded.length);
                    for (i = 0; i < fragmentManagerState.mAdded.length; i += ANIM_STYLE_OPEN_ENTER) {
                        fragment = (Fragment) this.mActive.get(fragmentManagerState.mAdded[i]);
                        if (fragment == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i]));
                        }
                        fragment.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i + ": " + fragment);
                        }
                        if (this.mAdded.contains(fragment)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
                    for (i2 = 0; i2 < fragmentManagerState.mBackStack.length; i2 += ANIM_STYLE_OPEN_ENTER) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i2].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i2 + " (index " + instantiate2.mIndex + "): " + instantiate2);
                            instantiate2.dump("  ", new PrintWriter(new LogWriter(TAG)), HONEYCOMB);
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachController(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = fragmentHostCallback;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = HONEYCOMB;
    }

    public void dispatchCreate() {
        this.mStateSaved = HONEYCOMB;
        moveToState(ANIM_STYLE_OPEN_ENTER, HONEYCOMB);
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = HONEYCOMB;
        moveToState(ANIM_STYLE_OPEN_EXIT, HONEYCOMB);
    }

    public void dispatchStart() {
        this.mStateSaved = HONEYCOMB;
        moveToState(ANIM_STYLE_CLOSE_EXIT, HONEYCOMB);
    }

    public void dispatchResume() {
        this.mStateSaved = HONEYCOMB;
        moveToState(ANIM_STYLE_FADE_ENTER, HONEYCOMB);
    }

    public void dispatchPause() {
        moveToState(ANIM_STYLE_CLOSE_EXIT, HONEYCOMB);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(ANIM_STYLE_CLOSE_ENTER, HONEYCOMB);
    }

    public void dispatchReallyStop() {
        moveToState(ANIM_STYLE_OPEN_EXIT, HONEYCOMB);
    }

    public void dispatchDestroyView() {
        moveToState(ANIM_STYLE_OPEN_ENTER, HONEYCOMB);
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, HONEYCOMB);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performConfigurationChanged(configuration);
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performLowMemory();
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        Fragment fragment;
        int i = 0;
        ArrayList arrayList = null;
        if (this.mAdded != null) {
            int i2 = 0;
            z = HONEYCOMB;
            while (i2 < this.mAdded.size()) {
                fragment = (Fragment) this.mAdded.get(i2);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                }
                i2 += ANIM_STYLE_OPEN_ENTER;
                z = z;
            }
        } else {
            z = HONEYCOMB;
        }
        if (this.mCreatedMenus != null) {
            while (i < this.mCreatedMenus.size()) {
                fragment = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.onDestroyOptionsMenu();
                }
                i += ANIM_STYLE_OPEN_ENTER;
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        boolean z = HONEYCOMB;
        for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return HONEYCOMB;
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return HONEYCOMB;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); i += ANIM_STYLE_OPEN_ENTER) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public static int reverseTransit(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return InputDeviceCompat.SOURCE_MOUSE;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case InputDeviceCompat.SOURCE_MOUSE /*8194*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int i, boolean z) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return z ? ANIM_STYLE_OPEN_ENTER : ANIM_STYLE_OPEN_EXIT;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return z ? ANIM_STYLE_FADE_ENTER : ANIM_STYLE_FADE_EXIT;
            case InputDeviceCompat.SOURCE_MOUSE /*8194*/:
                return z ? ANIM_STYLE_CLOSE_ENTER : ANIM_STYLE_CLOSE_EXIT;
            default:
                return -1;
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String string;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        if (attributeValue == null) {
            string = obtainStyledAttributes.getString(0);
        } else {
            string = attributeValue;
        }
        int resourceId = obtainStyledAttributes.getResourceId(ANIM_STYLE_OPEN_ENTER, -1);
        String string2 = obtainStyledAttributes.getString(ANIM_STYLE_OPEN_EXIT);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), string)) {
            return null;
        }
        int id;
        if (view != null) {
            id = view.getId();
        } else {
            id = 0;
        }
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment fragment;
        Fragment findFragmentById = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (findFragmentById == null && string2 != null) {
            findFragmentById = findFragmentByTag(string2);
        }
        if (findFragmentById == null && id != -1) {
            findFragmentById = findFragmentById(id);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + findFragmentById);
        }
        if (findFragmentById == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.mHost = this.mHost;
            instantiate.onInflate(this.mHost.getContext(), attributeSet, instantiate.mSavedFragmentState);
            addFragment(instantiate, true);
            fragment = instantiate;
        } else if (findFragmentById.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
        } else {
            findFragmentById.mInLayout = true;
            findFragmentById.mHost = this.mHost;
            if (!findFragmentById.mRetaining) {
                findFragmentById.onInflate(this.mHost.getContext(), attributeSet, findFragmentById.mSavedFragmentState);
            }
            fragment = findFragmentById;
        }
        if (this.mCurState >= ANIM_STYLE_OPEN_ENTER || !fragment.mFromLayout) {
            moveToState(fragment);
        } else {
            moveToState(fragment, ANIM_STYLE_OPEN_ENTER, 0, 0, HONEYCOMB);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }
}
