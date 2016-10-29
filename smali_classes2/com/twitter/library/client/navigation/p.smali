.class public Lcom/twitter/library/client/navigation/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/internal/android/widget/e;
.implements Lcyd;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/navigation/l;

.field private final b:Lcom/twitter/library/client/ax;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/navigation/l;Lcom/twitter/library/client/ax;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitter/library/client/navigation/p;->a:Lcom/twitter/library/client/navigation/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    .line 303
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    invoke-virtual {v0}, Lcom/twitter/library/client/ax;->c()I

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Z)Lcyd;
    .locals 0

    .prologue
    .line 341
    return-object p0
.end method

.method public f(Z)Lcyd;
    .locals 0

    .prologue
    .line 308
    return-object p0
.end method

.method public g(I)Lcyd;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 352
    return-object p0
.end method

.method public m()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBadgeMode(I)V
    .locals 2

    .prologue
    .line 375
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    iget-boolean v1, v1, Lcom/twitter/library/client/ax;->h:Z

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    iput-boolean v0, v1, Lcom/twitter/library/client/ax;->h:Z

    .line 378
    iget-object v0, p0, Lcom/twitter/library/client/navigation/p;->a:Lcom/twitter/library/client/navigation/l;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/l;->a(Lcom/twitter/library/client/navigation/l;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 380
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBadgeNumber(I)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    iget v0, v0, Lcom/twitter/library/client/ax;->i:I

    if-eq v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/twitter/library/client/navigation/p;->b:Lcom/twitter/library/client/ax;

    iput p1, v0, Lcom/twitter/library/client/ax;->i:I

    .line 386
    iget-object v0, p0, Lcom/twitter/library/client/navigation/p;->a:Lcom/twitter/library/client/navigation/l;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/l;->a(Lcom/twitter/library/client/navigation/l;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 388
    :cond_0
    return-void
.end method
