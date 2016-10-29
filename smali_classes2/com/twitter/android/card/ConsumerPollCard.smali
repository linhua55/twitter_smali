.class public final Lcom/twitter/android/card/ConsumerPollCard;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bb;
.implements Lcom/twitter/library/card/bg;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/text/NumberFormat;

.field private static final f:Ljava/text/DateFormat;


# instance fields
.field private final A:[[Landroid/graphics/drawable/Drawable;

.field private final C:I

.field private final D:Landroid/widget/ViewAnimator;

.field private final E:I

.field private final F:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Ldlx;

.field private final H:Lcom/twitter/library/card/az;

.field private I:J

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lcom/twitter/library/card/bf;

.field private M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field private volatile N:Z

.field private O:Ljava/util/Date;

.field private final P:[J

.field private Q:Z

.field private R:Ljava/lang/Integer;

.field private S:Z

.field private final T:Lcom/twitter/android/card/z;

.field b:Lcln;

.field private final g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/LinearLayout;

.field private final j:[Landroid/widget/Button;

.field private final k:Landroid/widget/LinearLayout;

.field private final l:[Landroid/widget/TextView;

.field private final m:[Landroid/widget/TextView;

.field private final n:[Lcom/twitter/android/card/PollResultBarView;

.field private final o:Landroid/widget/TextView;

.field private final p:Lcom/twitter/media/ui/image/MediaImageView;

.field private final z:Lcom/twitter/media/ui/image/RichImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "choice1_label"

    aput-object v1, v0, v2

    const-string/jumbo v1, "choice2_label"

    aput-object v1, v0, v3

    const-string/jumbo v1, "choice3_label"

    aput-object v1, v0, v4

    const-string/jumbo v1, "choice4_label"

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard;->a:[Ljava/lang/String;

    .line 159
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "choice1_count"

    aput-object v1, v0, v2

    const-string/jumbo v1, "choice2_count"

    aput-object v1, v0, v3

    const-string/jumbo v1, "choice3_count"

    aput-object v1, v0, v4

    const-string/jumbo v1, "choice4_count"

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard;->c:[Ljava/lang/String;

    .line 162
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "consumerpollcard_choice1_count"

    aput-object v1, v0, v2

    const-string/jumbo v1, "consumerpollcard_choice2_count"

    aput-object v1, v0, v3

    const-string/jumbo v1, "consumerpollcard_choice3_count"

    aput-object v1, v0, v4

    const-string/jumbo v1, "consumerpollcard_choice4_count"

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard;->d:[Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard;->e:Ljava/text/NumberFormat;

    .line 171
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard;->f:Ljava/text/DateFormat;

    .line 174
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard;->f:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V
    .locals 6

    .prologue
    .line 239
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/ConsumerPollCard;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/ConsumerPollCard$Configuration;)V
    .locals 13

    .prologue
    .line 246
    invoke-direct/range {p0 .. p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 208
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->F:Lrx/subjects/e;

    .line 209
    new-instance v1, Ldlx;

    invoke-direct {v1}, Ldlx;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->G:Ldlx;

    .line 223
    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 233
    new-instance v1, Lcom/twitter/android/card/z;

    invoke-direct {v1}, Lcom/twitter/android/card/z;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->T:Lcom/twitter/android/card/z;

    .line 248
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    .line 249
    const v1, 0x7f010053

    invoke-direct {p0, p1, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Landroid/content/Context;I)I

    move-result v1

    .line 250
    sget-object v2, Lcom/twitter/android/mu;->NativeCardsConsumerPollStyleAttrs:[I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 252
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 254
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 256
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 258
    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 260
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 262
    const/4 v5, 0x5

    const/4 v7, 0x0

    invoke-virtual {v11, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 264
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v11, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 266
    const/4 v7, 0x7

    const/4 v9, 0x0

    invoke-virtual {v11, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 268
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v11, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 270
    const/16 v9, 0x9

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 272
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    iget-object v11, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-boolean v11, v11, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->hasImage:Z

    if-eqz v11, :cond_1

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-boolean v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->hasImage:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 276
    :goto_1
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-boolean v3, v3, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->hasImage:Z

    if-eqz v3, :cond_3

    move v3, v5

    .line 277
    :goto_2
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-boolean v4, v4, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->hasImage:Z

    if-eqz v4, :cond_4

    move v4, v7

    .line 278
    :goto_3
    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-boolean v5, v5, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->hasImage:Z

    if-eqz v5, :cond_5

    move v5, v9

    .line 279
    :goto_4
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    .line 281
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v6, 0x7f130513

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->i:Landroid/widget/LinearLayout;

    .line 282
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 283
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    .line 284
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v6, 0x7f130514

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->k:Landroid/widget/LinearLayout;

    .line 285
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    .line 287
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    .line 288
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [Lcom/twitter/android/card/PollResultBarView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    .line 289
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [[Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    .line 291
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0f01a1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->C:I

    .line 293
    const/4 v1, 0x0

    move v6, v1

    :goto_5
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v6, v1, :cond_7

    .line 294
    iget-object v7, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v7, v6

    .line 295
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v1, v1, v6

    invoke-static {}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->values()[Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v1, v1, v6

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v1, v1, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v1, v1, v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 300
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->i:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 303
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    const v1, 0x7f130517

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v6

    .line 305
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v1, v6

    .line 306
    if-lez v5, :cond_6

    .line 307
    const/4 v1, 0x0

    :goto_6
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    array-length v8, v8

    if-ge v1, v8, :cond_6

    .line 308
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    aget-object v8, v8, v1

    if-eqz v8, :cond_0

    .line 309
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    .line 310
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 309
    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1
    move v1, v2

    .line 274
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 275
    goto/16 :goto_1

    :cond_3
    move v3, v6

    .line 276
    goto/16 :goto_2

    :cond_4
    move v4, v8

    .line 277
    goto/16 :goto_3

    :cond_5
    move v5, v10

    .line 278
    goto/16 :goto_4

    .line 315
    :cond_6
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    const v1, 0x7f130518

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v6

    .line 317
    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    const v1, 0x7f130516

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/card/PollResultBarView;

    aput-object v1, v8, v6

    .line 319
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_5

    .line 322
    :cond_7
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v2, 0x7f130515

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->o:Landroid/widget/TextView;

    .line 324
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v2, 0x7f13049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    .line 325
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v2, 0x7f13003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/ui/image/RichImageView;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->z:Lcom/twitter/media/ui/image/RichImageView;

    .line 327
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v1, :cond_8

    .line 328
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_8
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    const v2, 0x7f130512

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    .line 332
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_9

    .line 334
    new-instance v2, Lcom/twitter/android/card/w;

    invoke-direct {v2, p0}, Lcom/twitter/android/card/w;-><init>(Lcom/twitter/android/card/ConsumerPollCard;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 347
    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->E:I

    .line 349
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->z:Lcom/twitter/media/ui/image/RichImageView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    if-eqz v1, :cond_a

    .line 350
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->z:Lcom/twitter/media/ui/image/RichImageView;

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->T:Lcom/twitter/android/card/z;

    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    iget v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->C:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/android/card/z;->a(Lcom/twitter/android/card/ConsumerPollCard$Configuration;Landroid/view/ViewGroup;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/RichImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :cond_a
    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne p2, v1, :cond_b

    .line 357
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_b
    new-instance v1, Lcom/twitter/library/card/az;

    invoke-direct {v1, p0}, Lcom/twitter/library/card/az;-><init>(Lcom/twitter/library/card/bb;)V

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->H:Lcom/twitter/library/card/az;

    .line 361
    return-void
.end method

.method static a(JJ)I
    .locals 4

    .prologue
    .line 881
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 882
    :goto_0
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 881
    :cond_0
    const-wide/16 p2, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)I
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 364
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 366
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/card/ConsumerPollCard;)Landroid/widget/ViewAnimator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 876
    const v0, 0x7f0a020c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(JLjava/text/NumberFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 891
    invoke-virtual {p2, p0, p1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 892
    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    const v0, 0x7f0a020e

    .line 895
    :goto_0
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 892
    :cond_0
    const v0, 0x7f0a020d

    goto :goto_0
.end method

.method static a(ZJLandroid/content/Context;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 796
    if-eqz p0, :cond_0

    .line 797
    const v0, 0x7f0a0208

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    .line 800
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 801
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    mul-int/lit8 v3, v0, 0x18

    int-to-long v6, v3

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 802
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 803
    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    packed-switch v0, :pswitch_data_0

    .line 816
    const v6, 0x7f0a033f

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 821
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 833
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 834
    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_1
    const v6, 0x7f0a0340

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {p3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :goto_2
    :pswitch_0
    packed-switch v4, :pswitch_data_2

    .line 855
    if-eqz v0, :cond_5

    .line 866
    :cond_2
    :goto_3
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 867
    const v0, 0x7f0a020a

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 808
    goto :goto_1

    .line 811
    :pswitch_3
    const v0, 0x7f0a0342

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 813
    goto :goto_1

    .line 826
    :pswitch_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    const-string/jumbo v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_3
    const v3, 0x7f0a0343

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 845
    :pswitch_5
    if-nez v0, :cond_2

    .line 848
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 849
    const-string/jumbo v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_4
    const v0, 0x7f0a0344

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 858
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 859
    const-string/jumbo v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :cond_6
    const v0, 0x7f0a0341

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 870
    :cond_7
    const v0, 0x7f0a0209

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 840
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private a(JZJ)V
    .locals 5

    .prologue
    .line 540
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard;->e:Ljava/text/NumberFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard;->e:Ljava/text/NumberFormat;

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    invoke-static {p1, p2, v0, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(JLjava/text/NumberFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    invoke-static {p3, p4, p5, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(ZJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    const v3, 0x7f0a020b

    .line 545
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 544
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_0
    return-void
.end method

.method private a(Lclm;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 651
    invoke-static {p2, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a(I)Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lclm;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 638
    iget-boolean v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-nez v1, :cond_2

    .line 639
    invoke-static {p2, p1, v0}, Lcom/twitter/library/card/h;->a(Ljava/lang/String;Lclm;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v1, :cond_2

    .line 641
    aget-object v1, p3, v0

    invoke-static {v1, p1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v1

    .line 642
    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-eqz v2, :cond_1

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 640
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_2
    return-void
.end method

.method private a(Lcom/twitter/android/card/ConsumerPollCard$PollChoice;)V
    .locals 4

    .prologue
    .line 512
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/twitter/library/card/c;

    invoke-direct {v0}, Lcom/twitter/library/card/c;-><init>()V

    .line 516
    const-string/jumbo v1, "twitter:string:card_uri"

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 517
    const-string/jumbo v1, "twitter:long:original_tweet_id"

    iget-wide v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 518
    const-string/jumbo v1, "twitter:string:response_card_name"

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-object v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 519
    const-string/jumbo v1, "twitter:string:cards_platform"

    const-string/jumbo v2, "Android-12"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 520
    const-string/jumbo v1, "twitter:string:selected_choice"

    invoke-static {p1}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a(Lcom/twitter/android/card/ConsumerPollCard$PollChoice;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 521
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/card/bf;->b(Ljava/lang/String;Lcom/twitter/library/card/c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    .line 523
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/android/card/ConsumerPollCard$PollState;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 720
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 721
    iget-boolean v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->S:Z

    .line 722
    if-nez p2, :cond_0

    if-nez v4, :cond_0

    .line 723
    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v6}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 724
    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v6}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 726
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/card/ConsumerPollCard$PollState;->ordinal()I

    move-result v5

    .line 727
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v6}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 728
    iput-boolean v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->S:Z

    .line 730
    :cond_1
    iget-object v6, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 731
    if-nez p2, :cond_2

    if-nez v4, :cond_2

    .line 732
    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 733
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->D:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 735
    :cond_2
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollState;->b:Lcom/twitter/android/card/ConsumerPollCard$PollState;

    if-ne p1, v0, :cond_3

    if-nez v4, :cond_3

    if-nez p2, :cond_3

    move v0, v1

    .line 736
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/twitter/android/card/PollResultBarView;->b()V

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 740
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_5

    .line 741
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v4, v2, v0

    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard$PollState;->a:Lcom/twitter/android/card/ConsumerPollCard$PollState;

    if-ne p1, v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 741
    goto :goto_2

    .line 743
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/card/ConsumerPollCard;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/twitter/android/card/ConsumerPollCard;->S:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/card/ConsumerPollCard;)Lcom/twitter/android/card/ConsumerPollCard$Configuration;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    return-object v0
.end method

.method private c(Z)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 662
    invoke-direct {p0}, Lcom/twitter/android/card/ConsumerPollCard;->k()V

    move v0, v6

    move-wide v1, v8

    .line 665
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v3, v3, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v3, :cond_0

    .line 666
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->O:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->O:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 669
    :goto_1
    iget-boolean v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/ConsumerPollCard;->a(JZJ)V

    .line 673
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    sget-object v3, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    .line 674
    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->e()J

    move-result-wide v4

    .line 675
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    if-eqz v0, :cond_7

    :cond_1
    move v0, v6

    .line 676
    :goto_2
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v3, v3, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v3, :cond_5

    .line 678
    cmp-long v3, v1, v8

    if-nez v3, :cond_4

    move v3, v6

    .line 683
    :goto_3
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/twitter/android/card/ConsumerPollCard;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/twitter/android/card/PollResultBarView;->setGoalPercentage(I)V

    .line 685
    iget-boolean v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-eqz v3, :cond_2

    .line 686
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/twitter/android/card/PollResultBarView;->setRoundAllCorners(Z)V

    .line 676
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-wide v4, v8

    .line 668
    goto :goto_1

    .line 681
    :cond_4
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5, v1, v2}, Lcom/twitter/android/card/ConsumerPollCard;->a(JJ)I

    move-result v3

    goto :goto_3

    .line 689
    :cond_5
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollState;->b:Lcom/twitter/android/card/ConsumerPollCard$PollState;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/android/card/ConsumerPollCard$PollState;Z)V

    .line 694
    :goto_4
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-eqz v0, :cond_a

    move v0, v6

    move-wide v2, v8

    .line 697
    :goto_5
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v1, :cond_8

    .line 698
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 699
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 700
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v4, v1, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    .line 701
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v2, v1, v0

    .line 697
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 691
    :cond_7
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollState;->a:Lcom/twitter/android/card/ConsumerPollCard$PollState;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/android/card/ConsumerPollCard$PollState;Z)V

    goto :goto_4

    .line 706
    :cond_8
    cmp-long v0, v2, v8

    if-lez v0, :cond_a

    .line 707
    :goto_6
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v6, v0, :cond_a

    .line 708
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v0, v0, v6

    cmp-long v0, v2, v0

    if-nez v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 710
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 711
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->E:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/PollResultBarView;->setBarColor(I)V

    .line 707
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 716
    :cond_a
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/card/ConsumerPollCard;)[Lcom/twitter/android/card/PollResultBarView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->n:[Lcom/twitter/android/card/PollResultBarView;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 502
    new-instance v1, Lclj;

    invoke-direct {v1}, Lclj;-><init>()V

    .line 503
    const-string/jumbo v0, "consumerpollcard_choice"

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    invoke-static {v2}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a(Lcom/twitter/android/card/ConsumerPollCard$PollChoice;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lclj;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 504
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_0

    .line 505
    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclj;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    const-string/jumbo v0, "consumerpollcard_counts_are_final"

    iget-boolean v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lclj;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 508
    iget-wide v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->y:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/twitter/android/card/ConsumerPollCard;->b(JLclj;)V

    .line 509
    return-void
.end method

.method private k()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 526
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iget v0, v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->ordinal:I

    add-int/lit8 v2, v0, -0x1

    .line 527
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v1

    .line 528
    :goto_0
    if-ge v0, v3, :cond_1

    .line 529
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    sget-object v5, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    if-eq v4, v5, :cond_0

    if-ne v2, v0, :cond_0

    .line 532
    iget-object v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/twitter/android/card/ConsumerPollCard;->A:[[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v2

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 402
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 404
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->H:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->b()V

    .line 406
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 407
    iget-wide v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->c()V

    .line 414
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->b()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->G:Ldlx;

    invoke-virtual {v0}, Ldlx;->c()V

    .line 422
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->Q:Z

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    .line 785
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->ordinal:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 786
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 787
    invoke-direct {p0}, Lcom/twitter/android/card/ConsumerPollCard;->i()V

    .line 788
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/card/ConsumerPollCard;->c(Z)V

    goto :goto_0
.end method

.method public a(ILclm;)V
    .locals 3

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->Q:Z

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->R:Ljava/lang/Integer;

    .line 765
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    .line 766
    const-string/jumbo v1, "counts_are_final"

    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard;->c:[Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lclm;Ljava/lang/String;[Ljava/lang/String;)V

    .line 768
    const-string/jumbo v1, "selected_choice"

    invoke-direct {p0, p2, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lclm;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/twitter/android/card/ConsumerPollCard;->i()V

    .line 770
    iget-boolean v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/card/ConsumerPollCard;->c(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JLclj;)V
    .locals 3

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLclj;)V

    .line 596
    const-string/jumbo v0, "consumerpollcard_choice"

    invoke-static {v0, p3}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a(I)Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 599
    const-string/jumbo v0, "consumerpollcard_counts_are_final"

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard;->d:[Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lclm;Ljava/lang/String;[Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/card/ConsumerPollCard;->c(Z)V

    .line 601
    return-void

    .line 597
    :cond_0
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    goto :goto_0
.end method

.method public a(JLclm;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 557
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_1

    .line 558
    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_0

    .line 560
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->j:[Landroid/widget/Button;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->l:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    const-string/jumbo v0, "image"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->b:Lcln;

    .line 568
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 569
    const-string/jumbo v0, "api"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    .line 572
    :cond_2
    const-string/jumbo v0, "counts_are_final"

    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard;->c:[Ljava/lang/String;

    invoke-direct {p0, p3, v0, v2}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lclm;Ljava/lang/String;[Ljava/lang/String;)V

    .line 574
    const-string/jumbo v0, "selected_choice"

    invoke-direct {p0, p3, v0}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lclm;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->O:Ljava/util/Date;

    if-nez v0, :cond_4

    .line 578
    const-string/jumbo v0, "end_datetime_utc"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_3

    .line 581
    :try_start_0
    sget-object v2, Lcom/twitter/android/card/ConsumerPollCard;->f:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->O:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/twitter/android/card/ConsumerPollCard;->c(Z)V

    .line 589
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->Q:Z

    .line 590
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 584
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 7

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 373
    iget-wide v0, p1, Lcom/twitter/library/card/av;->a:J

    iput-wide v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->I:J

    .line 374
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    .line 375
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_1
    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->J:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    if-nez v0, :cond_0

    .line 379
    iget-wide v4, p0, Lcom/twitter/android/card/ConsumerPollCard;->y:J

    .line 380
    new-instance v1, Lcom/twitter/library/card/bf;

    invoke-static {}, Lcom/twitter/library/card/l;->a()Lcom/twitter/library/card/l;

    move-result-object v2

    .line 381
    invoke-static {}, Lcom/twitter/library/card/l;->a()Lcom/twitter/library/card/l;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/card/ConsumerPollCard;->q:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/twitter/library/card/l;->a(Landroid/content/Context;)Lcom/twitter/library/card/a;

    move-result-object v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/bf;-><init>(Lcom/twitter/library/card/al;Lcom/twitter/library/card/a;JLcom/twitter/library/card/bg;)V

    iput-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    invoke-virtual {v0}, Lcom/twitter/library/card/bf;->a()V

    .line 385
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 386
    iget-wide v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->H:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->a()V

    .line 390
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->G:Ldlx;

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->F:Lrx/subjects/e;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 391
    invoke-virtual {v1, v2, v3, v4}, Lrx/subjects/e;->c(JLjava/util/concurrent/TimeUnit;)Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/card/x;

    invoke-direct {v2, p0}, Lcom/twitter/android/card/x;-><init>(Lcom/twitter/android/card/ConsumerPollCard;)V

    .line 392
    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ldlx;->a(Lrx/ap;)V

    .line 398
    return-void

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "card://unknown:tweet_id:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/twitter/library/card/av;->a:J

    .line 377
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->H:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->c()V

    .line 430
    return-void
.end method

.method public aq_()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->H:Lcom/twitter/library/card/az;

    invoke-virtual {v0}, Lcom/twitter/library/card/az;->d()V

    .line 438
    return-void
.end method

.method public ax_()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Lcom/twitter/library/card/c;

    invoke-direct {v0}, Lcom/twitter/library/card/c;-><init>()V

    .line 619
    const-string/jumbo v1, "twitter:string:card_uri"

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 620
    const-string/jumbo v1, "twitter:string:cards_platform"

    const-string/jumbo v2, "Android-12"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 621
    const-string/jumbo v1, "twitter:string:response_card_name"

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->g:Lcom/twitter/android/card/ConsumerPollCard$Configuration;

    iget-object v2, v2, Lcom/twitter/android/card/ConsumerPollCard$Configuration;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/card/c;

    .line 622
    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->L:Lcom/twitter/library/card/bf;

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/card/bf;->a(Ljava/lang/String;Lcom/twitter/library/card/c;)I

    .line 624
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->b:Lcln;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->b:Lcln;

    iget-object v1, v1, Lcln;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/request/b;Z)Z

    .line 449
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 607
    invoke-static {}, Lcom/twitter/library/card/k;->c()I

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 469
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->h:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->s:Lcom/twitter/android/card/d;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->w:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/card/ConsumerPollCard;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->p:Lcom/twitter/media/ui/image/MediaImageView;

    if-ne p1, v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->F:Lrx/subjects/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    if-ne v0, v1, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iput-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 483
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->P:[J

    iget-object v1, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    iget v1, v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->ordinal:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 485
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    if-eq v0, v1, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/twitter/android/card/ConsumerPollCard;->i()V

    .line 491
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->M:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    invoke-direct {p0, v0}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcom/twitter/android/card/ConsumerPollCard$PollChoice;)V

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/card/ConsumerPollCard;->c(Z)V

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "vote"

    invoke-virtual {p0}, Lcom/twitter/android/card/ConsumerPollCard;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v0, "ad_formats_billable_poll_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/twitter/android/card/ConsumerPollCard;->r:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->aD:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    goto :goto_0
.end method
