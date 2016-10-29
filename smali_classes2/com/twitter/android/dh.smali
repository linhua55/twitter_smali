.class public Lcom/twitter/android/dh;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcgf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)J
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "-"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    aget-object p1, v0, v1

    .line 83
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcgf;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/dh;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Lxs;

    invoke-direct {v1, v0}, Lxs;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    return-object v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lcgf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/dh;->a(Landroid/content/Context;Lcgf;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcgf;)V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p3}, Lcgf;->a()Lcom/twitter/library/database/dm/d;

    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v2, Lxq;

    invoke-direct {v2}, Lxq;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxs;

    invoke-virtual {v2, v0}, Lxq;->a(Lxs;)Lxq;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lxq;->a(Lcom/twitter/library/database/dm/d;)Lxq;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/twitter/android/dh;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lxq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo;

    .line 48
    invoke-virtual {v0}, Lxo;->a()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lcgf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/dh;->a(Landroid/view/View;Landroid/content/Context;Lcgf;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/twitter/android/dh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 54
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 63
    :goto_0
    return-wide v0

    .line 58
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    move-wide v0, v2

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/dh;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
