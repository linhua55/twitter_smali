.class public Lxs;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

.field private final b:Lcom/twitter/android/widget/DMAvatar;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const v0, 0x7f13029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/DMAvatar;

    iput-object v0, p0, Lxs;->b:Lcom/twitter/android/widget/DMAvatar;

    .line 247
    const v0, 0x7f1302e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lxs;->g:Landroid/widget/ImageView;

    .line 248
    const v0, 0x7f1302e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxs;->c:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f1302e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxs;->d:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f13004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxs;->e:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f13008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxs;->f:Landroid/widget/TextView;

    .line 252
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    iput-object v0, p0, Lxs;->a:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    .line 253
    return-void
.end method

.method static synthetic a(Lxs;)Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->a:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lxs;)Lcom/twitter/android/widget/DMAvatar;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->b:Lcom/twitter/android/widget/DMAvatar;

    return-object v0
.end method

.method static synthetic c(Lxs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lxs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lxs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lxs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lxs;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lxs;->g:Landroid/widget/ImageView;

    return-object v0
.end method
