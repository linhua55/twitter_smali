.class public Lcom/twitter/android/smartfollow/interestsearch/g;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# direct methods
.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lsj;)Lcom/twitter/android/interestpicker/ap;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/interestpicker/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/interestpicker/ap;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lsj;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lsj;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lsj;

    const-string/jumbo v1, "welcome_flow"

    invoke-direct {v0, p0, p1, v1}, Lsj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    return-object v0
.end method
