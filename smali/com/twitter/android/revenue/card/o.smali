.class public Lcom/twitter/android/revenue/card/o;
.super Lcom/twitter/android/card/ab;
.source "Twttr"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/revenue/card/i;

.field private b:Lcom/twitter/android/revenue/card/bb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/revenue/card/i;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 37
    iput-object p5, p0, Lcom/twitter/android/revenue/card/o;->a:Lcom/twitter/android/revenue/card/i;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/revenue/card/i;)V
    .locals 6

    .prologue
    .line 30
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/o;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/revenue/card/i;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/bb;->a()V

    .line 60
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->a:Lcom/twitter/android/revenue/card/i;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/o;->w:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, p0, v1}, Lcom/twitter/android/revenue/card/i;->b(Lcom/twitter/android/revenue/card/o;Lcom/twitter/library/card/CardContext;)Lcom/twitter/android/revenue/card/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    .line 51
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/o;->l()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/o;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/revenue/card/bb;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/card/bb;->a(Lcom/twitter/library/card/av;)V

    .line 54
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/o;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/bb;->b()V

    .line 65
    return-void
.end method

.method public d()Lcom/twitter/library/card/CardContext;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->w:Lcom/twitter/library/card/CardContext;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->b:Lcom/twitter/android/revenue/card/bb;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/bb;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->q:Landroid/content/Context;

    return-object v0
.end method

.method public h()Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->r:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method public i()Lcom/twitter/android/card/d;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/revenue/card/o;->s:Lcom/twitter/android/card/d;

    return-object v0
.end method
