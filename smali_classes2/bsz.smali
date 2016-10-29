.class public Lbsz;
.super Lbtb;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcom/twitter/android/timeline/cp;)V
    .locals 9

    .prologue
    .line 27
    const-class v0, Lbsz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lbtb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;JILcom/twitter/android/timeline/cp;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected e()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "home"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lbsz;->x()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
