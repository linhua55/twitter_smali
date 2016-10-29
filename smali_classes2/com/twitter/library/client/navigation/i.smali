.class public Lcom/twitter/library/client/navigation/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyx;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/app/common/account/d;

.field private final c:Lcyy;

.field private final d:Lcyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/app/common/account/d;Lcyy;Lcyn;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/library/client/navigation/i;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/twitter/library/client/navigation/i;->b:Lcom/twitter/app/common/account/d;

    .line 33
    iput-object p3, p0, Lcom/twitter/library/client/navigation/i;->c:Lcyy;

    .line 34
    iput-object p4, p0, Lcom/twitter/library/client/navigation/i;->d:Lcyn;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/client/navigation/i;->c:Lcyy;

    invoke-interface {v0}, Lcyy;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcyz;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/navigation/i;->c:Lcyy;

    invoke-interface {v0, p1}, Lcyy;->a(Lcyz;)V

    .line 94
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 45
    new-instance v3, Lcmp;

    invoke-direct {v3}, Lcmp;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/twitter/library/client/navigation/i;->d:Lcyn;

    invoke-virtual {v1}, Lcyn;->b()Landroid/support/v7/util/SortedList;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/support/v7/util/SortedList;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    .line 51
    :goto_0
    if-ge v2, v5, :cond_2

    .line 52
    invoke-virtual {v4, v2}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcym;

    .line 53
    invoke-virtual {v0}, Lcym;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcym;->c()I

    move-result v6

    if-eq v1, v6, :cond_0

    .line 56
    new-instance v1, Lcys;

    invoke-direct {v1}, Lcys;-><init>()V

    invoke-virtual {v3, v1}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcym;->c()I

    move-result v1

    .line 60
    new-instance v6, Lcyt;

    invoke-direct {v6, v0}, Lcyt;-><init>(Lcym;)V

    invoke-virtual {v3, v6}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    :cond_1
    move v0, v1

    .line 51
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/client/navigation/i;->c:Lcyy;

    invoke-virtual {v3}, Lcmp;->a()Lcmo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcyy;->a(Lcmo;)V

    .line 65
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p0, Lcom/twitter/library/client/navigation/i;->b:Lcom/twitter/app/common/account/d;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/twitter/library/util/b;->a(Ljava/util/List;Lcom/twitter/library/client/bk;)Ljava/util/List;

    move-result-object v1

    .line 73
    new-instance v2, Lcmp;

    invoke-direct {v2}, Lcmp;-><init>()V

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 75
    new-instance v4, Lcyp;

    invoke-direct {v4, v0}, Lcyp;-><init>(Lcom/twitter/model/account/UserAccount;)V

    invoke-virtual {v2, v4}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcys;

    invoke-direct {v0}, Lcys;-><init>()V

    invoke-virtual {v2, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 83
    :cond_1
    new-instance v0, Lcyt;

    new-instance v1, Lcym;

    iget-object v3, p0, Lcom/twitter/library/client/navigation/i;->a:Landroid/content/Context;

    sget v4, Lbjw;->new_account:I

    invoke-direct {v1, v3, v4, v5, v5}, Lcym;-><init>(Landroid/content/Context;III)V

    sget v3, Lbkb;->accounts_dialog_new_account:I

    .line 84
    invoke-virtual {v1, v3}, Lcym;->a(I)Lcym;

    move-result-object v1

    invoke-direct {v0, v1}, Lcyt;-><init>(Lcym;)V

    .line 83
    invoke-virtual {v2, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 85
    new-instance v0, Lcyt;

    new-instance v1, Lcym;

    iget-object v3, p0, Lcom/twitter/library/client/navigation/i;->a:Landroid/content/Context;

    sget v4, Lbjw;->add_account:I

    invoke-direct {v1, v3, v4, v5, v5}, Lcym;-><init>(Landroid/content/Context;III)V

    sget v3, Lbkb;->accounts_dialog_add_account:I

    .line 86
    invoke-virtual {v1, v3}, Lcym;->a(I)Lcym;

    move-result-object v1

    invoke-direct {v0, v1}, Lcyt;-><init>(Lcym;)V

    .line 85
    invoke-virtual {v2, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 88
    iget-object v0, p0, Lcom/twitter/library/client/navigation/i;->c:Lcyy;

    invoke-virtual {v2}, Lcmp;->a()Lcmo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcyy;->a(Lcmo;)V

    .line 89
    return-void
.end method
