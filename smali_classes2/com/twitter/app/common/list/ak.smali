.class Lcom/twitter/app/common/list/ak;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/refresh/widget/f;


# instance fields
.field final synthetic a:Lcom/twitter/app/common/list/aa;


# direct methods
.method private constructor <init>(Lcom/twitter/app/common/list/aa;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/list/aa;Lcom/twitter/app/common/list/ab;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/ak;-><init>(Lcom/twitter/app/common/list/aa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->b(I)I

    .line 761
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 770
    if-eqz p1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->b(Lcom/twitter/app/common/list/aa;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/ag;

    .line 772
    invoke-interface {v0}, Lcom/twitter/app/common/list/ag;->N()V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    .line 775
    invoke-static {v1}, Lcom/twitter/app/common/list/aa;->c(Lcom/twitter/app/common/list/aa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a06d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 777
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/twitter/app/common/list/ak;->a:Lcom/twitter/app/common/list/aa;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->b(I)I

    .line 766
    return-void
.end method
