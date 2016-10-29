.class public abstract Lym;
.super Lxa;
.source "Twttr"


# instance fields
.field final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/library/av/DMVideoThumbnailView;

.field private final f:Lcom/twitter/android/av/video/VideoContainerHost;

.field private final g:Lcom/twitter/media/ui/image/MediaImageView;

.field private final h:Landroid/view/ViewGroup;

.field private final i:Landroid/view/View;

.field private final j:Lcom/twitter/library/view/QuoteView;

.field private final k:Landroid/view/View;

.field private final l:Landroid/view/View;

.field private final m:Landroid/view/View;

.field private final n:Landroid/widget/Button;

.field private final o:Landroid/widget/Button;

.field private final p:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lxa;-><init>(Landroid/view/View;)V

    .line 783
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->b:Landroid/view/View;

    .line 784
    const v0, 0x7f1302f9

    .line 785
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 784
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    .line 786
    if-eqz p2, :cond_0

    const v0, 0x7f130306

    .line 787
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    iput-object v0, p0, Lym;->c:Landroid/view/ViewGroup;

    .line 790
    iget-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130019

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lym;->d:Landroid/widget/TextView;

    .line 791
    iget-object v0, p0, Lym;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 792
    iget-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130302

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->l:Landroid/view/View;

    .line 793
    iget-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130301

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->k:Landroid/view/View;

    .line 795
    iget-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130303

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->m:Landroid/view/View;

    .line 796
    iget-object v0, p0, Lym;->m:Landroid/view/View;

    const v1, 0x7f130304

    .line 797
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lym;->n:Landroid/widget/Button;

    .line 798
    iget-object v0, p0, Lym;->m:Landroid/view/View;

    const v1, 0x7f130305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lym;->o:Landroid/widget/Button;

    .line 801
    iget-object v0, p0, Lym;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1302fa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->i:Landroid/view/View;

    .line 802
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f1302fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lym;->g:Lcom/twitter/media/ui/image/MediaImageView;

    .line 803
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f1302fc

    .line 804
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/DMVideoThumbnailView;

    iput-object v0, p0, Lym;->e:Lcom/twitter/library/av/DMVideoThumbnailView;

    .line 805
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f1302fd

    .line 806
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    iput-object v0, p0, Lym;->f:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 808
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f130277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    iput-object v0, p0, Lym;->j:Lcom/twitter/library/view/QuoteView;

    .line 809
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f1302ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lym;->p:Landroid/view/View;

    .line 811
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    const v1, 0x7f130300

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lym;->h:Landroid/view/ViewGroup;

    .line 813
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lym;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lym;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lym;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lym;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lym;)Lcom/twitter/media/ui/image/MediaImageView;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->g:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method

.method static synthetic k(Lym;)Lcom/twitter/library/av/DMVideoThumbnailView;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->e:Lcom/twitter/library/av/DMVideoThumbnailView;

    return-object v0
.end method

.method static synthetic l(Lym;)Lcom/twitter/android/av/video/VideoContainerHost;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->f:Lcom/twitter/android/av/video/VideoContainerHost;

    return-object v0
.end method

.method static synthetic m(Lym;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic n(Lym;)Lcom/twitter/library/view/QuoteView;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->j:Lcom/twitter/library/view/QuoteView;

    return-object v0
.end method

.method static synthetic o(Lym;)Landroid/view/View;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lym;->p:Landroid/view/View;

    return-object v0
.end method
