.class public Lcom/twitter/library/client/navigation/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyu;
.implements Lcyz;


# instance fields
.field private final a:Lcyx;

.field private final b:Lcyv;

.field private c:Lcyz;

.field private d:Z


# direct methods
.method constructor <init>(Lcyv;Lcyx;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    .line 37
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    invoke-interface {v0, p0}, Lcyx;->a(Lcyz;)V

    .line 39
    iput-object p1, p0, Lcom/twitter/library/client/navigation/k;->b:Lcyv;

    .line 40
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->b:Lcyv;

    invoke-interface {v0, p0}, Lcyv;->a(Lcyz;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/app/common/account/d;Lcyy;Lcyw;Lcyn;)Lcom/twitter/library/client/navigation/k;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/library/client/navigation/d;

    invoke-direct {v0, p3}, Lcom/twitter/library/client/navigation/d;-><init>(Lcyw;)V

    .line 28
    new-instance v1, Lcom/twitter/library/client/navigation/i;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/twitter/library/client/navigation/i;-><init>(Landroid/content/Context;Lcom/twitter/app/common/account/d;Lcyy;Lcyn;)V

    .line 30
    new-instance v2, Lcom/twitter/library/client/navigation/k;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/client/navigation/k;-><init>(Lcyv;Lcyx;)V

    return-object v2
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->b:Lcyv;

    invoke-interface {v0}, Lcyv;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/account/UserAccount;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    invoke-interface {v0, p1}, Lcyz;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 72
    :cond_0
    return-void
.end method

.method public a(Lcym;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    invoke-interface {v0, p1}, Lcyz;->a(Lcym;)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Lcyz;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    .line 58
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    invoke-interface {v0}, Lcyx;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/twitter/library/client/navigation/k;->d:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    invoke-interface {v0}, Lcyx;->c()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/client/navigation/k;->d:Z

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    invoke-interface {v0}, Lcyz;->c()Z

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/client/navigation/k;->d:Z

    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    invoke-interface {v0}, Lcyx;->b()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/client/navigation/k;->d:Z

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->c:Lcyz;

    invoke-interface {v0}, Lcyz;->d()V

    .line 96
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/library/client/navigation/k;->a:Lcyx;

    invoke-interface {v0}, Lcyx;->b()V

    .line 101
    return-void
.end method
