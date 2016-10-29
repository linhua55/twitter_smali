.class public Lcom/twitter/android/card/bd;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final d:Landroid/widget/LinearLayout;

.field private final e:Lcom/twitter/media/ui/image/MediaImageView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final k:[Lcom/twitter/media/ui/image/MediaImageView;

.field private final l:[Landroid/widget/TextView;

.field private final m:Landroid/view/View;

.field private n:J

.field private o:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/card/bd;->a:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/android/card/bd;->b:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/android/card/bd;->c:[I

    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x7f130559
        0x7f13055c
        0x7f130566
        0x7f130569
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x7f13055a
        0x7f13055d
        0x7f130567
        0x7f13056a
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x7f13055b
        0x7f13055e
        0x7f130568
        0x7f13056b
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/android/card/e;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/card/bd;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/twitter/android/card/bd;->q:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v2, p0, Lcom/twitter/android/card/bd;->q:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040230

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f13054a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f13054b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->f:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f13054f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bd;->g:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f13010c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->h:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f1302df

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->i:Landroid/widget/TextView;

    .line 88
    new-array v0, v4, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 89
    new-array v0, v4, [Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    .line 90
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bd;->l:[Landroid/widget/TextView;

    .line 91
    :goto_0
    if-ge v1, v4, :cond_0

    .line 92
    iget-object v2, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/twitter/android/card/bd;->a:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 93
    iget-object v2, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/twitter/android/card/bd;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    aput-object v0, v2, v1

    .line 94
    iget-object v2, p0, Lcom/twitter/android/card/bd;->l:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/twitter/android/card/bd;->c:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f130380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method private a(ILclm;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 222
    const-string/jumbo v0, "choice_fade"

    invoke-static {v0, p2}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, p1

    .line 224
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

    .line 226
    if-eqz v1, :cond_0

    .line 227
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcln;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 228
    iget-object v2, v2, Lcln;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 229
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 230
    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 231
    invoke-virtual {v1, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/twitter/android/card/bd;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v2, v3, :cond_0

    .line 233
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setClickable(Z)V

    .line 234
    invoke-virtual {v1, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, p1

    .line 242
    if-eqz v1, :cond_1

    .line 243
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 245
    invoke-virtual {v1, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 246
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 247
    invoke-virtual {v1, v6}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 253
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/card/bd;->l:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    .line 254
    if-eqz v0, :cond_2

    .line 255
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

    .line 257
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_2
    :goto_2
    return-void

    .line 237
    :cond_3
    invoke-virtual {v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {v1, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_1

    .line 260
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lclm;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/card/bd;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/twitter/android/card/bd;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-void
.end method

.method private b(Lclm;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/card/bd;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo v0, "subtitle"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/twitter/android/card/bd;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/twitter/android/card/bd;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/twitter/android/card/bd;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/card/bd;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 123
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 129
    iget-wide v2, p0, Lcom/twitter/android/card/bd;->n:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 143
    :cond_4
    return-void
.end method

.method public a(JLclm;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/twitter/android/card/bd;->d()V

    .line 169
    invoke-direct {p0, p3}, Lcom/twitter/android/card/bd;->a(Lclm;)V

    .line 170
    invoke-direct {p0, p3}, Lcom/twitter/android/card/bd;->b(Lclm;)V

    .line 172
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 173
    invoke-direct {p0, v0, p3}, Lcom/twitter/android/card/bd;->a(ILclm;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/twitter/android/card/bd;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/twitter/android/card/bd;->f:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v2, p3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 185
    iget-object v1, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/twitter/android/card/bd;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v1, v2, :cond_3

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_2
    return-void

    .line 191
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 107
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/bd;->n:J

    .line 109
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 110
    iget-wide v2, p0, Lcom/twitter/android/card/bd;->n:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 112
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    .line 113
    iget-object v0, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/bd;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/twitter/android/card/bd;->k:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/twitter/android/card/bd;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 159
    :cond_3
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/card/bd;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/card/bd;->m:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/twitter/android/card/bd;->o:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/bd;->a(J)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/twitter/android/card/bd;->j:[Lcom/twitter/media/ui/image/MediaImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/twitter/android/card/bd;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/bd;->w:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/card/bd;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
