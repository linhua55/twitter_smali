.class public abstract Lcom/twitter/android/widget/ScrollingHeaderListFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/nt;
.implements Lcom/twitter/app/common/list/af;
.implements Lcom/twitter/library/widget/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<TT;TA;>;",
        "Lcom/twitter/android/nt;",
        "Lcom/twitter/app/common/list/af;",
        "Lcom/twitter/library/widget/w;"
    }
.end annotation


# instance fields
.field protected N:I

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:I

.field protected S:Z

.field private final a:Z

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/twitter/library/widget/ObservableScrollView;

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->I_()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    .line 69
    new-instance v0, Lcom/twitter/android/widget/en;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/en;-><init>(Lcom/twitter/android/widget/ScrollingHeaderListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->k:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/widget/ScrollingHeaderListFragment;)Lcom/twitter/library/widget/ObservableScrollView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 217
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    if-eq v0, p1, :cond_4

    .line 222
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->b:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_3
    iput p1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    .line 235
    :goto_1
    if-eqz v0, :cond_0

    .line 236
    iget v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->R:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 234
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public R()Landroid/view/View;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    return-object v0
.end method

.method protected X_()I
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    .line 123
    iget-object v0, v2, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    .line 124
    if-eqz v0, :cond_0

    .line 126
    instance-of v3, v0, Lcom/twitter/library/widget/ObservableScrollView;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/twitter/library/widget/ObservableScrollView;

    .line 127
    :goto_0
    iput-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    .line 128
    const v0, 0x7f130504

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->d:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->d:Landroid/view/View;

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    iget v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    const v0, 0x7f130505

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->e:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/ObservableScrollView;->setObservableScrollViewListener(Lcom/twitter/library/widget/w;)V

    .line 137
    iget-object v0, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->Q:I

    .line 140
    :cond_0
    invoke-virtual {v2, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 142
    :cond_1
    return-object v1

    .line 126
    :cond_2
    const v0, 0x7f130503

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ObservableScrollView;

    goto :goto_0
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 263
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput p2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->R:I

    .line 268
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(I)V

    .line 270
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    .line 275
    iget-object v3, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 276
    invoke-virtual {v3}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v2}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    neg-int v0, p2

    .line 282
    iget-boolean v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->i:Z

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    iget-object v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v2}, Lcom/twitter/library/widget/ObservableScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/widget/ObservableScrollView;->scrollTo(II)V

    goto :goto_0

    .line 288
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->S:Z

    if-nez v0, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->ar()Z

    move-result v0

    .line 290
    if-eqz v0, :cond_3

    .line 291
    add-int v0, p2, p1

    invoke-virtual {v2, v1, v0}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0

    .line 296
    :cond_3
    add-int v0, p2, p1

    iget v4, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    if-le v0, v4, :cond_4

    .line 298
    add-int v0, p2, p1

    invoke-virtual {v2, v1, v0}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0

    .line 303
    :cond_4
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 304
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 305
    if-lt v0, v1, :cond_5

    if-eqz v3, :cond_5

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 313
    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0

    .line 310
    :cond_5
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 110
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f04035d

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f040208

    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 116
    :cond_0
    return-void

    .line 111
    :cond_1
    const v0, 0x7f04035b

    goto :goto_0

    .line 113
    :cond_2
    const v0, 0x7f04035c

    goto :goto_1
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 192
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aq()V

    .line 193
    return-void
.end method

.method public a(Lcom/twitter/library/widget/ObservableScrollView;)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public a(Lcom/twitter/library/widget/ObservableScrollView;IIII)V
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    iget v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    sub-int/2addr v0, v1

    .line 402
    neg-int v1, p3

    neg-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 403
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 404
    instance-of v2, v0, Lcom/twitter/android/ScrollingHeaderActivity;

    if-eqz v2, :cond_0

    .line 405
    iput v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->R:I

    .line 406
    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->P:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/ScrollingHeaderActivity;->b(II)V

    .line 409
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 387
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->k:I

    if-eq v0, v4, :cond_1

    if-nez p2, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 389
    :goto_0
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->k:I

    invoke-virtual {v0, v1, v3}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 392
    :cond_0
    iput v4, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->k:I

    .line 394
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 388
    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    if-lez v0, :cond_0

    .line 352
    if-nez p2, :cond_4

    .line 353
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 356
    neg-int v2, v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sub-int v0, v2, v0

    .line 364
    :goto_2
    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    iget v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    sub-int/2addr v2, v3

    .line 365
    neg-int v0, v0

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 366
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 367
    instance-of v3, v0, Lcom/twitter/android/ScrollingHeaderActivity;

    if-eqz v3, :cond_0

    .line 368
    iget-boolean v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->S:Z

    if-eqz v3, :cond_5

    .line 369
    iput v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->R:I

    .line 370
    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    iget v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->P:I

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ScrollingHeaderActivity;->b(II)V

    goto :goto_0

    .line 356
    :cond_2
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->Q:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 358
    goto :goto_2

    .line 361
    :cond_4
    iget v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    goto :goto_2

    .line 372
    :cond_5
    new-instance v0, Lcom/twitter/android/widget/ep;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/ep;-><init>(Lcom/twitter/android/widget/ScrollingHeaderListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected ao()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected ap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->h:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ObservableScrollView;->getHeight()I

    move-result v0

    .line 163
    iget v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    sub-int/2addr v1, v2

    .line 168
    iget-object v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v2, v4}, Lcom/twitter/library/widget/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 172
    iget-object v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    add-int/2addr v0, v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 174
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 175
    if-eq v3, v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    new-instance v1, Lcom/twitter/android/widget/eo;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/eo;-><init>(Lcom/twitter/android/widget/ScrollingHeaderListFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method protected aq()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ObservableScrollView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->f:Lcom/twitter/library/widget/ObservableScrollView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ObservableScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->i:Z

    .line 204
    return-void

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->ap()V

    goto :goto_0
.end method

.method protected ar()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aO()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    :goto_0
    return v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 322
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 323
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 324
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 325
    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    .line 327
    if-lez v6, :cond_1

    if-le v3, v1, :cond_1

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_1

    .line 329
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v2, v3, -0x2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 332
    iget v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->g:I

    sub-int v0, v2, v0

    .line 333
    iget-object v2, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->c:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v0, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 338
    :cond_1
    iput-boolean v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->S:Z

    goto :goto_0
.end method

.method public b(Lcom/twitter/library/widget/ObservableScrollView;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public b(Lcom/twitter/library/widget/ObservableScrollView;IIII)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 246
    iget-object v1, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 247
    if-lt v1, v3, :cond_0

    .line 248
    const/16 v2, 0xf

    if-le v1, v2, :cond_2

    .line 249
    invoke-virtual {v0, v3, p1}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 256
    iput p1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->k:I

    goto :goto_0
.end method

.method public m(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->P:I

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 81
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->X_()I

    move-result v3

    iput v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    .line 87
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->g:I

    .line 88
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->b:Landroid/view/View;

    .line 89
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->c:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->b:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->N:I

    iget v5, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->O:I

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v6, v4, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string/jumbo v1, "fragment_page_number"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->P:I

    .line 95
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->h:Z

    .line 97
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 210
    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 211
    iget-object v1, p0, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    return-void
.end method
