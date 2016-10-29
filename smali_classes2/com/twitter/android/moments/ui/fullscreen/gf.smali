.class public Lcom/twitter/android/moments/ui/fullscreen/gf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fr;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/twitter/library/widget/renderablecontent/e;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/twitter/library/widget/renderablecontent/e;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->a:Landroid/view/ViewGroup;

    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/gf;->a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/moments/ui/fullscreen/gf;-><init>(Landroid/view/ViewGroup;Lcom/twitter/library/widget/renderablecontent/e;)V

    .line 22
    return-void
.end method

.method static a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 49
    new-instance v0, Lcjm;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->h:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    move-object v3, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 50
    invoke-virtual {v0}, Lcjm;->a()Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 49
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v1}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gf;->b:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bi_()V

    .line 44
    :cond_0
    return-void
.end method
