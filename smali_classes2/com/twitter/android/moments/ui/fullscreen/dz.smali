.class Lcom/twitter/android/moments/ui/fullscreen/dz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/dt;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a0576

    .line 80
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ee;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/ee;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 79
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a0579

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ea;

    invoke-direct {v2, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/ea;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/core/Tweet;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 22
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a056a

    .line 123
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/eh;

    invoke-direct {v2, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/eh;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 122
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;
    .locals 5

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a0554

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/twitter/model/moments/a;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ec;

    invoke-direct {v2, p3, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/ec;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 51
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/dt;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a056f

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ef;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/ef;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 93
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a00af

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/eb;

    invoke-direct {v2, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/eb;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/core/Tweet;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 36
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/dt;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a080f

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/eg;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/eg;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 107
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/android/dialog/j;

    const v1, 0x7f0a056b

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ed;

    invoke-direct {v2, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/ed;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/core/Tweet;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/dialog/j;-><init>(Ljava/lang/String;Lcom/twitter/android/dialog/k;)V

    .line 65
    return-object v0
.end method
