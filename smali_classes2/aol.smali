.class public Laol;
.super Lanz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanz",
        "<",
        "Lckw;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laom;


# direct methods
.method public constructor <init>(Laom;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 28
    iput-object p1, p0, Laol;->a:Laom;

    .line 29
    return-void
.end method

.method private static a(Lcle;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 78
    iget v1, p0, Lcle;->d:I

    .line 79
    sparse-switch v1, :sswitch_data_0

    .line 93
    sget-object v0, Lckl;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    new-instance v2, Lbiv;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scribe component requested for unsupported eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    .line 94
    invoke-static {v2}, Lbix;->a(Lbiv;)V

    .line 97
    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    .line 81
    :sswitch_0
    const-string/jumbo v0, "media_tag"

    goto :goto_1

    .line 84
    :sswitch_1
    const-string/jumbo v0, "mention"

    goto :goto_1

    .line 87
    :sswitch_2
    const-string/jumbo v0, "quote"

    goto :goto_1

    .line 90
    :sswitch_3
    const-string/jumbo v0, "reply"

    goto :goto_1

    .line 96
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laol;->a:Laom;

    invoke-virtual {v0, p2}, Laom;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laol;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laol;->a(Lckw;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lckw;I)Lanp;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    .line 55
    new-instance v1, Lanr;

    iget v2, v0, Lcle;->d:I

    .line 56
    invoke-virtual {v0}, Lcle;->a()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    .line 58
    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 70
    invoke-virtual {v1}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    :goto_0
    return-object v0

    .line 63
    :sswitch_0
    invoke-virtual {p1}, Lckw;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Laol;->a(Lckn;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->e:Z

    .line 67
    :cond_0
    invoke-virtual {v1, v0}, Lanr;->a(Lcom/twitter/model/core/Tweet;)Lanr;

    move-result-object v0

    invoke-virtual {v0}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laol;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lckw;I)V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 40
    invoke-virtual {p2}, Lckw;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v2, p0, Laol;->a:Laom;

    iget-object v1, p2, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    invoke-static {v1}, Laol;->a(Lcle;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0, p2}, Laol;->a(Lckn;)Z

    move-result v3

    .line 42
    invoke-virtual {v2, p1, v0, v1, v3}, Laom;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Z)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tweet object was null when binding a tweet activity row"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laol;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method
