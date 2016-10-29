package android.support.v7.util;

import android.support.annotation.UiThread;
import android.support.annotation.WorkerThread;
import android.support.v7.util.ThreadUtil.BackgroundCallback;
import android.support.v7.util.ThreadUtil.MainThreadCallback;
import android.support.v7.util.TileList.Tile;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;

/* compiled from: Twttr */
public class AsyncListUtil<T> {
    private static final boolean DEBUG = false;
    private static final String TAG = "AsyncListUtil";
    private boolean mAllowScrollHints;
    private final BackgroundCallback<T> mBackgroundCallback;
    final BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    int mDisplayedGeneration;
    private int mItemCount;
    private final MainThreadCallback<T> mMainThreadCallback;
    final MainThreadCallback<T> mMainThreadProxy;
    private final SparseIntArray mMissingPositions;
    final int[] mPrevRange;
    int mRequestedGeneration;
    private int mScrollHint;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final int[] mTmpRange;
    final int[] mTmpRangeExtended;
    final ViewCallback mViewCallback;

    /* compiled from: Twttr */
    public abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(T[] tArr, int i, int i2);

        @WorkerThread
        public abstract int refreshData();

        @WorkerThread
        public void recycleData(T[] tArr, int i) {
        }

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }
    }

    /* compiled from: Twttr */
    public abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public abstract void getItemRangeInto(int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i);

        @UiThread
        public void extendRangeInto(int[] iArr, int[] iArr2, int i) {
            int i2;
            int i3 = (iArr[HINT_SCROLL_DESC] - iArr[0]) + HINT_SCROLL_DESC;
            int i4 = i3 / HINT_SCROLL_ASC;
            int i5 = iArr[0];
            if (i == HINT_SCROLL_DESC) {
                i2 = i3;
            } else {
                i2 = i4;
            }
            iArr2[0] = i5 - i2;
            i2 = iArr[HINT_SCROLL_DESC];
            if (i != HINT_SCROLL_ASC) {
                i3 = i4;
            }
            iArr2[HINT_SCROLL_DESC] = i2 + i3;
        }
    }

    private void log(String str, Object... objArr) {
        Log.d(TAG, "[MAIN] " + String.format(str, objArr));
    }

    public AsyncListUtil(Class<T> cls, int i, DataCallback<T> dataCallback, ViewCallback viewCallback) {
        this.mTmpRange = new int[2];
        this.mPrevRange = new int[2];
        this.mTmpRangeExtended = new int[2];
        this.mScrollHint = 0;
        this.mItemCount = 0;
        this.mDisplayedGeneration = 0;
        this.mRequestedGeneration = this.mDisplayedGeneration;
        this.mMissingPositions = new SparseIntArray();
        this.mMainThreadCallback = new MainThreadCallback<T>() {
            public void updateItemCount(int i, int i2) {
                if (isRequestedGeneration(i)) {
                    AsyncListUtil.this.mItemCount = i2;
                    AsyncListUtil.this.mViewCallback.onDataRefresh();
                    AsyncListUtil.this.mDisplayedGeneration = AsyncListUtil.this.mRequestedGeneration;
                    recycleAllTiles();
                    AsyncListUtil.this.mAllowScrollHints = AsyncListUtil.DEBUG;
                    AsyncListUtil.this.updateRange();
                }
            }

            public void addTile(int i, Tile<T> tile) {
                if (isRequestedGeneration(i)) {
                    Tile addOrReplace = AsyncListUtil.this.mTileList.addOrReplace(tile);
                    if (addOrReplace != null) {
                        Log.e(AsyncListUtil.TAG, "duplicate tile @" + addOrReplace.mStartPosition);
                        AsyncListUtil.this.mBackgroundProxy.recycleTile(addOrReplace);
                    }
                    int i2 = tile.mItemCount + tile.mStartPosition;
                    int i3 = 0;
                    while (i3 < AsyncListUtil.this.mMissingPositions.size()) {
                        int keyAt = AsyncListUtil.this.mMissingPositions.keyAt(i3);
                        if (tile.mStartPosition > keyAt || keyAt >= i2) {
                            i3++;
                        } else {
                            AsyncListUtil.this.mMissingPositions.removeAt(i3);
                            AsyncListUtil.this.mViewCallback.onItemLoaded(keyAt);
                        }
                    }
                    return;
                }
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
            }

            public void removeTile(int i, int i2) {
                if (isRequestedGeneration(i)) {
                    Tile removeAtPos = AsyncListUtil.this.mTileList.removeAtPos(i2);
                    if (removeAtPos == null) {
                        Log.e(AsyncListUtil.TAG, "tile not found @" + i2);
                    } else {
                        AsyncListUtil.this.mBackgroundProxy.recycleTile(removeAtPos);
                    }
                }
            }

            private void recycleAllTiles() {
                for (int i = 0; i < AsyncListUtil.this.mTileList.size(); i++) {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(AsyncListUtil.this.mTileList.getAtIndex(i));
                }
                AsyncListUtil.this.mTileList.clear();
            }

            private boolean isRequestedGeneration(int i) {
                return i == AsyncListUtil.this.mRequestedGeneration ? true : AsyncListUtil.DEBUG;
            }
        };
        this.mBackgroundCallback = new BackgroundCallback<T>() {
            private int mFirstRequiredTileStart;
            private int mGeneration;
            private int mItemCount;
            private int mLastRequiredTileStart;
            final SparseBooleanArray mLoadedTiles;
            private Tile<T> mRecycledRoot;

            {
                this.mLoadedTiles = new SparseBooleanArray();
            }

            public void refresh(int i) {
                this.mGeneration = i;
                this.mLoadedTiles.clear();
                this.mItemCount = AsyncListUtil.this.mDataCallback.refreshData();
                AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
            }

            public void updateRange(int i, int i2, int i3, int i4, int i5) {
                if (i <= i2) {
                    int tileStart = getTileStart(i);
                    int tileStart2 = getTileStart(i2);
                    this.mFirstRequiredTileStart = getTileStart(i3);
                    this.mLastRequiredTileStart = getTileStart(i4);
                    if (i5 == 1) {
                        requestTiles(this.mFirstRequiredTileStart, tileStart2, i5, true);
                        requestTiles(AsyncListUtil.this.mTileSize + tileStart2, this.mLastRequiredTileStart, i5, AsyncListUtil.DEBUG);
                        return;
                    }
                    requestTiles(tileStart, this.mLastRequiredTileStart, i5, AsyncListUtil.DEBUG);
                    requestTiles(this.mFirstRequiredTileStart, tileStart - AsyncListUtil.this.mTileSize, i5, true);
                }
            }

            private int getTileStart(int i) {
                return i - (i % AsyncListUtil.this.mTileSize);
            }

            private void requestTiles(int i, int i2, int i3, boolean z) {
                int i4 = i;
                while (i4 <= i2) {
                    int i5;
                    if (z) {
                        i5 = (i2 + i) - i4;
                    } else {
                        i5 = i4;
                    }
                    AsyncListUtil.this.mBackgroundProxy.loadTile(i5, i3);
                    i4 += AsyncListUtil.this.mTileSize;
                }
            }

            public void loadTile(int i, int i2) {
                if (!isTileLoaded(i)) {
                    Tile acquireTile = acquireTile();
                    acquireTile.mStartPosition = i;
                    acquireTile.mItemCount = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - acquireTile.mStartPosition);
                    AsyncListUtil.this.mDataCallback.fillData(acquireTile.mItems, acquireTile.mStartPosition, acquireTile.mItemCount);
                    flushTileCache(i2);
                    addTile(acquireTile);
                }
            }

            public void recycleTile(Tile<T> tile) {
                AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
                tile.mNext = this.mRecycledRoot;
                this.mRecycledRoot = tile;
            }

            private Tile<T> acquireTile() {
                if (this.mRecycledRoot == null) {
                    return new Tile(AsyncListUtil.this.mTClass, AsyncListUtil.this.mTileSize);
                }
                Tile<T> tile = this.mRecycledRoot;
                this.mRecycledRoot = this.mRecycledRoot.mNext;
                return tile;
            }

            private boolean isTileLoaded(int i) {
                return this.mLoadedTiles.get(i);
            }

            private void addTile(Tile<T> tile) {
                this.mLoadedTiles.put(tile.mStartPosition, true);
                AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
            }

            private void removeTile(int i) {
                this.mLoadedTiles.delete(i);
                AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, i);
            }

            private void flushTileCache(int i) {
                int maxCachedTiles = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
                while (this.mLoadedTiles.size() >= maxCachedTiles) {
                    int keyAt = this.mLoadedTiles.keyAt(0);
                    int keyAt2 = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
                    int i2 = this.mFirstRequiredTileStart - keyAt;
                    int i3 = keyAt2 - this.mLastRequiredTileStart;
                    if (i2 > 0 && (i2 >= i3 || i == 2)) {
                        removeTile(keyAt);
                    } else if (i3 <= 0) {
                        return;
                    } else {
                        if (i2 < i3 || i == 1) {
                            removeTile(keyAt2);
                        } else {
                            return;
                        }
                    }
                }
            }

            private void log(String str, Object... objArr) {
                Log.d(AsyncListUtil.TAG, "[BKGR] " + String.format(str, objArr));
            }
        };
        this.mTClass = cls;
        this.mTileSize = i;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList(this.mTileSize);
        ThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration ? true : DEBUG;
    }

    public void onRangeChanged() {
        if (!isRefreshPending()) {
            updateRange();
            this.mAllowScrollHints = true;
        }
    }

    public void refresh() {
        this.mMissingPositions.clear();
        BackgroundCallback backgroundCallback = this.mBackgroundProxy;
        int i = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i;
        backgroundCallback.refresh(i);
    }

    public T getItem(int i) {
        if (i < 0 || i >= this.mItemCount) {
            throw new IndexOutOfBoundsException(i + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(i);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(i, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    private void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        if (this.mTmpRange[0] <= this.mTmpRange[1] && this.mTmpRange[0] >= 0 && this.mTmpRange[1] < this.mItemCount) {
            if (!this.mAllowScrollHints) {
                this.mScrollHint = 0;
            } else if (this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
                this.mScrollHint = 0;
            } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
                this.mScrollHint = 1;
            } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
                this.mScrollHint = 2;
            }
            this.mPrevRange[0] = this.mTmpRange[0];
            this.mPrevRange[1] = this.mTmpRange[1];
            this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
            this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
            this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
            this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
        }
    }
}
