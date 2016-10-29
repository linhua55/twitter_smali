.class public Lcom/twitter/android/card/PollCard;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# static fields
.field private static final c:[I

.field private static final d:[Ljava/lang/Integer;

.field private static final e:[Ljava/lang/Integer;

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I


# instance fields
.field private final A:Landroid/view/View;

.field private final C:Landroid/view/View;

.field private final D:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final E:[Lcom/twitter/ui/widget/TwitterButton;

.field private final F:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final G:[Ljava/lang/String;

.field private final H:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final I:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final J:[Landroid/widget/TextView;

.field private final K:Landroid/widget/TextView;

.field private final L:Landroid/widget/TextView;

.field private final M:Lcom/twitter/media/ui/image/MediaImageView;

.field private final N:Landroid/view/View;

.field private O:Ljava/lang/Long;

.field private P:I

.field protected a:Landroid/view/animation/Animation;

.field protected b:Landroid/view/animation/Animation;

.field private final i:Lcom/twitter/android/card/PollCard$Configuration;

.field private final j:Landroid/view/View;

.field private final k:Lcom/twitter/media/ui/image/MediaImageView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/view/View;

.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/TextView;

.field private final p:Lcom/twitter/ui/widget/TwitterButton;

.field private final z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 84
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/card/PollCard;->c:[I

    .line 90
    new-array v0, v2, [Ljava/lang/Integer;

    const v1, 0x7f130551

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f130553

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/android/card/PollCard;->d:[Ljava/lang/Integer;

    .line 96
    new-array v0, v2, [Ljava/lang/Integer;

    const v1, 0x7f13055f

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f130560

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f130562

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f130564

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/android/card/PollCard;->e:[Ljava/lang/Integer;

    .line 102
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/android/card/PollCard;->f:[I

    .line 108
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/android/card/PollCard;->g:[I

    .line 114
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/twitter/android/card/PollCard;->h:[I

    return-void

    .line 84
    :array_0
    .array-data 4
        0x7f130550
        0x7f130552
        0x7f130561
        0x7f130563
    .end array-data

    .line 102
    :array_1
    .array-data 4
        0x7f130559
        0x7f13055c
        0x7f130566
        0x7f130569
    .end array-data

    .line 108
    :array_2
    .array-data 4
        0x7f13055a
        0x7f13055d
        0x7f130567
        0x7f13056a
    .end array-data

    .line 114
    :array_3
    .array-data 4
        0x7f13055b
        0x7f13055e
        0x7f130568
        0x7f13056b
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/PollCard$Configuration;)V
    .locals 6

    .prologue
    .line 157
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/PollCard;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/PollCard$Configuration;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/PollCard$Configuration;)V
    .locals 4

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 165
    iget v0, p5, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p5, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_1
    iput-object p5, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/card/PollCard;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f13054a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    .line 174
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f13054b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->l:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f13054f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->m:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->n:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f1302df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->o:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130565

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    .line 181
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 182
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->E:[Lcom/twitter/ui/widget/TwitterButton;

    .line 183
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 184
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 186
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 187
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->J:[Landroid/widget/TextView;

    .line 188
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    if-ge v1, v0, :cond_4

    .line 189
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->c:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 190
    sget-object v0, Lcom/twitter/android/card/PollCard;->d:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 191
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->E:[Lcom/twitter/ui/widget/TwitterButton;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->d:[Ljava/lang/Integer;

    aget-object v3, v3, v1

    .line 192
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v0, v2, v1

    .line 194
    :cond_2
    sget-object v0, Lcom/twitter/android/card/PollCard;->e:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 195
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->e:[Ljava/lang/Integer;

    aget-object v3, v3, v1

    .line 196
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 195
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->f:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 199
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->g:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 200
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->J:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    sget-object v3, Lcom/twitter/android/card/PollCard;->h:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    .line 188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130556

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->K:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130557

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->L:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130555

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    .line 207
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f13054e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130554

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->A:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130558

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->C:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/card/PollCard;->g()V

    .line 213
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    const v1, 0x7f130380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/card/PollCard;->P:I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/card/PollCard;->a(Lclj;)V

    .line 220
    return-void
.end method

.method static a(ILcom/twitter/android/card/PollCard$Configuration;Lclj;Ljava/lang/Integer;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 395
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 396
    iget v0, p1, Lcom/twitter/android/card/PollCard$Configuration;->postVoteState:I

    .line 404
    :goto_0
    return v0

    .line 397
    :cond_0
    if-eqz p2, :cond_2

    .line 398
    const-string/jumbo v0, "vote_state"

    invoke-static {v0, p2}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/twitter/android/card/PollCard$Configuration;->initialState:I

    goto :goto_0

    .line 401
    :cond_2
    if-eq p0, v1, :cond_3

    :goto_1
    move v0, p0

    goto :goto_0

    :cond_3
    iget p0, p1, Lcom/twitter/android/card/PollCard$Configuration;->initialState:I

    goto :goto_1
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 602
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 603
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/twitter/android/card/PollCard;->l()Landroid/app/Activity;

    move-result-object v0

    .line 605
    if-nez v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 609
    invoke-static {}, Lcom/twitter/android/card/m;->b()Lcom/twitter/android/card/m;

    move-result-object v2

    .line 610
    iget-wide v4, p0, Lcom/twitter/android/card/PollCard;->y:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/card/m;->a(J)V

    .line 611
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    .line 612
    invoke-virtual {v2, v3, v4}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 613
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/card/PollCard;->y:J

    .line 614
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/composer/ax;->c(J)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 615
    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 611
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(ILclm;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "choice"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_image"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 482
    const-string/jumbo v3, "choice_button"

    invoke-static {v3, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v3

    .line 484
    iget-object v4, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v4, v4, p1

    .line 485
    if-eqz v4, :cond_0

    .line 486
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcln;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 487
    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 488
    invoke-virtual {v4, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 489
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v4, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 490
    invoke-virtual {v4, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 491
    invoke-virtual {v4, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->E:[Lcom/twitter/ui/widget/TwitterButton;

    aget-object v4, v0, p1

    .line 498
    if-eqz v4, :cond_1

    .line 500
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    invoke-virtual {v4, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "choice"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "_text"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 505
    invoke-virtual {v4, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 509
    :goto_1
    invoke-virtual {v4, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v0, v0, p1

    .line 513
    if-eqz v0, :cond_3

    .line 515
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcln;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    aget-object v4, v4, p1

    .line 516
    invoke-static {v4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    iget-object v2, v3, Lcln;->a:Ljava/lang/String;

    .line 518
    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    .line 517
    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 519
    invoke-virtual {v0, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 520
    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 521
    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v2, v1

    .line 524
    :cond_2
    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 526
    :cond_3
    return-void

    .line 493
    :cond_4
    invoke-virtual {v4, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 620
    iget v0, p0, Lcom/twitter/android/card/PollCard;->P:I

    if-eq p1, v0, :cond_0

    .line 621
    iput p1, p0, Lcom/twitter/android/card/PollCard;->P:I

    .line 622
    packed-switch p1, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 630
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    if-eqz p2, :cond_0

    .line 634
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 640
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 643
    if-eqz p2, :cond_0

    .line 644
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 645
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->C:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lclj;)V
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Lcom/twitter/android/card/m;->b()Lcom/twitter/android/card/m;

    move-result-object v0

    .line 366
    iget-wide v2, p0, Lcom/twitter/android/card/PollCard;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/card/m;->b(J)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    iget v1, p0, Lcom/twitter/android/card/PollCard;->P:I

    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    invoke-static {v1, v2, p1, v0}, Lcom/twitter/android/card/PollCard;->a(ILcom/twitter/android/card/PollCard$Configuration;Lclj;Ljava/lang/Integer;)I

    move-result v1

    .line 369
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 370
    new-instance v0, Lclj;

    invoke-direct {v0}, Lclj;-><init>()V

    .line 371
    const-string/jumbo v2, "vote_state"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lclj;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 372
    iget-wide v2, p0, Lcom/twitter/android/card/PollCard;->y:J

    invoke-virtual {p0, v2, v3, v0}, Lcom/twitter/android/card/PollCard;->b(JLclj;)V

    .line 373
    const/4 v0, 0x1

    .line 377
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/card/PollCard;->a(IZ)V

    .line 378
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lclm;)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    return-void
.end method

.method private b(ILclm;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 529
    const-string/jumbo v0, "choice_fade"

    invoke-static {v0, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, p1

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "choice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v2

    .line 533
    if-eqz v1, :cond_0

    .line 534
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcln;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 535
    iget-object v2, v2, Lcln;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 536
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 537
    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 538
    invoke-virtual {v1, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 539
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v2, v3, :cond_0

    .line 540
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setClickable(Z)V

    .line 541
    invoke-virtual {v1, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, p1

    .line 549
    if-eqz v1, :cond_1

    .line 550
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 551
    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 552
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 553
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 554
    invoke-virtual {v1, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 560
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->J:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    .line 561
    if-eqz v0, :cond_2

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_percent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_2
    :goto_2
    return-void

    .line 544
    :cond_3
    invoke-virtual {v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0

    .line 556
    :cond_4
    invoke-virtual {v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_1

    .line 567
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private b(Lclm;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 426
    const-string/jumbo v0, "subtitle"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_0
    return-void
.end method

.method private c(Lclm;)V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v0, :cond_1

    .line 435
    const/16 v0, 0x8

    .line 436
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v1, v2, :cond_0

    .line 437
    const-string/jumbo v1, "forward_cta_text"

    invoke-static {v1, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const/4 v0, 0x0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 446
    :cond_1
    return-void
.end method

.method private d(Lclm;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->K:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 450
    const-string/jumbo v0, "title_post"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    return-void
.end method

.method private e(Lclm;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 459
    const-string/jumbo v0, "subtitle_post"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_0
    return-void
.end method

.method private f(Lclm;)V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 468
    const-string/jumbo v0, "image_post"

    invoke-static {v0, p1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcln;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 471
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 473
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget-boolean v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->isForwardTitleBarVisible:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 411
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->m:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 250
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 255
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    if-ge v0, v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 255
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_6

    .line 272
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 274
    :cond_6
    return-void
.end method

.method public a(JLclj;)V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLclj;)V

    .line 336
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->a(Lclj;)V

    .line 337
    return-void
.end method

.method public a(JLclm;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Lcom/twitter/android/card/PollCard;->h()V

    .line 310
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->a(Lclm;)V

    .line 311
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->b(Lclm;)V

    move v0, v1

    .line 313
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->G:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "choice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_tweet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 316
    invoke-direct {p0, v0, p3}, Lcom/twitter/android/card/PollCard;->a(ILclm;)V

    .line 317
    invoke-direct {p0, v0, p3}, Lcom/twitter/android/card/PollCard;->b(ILclm;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->c(Lclm;)V

    .line 322
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->d(Lclm;)V

    .line 323
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->e(Lclm;)V

    .line 324
    invoke-direct {p0, p3}, Lcom/twitter/android/card/PollCard;->f(Lclm;)V

    .line 327
    const-string/jumbo v0, "completed"

    invoke-static {v0, p3}, Lcom/twitter/library/card/h;->a(Ljava/lang/String;Lclm;)Ljava/lang/Boolean;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v0, v0, Lcom/twitter/android/card/PollCard$Configuration;->completedState:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/card/PollCard;->a(IZ)V

    .line 331
    :cond_1
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->l:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v2, p3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 347
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v1, v2, :cond_3

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_2
    return-void

    .line 353
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 236
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 237
    iget-wide v2, p0, Lcom/twitter/android/card/PollCard;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 239
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    .line 240
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/PollCard;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public ao_()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/card/PollCard;->a(Lclj;)V

    .line 362
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    if-ge v0, v2, :cond_4

    .line 279
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->I:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 278
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->M:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->k:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 300
    :cond_6
    return-void
.end method

.method protected d()Landroid/view/View;
    .locals 4

    .prologue
    .line 223
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 224
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->q:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v2, v2, Lcom/twitter/android/card/PollCard$Configuration;->layoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->j:Landroid/view/View;

    return-object v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/twitter/android/card/PollCard;->l()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f05002e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->a:Landroid/view/animation/Animation;

    .line 229
    invoke-virtual {p0}, Lcom/twitter/android/card/PollCard;->l()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/PollCard;->b:Landroid/view/animation/Animation;

    .line 230
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->N:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->O:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/PollCard;->a(J)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->p:Lcom/twitter/ui/widget/TwitterButton;

    if-ne p1, v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->w:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0

    .line 579
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->i:Lcom/twitter/android/card/PollCard$Configuration;

    iget v1, v1, Lcom/twitter/android/card/PollCard$Configuration;->choiceCount:I

    if-ge v0, v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->E:[Lcom/twitter/ui/widget/TwitterButton;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->D:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->F:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_4

    .line 581
    :cond_3
    invoke-direct {p0, v0}, Lcom/twitter/android/card/PollCard;->a(I)V

    goto :goto_0

    .line 584
    :cond_4
    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->H:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_5

    .line 585
    iget-object v0, p0, Lcom/twitter/android/card/PollCard;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/PollCard;->w:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/card/PollCard;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0

    .line 579
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
