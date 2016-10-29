.class public Lcom/twitter/android/moments/data/ag;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/res/Resources;Lcom/twitter/android/moments/viewmodels/MomentModule;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-boolean v0, v0, Lcom/twitter/model/moments/ad;->e:Z

    .line 17
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {p0, v0, v1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/twitter/model/moments/ad;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-boolean v0, p1, Lcom/twitter/model/moments/ad;->e:Z

    iget-object v1, p1, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    const v0, 0x7f0a0568

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
